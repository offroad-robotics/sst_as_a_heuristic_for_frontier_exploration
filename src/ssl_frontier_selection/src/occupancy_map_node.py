#!/usr/bin/env python3
import sys
import rospy
import ros_numpy
import numpy as np
import tf2_ros
import queue

from nav_msgs.msg import OccupancyGrid
from geometry_msgs.msg import Vector3
from std_msgs.msg import Header, ColorRGBA
from std_srvs.srv import Empty
from ssl_frontier_selection.srv import RemoveFrontier, StampMap, PruneFrontiers, PruneFrontiersResponse, CheckCollision, CheckCollisionResponse
from visualization_msgs.msg import MarkerArray, Marker
from sklearn.cluster import DBSCAN, MeanShift, KMeans
from sklearn.neighbors._nearest_centroid import NearestCentroid
from skimage.draw import line
from math import ceil

class occupancy_map:

    def __init__(self, param_dict):
        
        # transfer params to class
        self.occupancy_in = param_dict.get("occupancy_in")
        self.occupancy_map_pub = param_dict.get("occupancy_map")
        self.frontier_marker_pub = param_dict.get("frontier_marker_pub")
        self.avg_window = int(param_dict.get("avg_window"))
        self.border_px = int(param_dict.get("border_px")) + 1
        self.prune_radius = int(param_dict.get("prune_radius"))

        # frames for tf2.
        self.world = param_dict.get("world_frame")
        self.base = param_dict.get("base_frame")

        self.tf2_buffer = tf2_ros.Buffer(rospy.Duration(10.0))
        self.tf2_listener = tf2_ros.TransformListener(self.tf2_buffer) 

        # pubs/subs
        self.occ_sub = rospy.Subscriber(self.occupancy_in, OccupancyGrid, self.frontier_callback, queue_size=1)
        self.map_pub = rospy.Publisher(self.occupancy_map_pub, OccupancyGrid, queue_size=1)
        self.frontier_pub = rospy.Publisher(self.frontier_marker_pub, MarkerArray, queue_size=10)

        # services
        self.check_collision = rospy.Service('check_occ_collision', CheckCollision, self.check_ray_collision)
        self.stamp = rospy.Service('stamp_grid', StampMap, self.stamp_local_grid)
        self.remove_frontier = rospy.Service('remove_frontier', RemoveFrontier, self.remove_frontier)
        self.prune_frontiers = rospy.Service('prune_frontiers', PruneFrontiers, self.prune_frontiers)

        # occupancy grid storage
        self.local_grid_store = queue.Queue(self.avg_window)
        self.local_grid_time = None


        # global map and frontiers
        self.global_occupancy = OccupancyGrid()
        self.global_occupancy.info.origin.position.z = -0.39
        self.global_frontiers = MarkerArray()
        
        self.frontier_count = 0
        self.frontier_type = 1 # cube
        self.frontier_size = Vector3(x=0.1, y=0.1, z=0.1)
        self.frontier_color = ColorRGBA(r=0.87, g=0.32, b=0.88, a=1.0)

        # publish at set rate
        rate = rospy.Rate(1) # 1 Hz

        while not rospy.is_shutdown():
            self.map_pub.publish(self.global_occupancy)
            self.frontier_pub.publish(self.global_frontiers)
            rate.sleep()

    def identify_frontiers(self, n_grid, stitch_mask= None):
        ob_grid = ros_numpy.numpify(n_grid)

        # this is done so we can determine obstacle penetration using summation
        ob_grid[ob_grid!=100] = 0
        mask_grid = np.ones(ob_grid.shape)
        pub_grid = np.zeros(ob_grid.shape) 
        
        # fill in mask based on border thickness, leaving a single pixel mask around edge
        mask_grid[1:-1, 1:-1] = 0
        mask_grid[self.border_px:-self.border_px, self.border_px:-self.border_px] = 1      

        # mask everything but the border
        border_masked = np.ma.array(ob_grid, mask=mask_grid)

        # mask the overlap from the global map
        overlap_masked = np.ma.array(border_masked, mask=stitch_mask)


        # get indices of all unoccupied border cells
        free_index = np.where(overlap_masked==0)
        free_index = np.dstack((free_index[0], free_index[1]))[0]

        if free_index.size == 0:
            # no frontiers on current stamp
            return

        n_clusters = ceil(free_index.shape[0] / self.cluster_ratio)

        # perform mean shift using indices
        kmc = KMeans(n_clusters=n_clusters, n_init='auto').fit(free_index)
            
        # find centroids of all clusters
        cluster_centroids = NearestCentroid().fit(free_index, kmc.labels_)
        grid_center = [int(border_masked.shape[0]/2), int(border_masked.shape[1]/2)] 

        # test each centroid for object penetration
        for frontier_candidate in cluster_centroids.centroids_:
            # set position to nearest whole value (grid system)
            # TODO make sure its always inside the indices of the grid (theoretically it should be)
            
            # check collision
            ray_trace = line(grid_center[0], grid_center[1], int(frontier_candidate[0]), int(frontier_candidate[1]))
            
            # if no collision add to empty map as 100
            ray_sum = ob_grid[ray_trace[0], ray_trace[1]].sum()
            if(ray_sum <= 0):
                # new frontier found, add to MarkerArray
                x_px = int(frontier_candidate[0])
                y_px = int(frontier_candidate[1])

                self.add_frontier_marker(x_px, y_px, n_grid.info.origin.position.x, n_grid.info.origin.position.y, n_grid.info.resolution)
                pub_grid[x_px, y_px] = 100.0
            
            # publish grid
            self.publish_grid(pub_grid, float(n_grid.info.resolution), n_grid.header.stamp)
    
    def add_frontier_marker(self, x_px, y_px, x_off, y_off, resolution):
        """
        Add a frontier marker to the global_frontiers MarkerArray.

        Given the x/y grid positions, the grids origin offsets, and the grids resolution.
        Also gives each marker a unique ID so it can be removed later.
        """
        x_world = (y_px * resolution) + x_off
        y_world = (x_px * resolution) + y_off
        z_world = 0.12 # TODO tbd on height, could be set to robot height

        f_marker = Marker()
        f_marker.header = Header(stamp=rospy.Time.now(), frame_id = self.world)
        f_marker.action = Marker.ADD
        f_marker.lifetime = rospy.Duration(1.0)
        f_marker.ns = 'global_occupancy_map'
        f_marker.id = self.frontier_count
        f_marker.type = self.frontier_type
        f_marker.scale = self.frontier_size
        f_marker.color = self.frontier_color
        f_marker.pose.position.x = x_world
        f_marker.pose.position.y = y_world
        f_marker.pose.position.z = z_world
        f_marker.pose.orientation.w = 1.0
        f_marker.frame_locked = True

        # add to markerArray
        self.global_frontiers.markers.append(f_marker)

        self.frontier_count = self.frontier_count + 1

    def remove_frontier(self, req):
        """
        ROS wrapper function for del_frontier_marker
        """
        return self.del_frontier_marker(req.id)

    def del_frontier_marker(self, id):
        # Il let you figure this one out chief
        for i, marker in enumerate(self.global_frontiers.markers):
            if marker.id == id:
                self.global_frontiers.markers[i].action = Marker.DELETE
                self.global_frontiers.markers.pop(i)
                return True

        return False
    
    def prune_frontiers(self, prune_srv):
        """
        Remove frontiers in the global_frontiers marker array. Removes frontiers that are surrounded by know grid squares (not -1). 
        Converts the voxel position to a px position, removes voxel if surrounded by X rings of known grid squares.
        """

        n_neighbors = self.prune_radius # number of neigboring rings to consider around the point
        # TODO this value should be justified. Each grid square is approx. 3cm so that is a 90cm diameter (45cm radius)

        prune_ids = []
        global_np_copy = ros_numpy.numpify(self.global_occupancy)
        
        for frontier in self.global_frontiers.markers:
            # translate the coordinates to pixels 
            x_px = int(abs(self.global_occupancy.info.origin.position.x - frontier.pose.position.x)/self.global_occupancy.info.resolution)
            y_px = int(abs(self.global_occupancy.info.origin.position.y - frontier.pose.position.y)/self.global_occupancy.info.resolution)

            # get the pixels around this location (slice columns/rows)
            x_high = (x_px + n_neighbors) if (x_px + n_neighbors) < self.global_occupancy.info.width else None
            x_low = (x_px - n_neighbors) if (x_px - n_neighbors) > 0 else None
            y_high = (y_px + n_neighbors) if (y_px + n_neighbors) < self.global_occupancy.info.height else None
            y_low = (y_px - n_neighbors) if (y_px - n_neighbors) > 0 else None

            if not x_high or not x_low or not y_high or not y_low:
                continue # if the locations are outside the bounds of the global_occupancy array then they are automatically frontiers
            
            neighbors_grid = global_np_copy[y_low:y_high, x_low:x_high]

            if -1 in neighbors_grid.data:
                continue # the neighboring pixels contain an element in the map that is unknown, this voxel is a frontier

            else:
                prune_ids.append(frontier.id) # non frontier found, add to prune list

        for id in prune_ids: # remove frontiers
            self.del_frontier_marker(id)

        return PruneFrontiersResponse(pruned= prune_ids)
            

    def check_ray_collision(self, req):
        """
        Given 2 poses, can a raytrace be completed through the current occupancy grid without hitting an obstacle
        """

        # check that the frame id's match between the two poses and the occupancy grid
        if req.start.header.frame_id != req.end.header.frame_id != self.global_occupancy.header.frame_id:
            rospy.logerr("OCCUPANCY MAP: Frame ID's from request do not match global grid.")

        # convert current occupancy map to np (mask all non-obstacles)
        global_np_copy = np.copy(ros_numpy.numpify(self.global_occupancy))
        global_np_copy[global_np_copy!=100] = 0

        # convert the poses to px coordinates
        # translate the coordinates to pixels 
        start_x_px = int(abs(self.global_occupancy.info.origin.position.x - req.start.pose.position.x)/self.global_occupancy.info.resolution)
        start_y_px = int(abs(self.global_occupancy.info.origin.position.y - req.start.pose.position.y)/self.global_occupancy.info.resolution)

        end_x_px = int(abs(self.global_occupancy.info.origin.position.x - req.end.pose.position.x)/self.global_occupancy.info.resolution)
        end_y_px = int(abs(self.global_occupancy.info.origin.position.y - req.end.pose.position.y)/self.global_occupancy.info.resolution)

        # perform raytrace
        # check collision
        ray_trace = line(start_y_px, start_x_px, end_y_px, end_x_px)
        
        ray_sum = global_np_copy[ray_trace[0], ray_trace[1]].sum()
        
        if(ray_sum <= 0):
            # no collision, the approach is possible
            return CheckCollisionResponse(success= True)

        else:
            # collision, approach unlikely to work
            return CheckCollisionResponse(success= False)

    def overlap(self, n_grid, g_grid, stamp_grid, global_grid, old_np):
        """
        Solves for the overlap (intersection) of the global occupancy grid and the current local grid.
        Returns a mask so frontier selection does not consider grid squares that have already been seen. 
        """

        old = np.copy(old_np) # required because otherwise old_np suffers a mutation

        mask = np.zeros((stamp_grid.info.height, stamp_grid.info.width))
        resolution = stamp_grid.info.resolution

        rect1 = (g_grid[0], g_grid[3])
        rect2 = (n_grid[0], n_grid[3])

        x_overlap = max(0, min(rect1[1][0], rect2[1][0]) - max(rect1[0][0], rect2[0][0]))
        y_overlap = max(0, min(rect1[1][1], rect2[1][1]) - max(rect1[0][1], rect2[0][1])) 
        
        if x_overlap == 0 or y_overlap == 0:
            return mask
            
        else:
            
            x0_overlap = max(rect1[0][0], rect2[0][0])
            y0_overlap = max(rect1[0][1], rect2[0][1])
            x1_overlap = min(rect1[1][0], rect2[1][0])
            y1_overlap = min(rect1[1][1], rect2[1][1])

            # pixel offsets of overlap on new occ map
            x0_n_px = int(abs(x0_overlap - rect2[0][0]) / resolution)
            y0_n_px = int(abs(y0_overlap - rect2[0][1]) / resolution)

            # check that the cut shape is no bigger than the paste shape
            x0_g_px2 = int(abs(x0_overlap - rect1[0][0]) / resolution)
            y0_g_px2 = int(abs(y0_overlap - rect1[0][1]) / resolution)
            x1_g_px2 = int(abs(x1_overlap - rect1[0][0]) / resolution)
            y1_g_px2 = int(abs(y1_overlap - rect1[0][1]) / resolution)

            x_end = abs(x0_g_px2 - x1_g_px2)
            y_end = abs(y0_g_px2 - y1_g_px2)
             

            # slice intersection values from global occ map
            intersection = old[y0_g_px2:y1_g_px2, x0_g_px2:x1_g_px2]

            # mask all values higher than -1 to 1
            intersection[intersection>-1] = 1

            # insert slice at correct position in mask grid
            mask[y0_n_px:y0_n_px + y_end, x0_n_px:x0_n_px + x_end] = intersection

            
            # this means unknown grid squares are not included in the mask, they can still be considered as frontiers
            
            return mask



    def stamp_local_grid(self, temp):
        """
        Stamps/Combines the robots current local occupancy grid to a global occupancy grid.
        Secondary feature is frontier selection and publishing.

        Used to continuously build a map as the robot progresses through its environment.

        If you're reading this and are looking to modify it. Have fun. Hopefully I haven't graduated
        by then so we can melt our brains together. Grid math confusing ooga-booga...
        """
        try:
            time = rospy.Time.now()

            # hold until all grids are newer than the request time
            while time > self.local_grid_time:
                continue
            

            # pull all from queue and take median
            queue_grid = list(self.local_grid_store.queue)
            stack_grid = []

            resolution = queue_grid[-1].info.resolution

            for a_grid in queue_grid:
                stack_grid.append(ros_numpy.numpify(a_grid))

            median_np = np.median(np.array(stack_grid), axis=0)

            stamp_grid = OccupancyGrid()
            stamp_grid.header = queue_grid[-1].header
            stamp_grid.info = queue_grid[-1].info
            stamp_grid.data = median_np.flatten().astype(dtype='int8')

            # store the global_occupancy grid before we make adjustments to its metadata
            old_grid = self.global_occupancy
            old_np = ros_numpy.numpify(old_grid)

            # grid stamping breaks if the resolution between the two occupancy grids is different
            if(old_grid.info.resolution != stamp_grid.info.resolution):
                rospy.logfatal("Resolution of stamp_grid does not match global_grid. FATAL")
                return False, "Resolution of stamp_grid does not match global_grid. FATAL"

            # find corner positions of grids
            stamp_corners = get_grid_corners(stamp_grid)
            global_corners = get_grid_corners(self.global_occupancy)

            # create overlap mask grid for frontier search
            overlap_mask = self.overlap(stamp_corners, global_corners, stamp_grid, old_grid, old_np)

            # perform frontier detection
            self.identify_frontiers(stamp_grid, overlap_mask)

            # solve for new height and width (largest x/y difference)
            x_pos = np.concatenate((stamp_corners[:,0], global_corners[:,0]), axis=0)
            y_pos = np.concatenate((stamp_corners[:,1], global_corners[:,1]), axis=0)

            width_m = abs(np.amax(x_pos) - np.amin(x_pos))
            height_m = abs(np.amax(y_pos) - np.amin(y_pos))
            
            width_px = round(width_m/resolution)
            height_px = round(height_m/resolution)
            
            # solve for new x/y offset (m)
            if stamp_grid.info.origin.position.x < self.global_occupancy.info.origin.position.x:
                x_off_px_stamp = 0 # corner pixel location of the new scan in the updated grid (x)
                x_off_px_global = int(abs((self.global_occupancy.info.origin.position.x - stamp_grid.info.origin.position.x)/resolution))
                x_off = stamp_grid.info.origin.position.x # for clarity (but redundant) 
                self.global_occupancy.info.origin.position.x = x_off 

            else:
                # using offset, needs to be converted to pixels
                x_off_px_stamp = int(abs((old_grid.info.origin.position.x - stamp_grid.info.origin.position.x)/resolution))
                x_off_px_global = 0

            if stamp_grid.info.origin.position.y < self.global_occupancy.info.origin.position.y:
                y_off_px_stamp = 0
                y_off_c_px_g = int(abs((self.global_occupancy.info.origin.position.y - stamp_grid.info.origin.position.y)/resolution))
                y_off = stamp_grid.info.origin.position.y
                self.global_occupancy.info.origin.position.y = y_off 
            
            else:
                y_off_px_stamp = int(abs((old_grid.info.origin.position.y - stamp_grid.info.origin.position.y)/resolution))
                y_off_c_px_g = 0

            # fill in new data
            # np movement in x is ros movement in y. height = x, width = y
            updated_occ = np.full((height_px, width_px), fill_value=-1, dtype=float)

            # insert old scan
            updated_occ[y_off_c_px_g:y_off_c_px_g+old_np.shape[0],x_off_px_global:x_off_px_global+old_np.shape[1]] = old_np
            
            # insert new scan 
            #updated_occ[y_off_px_stamp:y_off_px_stamp+median_np.shape[0],x_off_px_stamp:x_off_px_stamp+median_np.shape[1]] = median_np

            # insert highest of scans (changed on 23-05-23)
            updated_occ[y_off_px_stamp:y_off_px_stamp+median_np.shape[0],x_off_px_stamp:x_off_px_stamp+median_np.shape[1]] = np.where(median_np > updated_occ[y_off_px_stamp:y_off_px_stamp+median_np.shape[0], x_off_px_stamp:x_off_px_stamp+median_np.shape[1]], median_np, updated_occ[y_off_px_stamp:y_off_px_stamp+median_np.shape[0], x_off_px_stamp:x_off_px_stamp+median_np.shape[1]])

            time = rospy.Time.now() 

            # update class variable to then be published
            final_grid = OccupancyGrid()
            # header
            final_grid.header.stamp = time
            final_grid.header.frame_id = self.world

            # metadata
            final_grid.info.map_load_time = time
            final_grid.info.resolution = resolution 
            final_grid.info.width = width_px
            final_grid.info.height = height_px

            # center the local grid on the robot
            final_grid.info.origin.position.x = self.global_occupancy.info.origin.position.x
            final_grid.info.origin.position.y = self.global_occupancy.info.origin.position.y
            # TODO lock z-axis to an appropriate height
            final_grid.info.origin.position.z = -0.39 # self.global_occupancy.info.origin.position.z
            final_grid.info.origin.orientation.w = 1.0

            flat_occupancy = updated_occ.flatten().astype(dtype='int8')
            final_grid.data = flat_occupancy

            self.global_occupancy = final_grid
            return True, str("local grid stamped")

        except Exception as e:
            rospy.logerr(str(e))
            return False, str(e)

    def frontier_callback(self, grid):

        # on first add to global map
        if self.global_occupancy.header.frame_id == '':
            self.global_occupancy = grid
            
            # solve for amount of frontier px if all empty
            temp_grid = ros_numpy.numpify(grid)
            frontier_sum = np.zeros(temp_grid.shape)
            frontier_sum[1:-1, 1:-1] = 1
            frontier_sum[self.border_px:-self.border_px, self.border_px:-self.border_px] = 0

            total = frontier_sum.sum()
            self.cluster_ratio = total/32 # pixels per cluster (upped from 8 23/05/22)

            self.identify_frontiers(grid)

        
        # FIFO grid storage
        if self.local_grid_store.full():
            dump = self.local_grid_store.get()
            self.local_grid_time = dump.header.stamp

        self.local_grid_store.put(grid)
        
        return
    
    def publish_grid(self, np_grid, resolution, time):
        """
        Given a numpy array and resolution, publish it as a occupancy grid locked to the location of the base_frame and the orientation of the world_frame
        """

        # transform from base_frame to world_frame
        local_grid_tf = self.tf2_buffer.lookup_transform(self.world, self.base, rospy.Duration(0))

        width, height = np_grid.shape

        pub = OccupancyGrid()
        # header
        pub.header.stamp = time
        pub.header.frame_id = local_grid_tf.header.frame_id

        # metadata
        pub.info.map_load_time = time
        pub.info.resolution = resolution 
        pub.info.width = width
        pub.info.height = height

        # center the local grid on the robot
        pub.info.origin.position.x = local_grid_tf.transform.translation.x - (resolution * width) / 2
        pub.info.origin.position.y = local_grid_tf.transform.translation.y -(resolution * height) / 2
        pub.info.origin.position.z = local_grid_tf.transform.translation.z - 0.35
        pub.info.origin.orientation.w = 1.0


def get_grid_corners(OcGrid: OccupancyGrid):
    """
    Given an occupancy grid, return the positions of the four corners that make up the square (m).

    Corners are labeled A-D, starting in the bottom right corner. ROS Coordinates are x-forward, y-left.

    [D, C],
    [B, A]

    returns: [A, B, C, D] where a letter = [x_*, y_*]
    """

    A = [OcGrid.info.origin.position.x, OcGrid.info.origin.position.y] 
    B = [OcGrid.info.origin.position.x + OcGrid.info.width * OcGrid.info.resolution, OcGrid.info.origin.position.y] 
    C = [OcGrid.info.origin.position.x, OcGrid.info.origin.position.y + OcGrid.info.height * OcGrid.info.resolution] 
    D = [OcGrid.info.origin.position.x + OcGrid.info.width * OcGrid.info.resolution, OcGrid.info.origin.position.y + OcGrid.info.height * OcGrid.info.resolution] 

    return np.array([A, B, C, D])

def paramDict():
    param_dict = {}
    
    # add all param getting/setting here
    param_dict["occupancy_in"] = rospy.get_param("~occupancy_in", "/spot/local_grid/obstacle_grid") # incoming occupancy grid topic name
    param_dict["occupancy_map"] = rospy.get_param("~occupancy_map", "/spot/global_grid/occupancy_map") # out going global occupancy grid topic name
    param_dict["frontier_marker_pub"] = rospy.get_param("~frontier_marker_pub", "/spot/global_grid/frontiers") # out going global frontier topic name
    param_dict["avg_window"] = rospy.get_param("~avg_window", "3") # the number of occupancy grids to average before frontier selection
    param_dict["border_px"] = rospy.get_param("~border_px", "3") # thicc-ness of frontier border to use
    param_dict["prune_radius"] = rospy.get_param("~prune_radius", "15") # grid square radius (in px) used when checking if a frontier should be pruned
    
    # reference frames for tf2 conversion
    param_dict["world_frame"] = rospy.get_param("~world_frame", "odom")
    param_dict["base_frame"] = rospy.get_param("~base_frame", "body")

    return param_dict

if __name__ == '__main__':
    
    rospy.init_node('global_occupancy')
    g_mapping = occupancy_map(paramDict())

    try:
        rospy.spin()
    except KeyboardInterrupt:
        rospy.loginfo("global_occupancy shutting down...")