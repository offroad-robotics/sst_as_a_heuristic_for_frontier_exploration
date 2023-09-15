#!/usr/bin/env python3
import sys
import rospy
import ros_numpy
import numpy as np
import tf2_ros

from nav_msgs.msg import OccupancyGrid
from std_msgs.msg import Header
from sklearn.cluster import DBSCAN, MeanShift, KMeans
from sklearn.neighbors._nearest_centroid import NearestCentroid
from skimage.draw import line

class grid_frontiering:

    def __init__(self, param_dict):
        
        # transfer params to class
        self.occupancy_in = param_dict.get("occupancy_in")
        self.occupancy_out = param_dict.get("occupancy_out")
        self.avg_window = int(param_dict.get("avg_window"))
        self.border_px = int(param_dict.get("border_px"))

        # frames for tf2.
        self.world = param_dict.get("world_frame")
        self.base = param_dict.get("base_frame")

        self.tf2_buffer = tf2_ros.Buffer(rospy.Duration(10.0))
        self.tf2_listener = tf2_ros.TransformListener(self.tf2_buffer) 

        
        self.occ_sub = rospy.Subscriber(self.occupancy_in, OccupancyGrid, self.frontier_callback, queue_size=1)
        self.occ_pub = rospy.Publisher(self.occupancy_out, OccupancyGrid, queue_size=1)


        # occupancy grid storage
        self.grid_store = []

        # db scan parameters
        self.eps_db = .6 #TODO maybe base this off of scale of occupancy grid (so its in m)
        self.min_samples_db = 2

    def frontier_callback(self, grid):
        obstacle_grid = ros_numpy.numpify(grid)

        # assumption is made that all grids are the same size and scale
        self.grid_store.append(obstacle_grid)

        # averaging window
        if len(self.grid_store) > self.avg_window-1:
            pub_grid = np.zeros(self.grid_store[0].shape)
            mask_grid = np.zeros(self.grid_store[0].shape)

            # fill in mask based on border thickness
            mask_grid[self.border_px:-self.border_px, self.border_px:-self.border_px] = 1

            average_grid = np.zeros(self.grid_store[0].shape)

            # mask non obstacle
            for ob_grid in self.grid_store:
                ob_grid[ob_grid==100] = 0 # set all borders and free space to 0
                ob_grid[ob_grid==15] = 0 
                ob_grid[ob_grid==1] = 100 # set all obstacles to 100
                # this is done so we can determine obstacle penetration using summation

                average_grid = average_grid + ob_grid

            # average obstacle grid window
            average_grid = average_grid / self.avg_window

            # mask everything but the border
            border_masked = np.ma.array(average_grid, mask=mask_grid)

            # get indices of all unoccupied border cells
            free_index = np.where(border_masked==0)
            free_index = np.dstack((free_index[0], free_index[1]))[0]

            # perform mean shift using indices
            msc = MeanShift(cluster_all=True, bin_seeding= True).fit(free_index)
            #kmc = KMeans(n_clusters=8).fit(free_index)
            
            # find centroids of all clusters
            cluster_centroids = NearestCentroid().fit(free_index, msc.labels_)
            grid_center = [int(border_masked.shape[0]/2), int(border_masked.shape[1]/2)] 

            # test each centroid for object penetration
            for frontier_candidate in cluster_centroids.centroids_:
                # set position to nearest whole value (grid system)
                # TODO make sure its always inside the indices of the grid
                
                # check collision
                ray_trace = line(grid_center[0], grid_center[1], int(frontier_candidate[0]), int(frontier_candidate[1]))
                # ray_coord = np.dstack((ray_trace[0], ray_trace[1]))[0]
                # if no collision add to empty map as 100
                ray_sum = average_grid[ray_trace[0], ray_trace[1]].sum()
                if(ray_sum <= 0):
                    x_f = int(frontier_candidate[0])
                    y_f = int(frontier_candidate[1])
                    pub_grid[x_f, y_f] = 100.0
            
            # publish grid
            self.publish_grid(pub_grid, float(grid.info.resolution), grid.header.stamp)

            self.grid_store.clear()
    
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

        # data
        flat = np_grid.flatten()
        pub.data = flat.astype(dtype='int8')

        self.occ_pub.publish(pub)


def paramDict():
    param_dict = {}
    
    # add all param getting/setting here
    param_dict["occupancy_in"] = rospy.get_param("~occupancy_in", "/spot/local_grid/obstacle_grid") # incoming occupancy grid topic name
    param_dict["occupancy_out"] = rospy.get_param("~occupancy_out", "/spot/local_grid/frontiers") # out going occupancy grid topic name
    param_dict["avg_window"] = rospy.get_param("~avg_window", "3") # the number of occupancy grids to average before frontier selection
    param_dict["border_px"] = rospy.get_param("~border_px", "3") # thicc-ness of frontier border to use

    #TODO mean shift filtering parameters 
    
    # reference frames for tf2 conversion
    param_dict["world_frame"] = rospy.get_param("~world_frame", "odom")
    param_dict["base_frame"] = rospy.get_param("~base_frame", "body")

    return param_dict

if __name__ == '__main__':
    
    rospy.init_node('grid_frontiering')
    frontiering = grid_frontiering(paramDict())

    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("grid frontiering shutting down")