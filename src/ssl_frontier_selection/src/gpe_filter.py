#!/usr/bin/env python3
import sys
import rospy
import ros_numpy
import numpy as np
import tf2_ros
import tf2_geometry_msgs
import pcl
import math

from geometry_msgs.msg import Point, PointStamped, Vector3, Vector3Stamped
from sensor_msgs.msg import PointCloud2

class gpe_filter:

    def __init__(self, param_dict):
        
        # transfer params to class
        self.input_topic = param_dict.get("input_pc")
        self.output_topic = param_dict.get("output_pc")
        self.sensor_range = param_dict.get("sensor_range")

        # frames for tf2.
        self.world = param_dict.get("world_frame")
        self.base = param_dict.get("base_frame")
        self.gpe = param_dict.get("gpe_frame")

        self.tf_buffer = tf2_ros.Buffer(rospy.Duration(10.0)) 

        # subscribe to incomming full PC
        self.pc_sub = rospy.Subscriber(self.input_topic, PointCloud2, self.gpef_callback, queue_size=5)

        self.epsilon = 1e-6

    def gpef_callback(self, full_pc):
        # convert the gpe tf into the same frame as the pc
        gpe_tf = self.tf_buffer.lookup_transform(full_pc.header.frame_id, self.gpe, rospy.Duration(0))

        # create a gpe plane in the pc frame
        gpe_point = PointStamped(point=Point(x=0, y=0, z=-0.55))
        gpe_normal = Vector3Stamped(vector=Vector3(x=0, y=0, z=1)) # normal to xy plane

        gpe_point = tf2_geometry_msgs.do_transform_point(gpe_point, gpe_tf)
        gpe_normal = tf2_geometry_msgs.do_transform_vector3(gpe_normal, gpe_tf)

        """
        Check every point below the gpe against two criteria to determine if the point is valid
        
        Criteria 1: The line from the Point to the sensor origin does not intersect the gpe plane
        
        AND 

        Criteria 2: The point is within the sensor range
        """

        pc = ros_numpy.numpify(full_pc)
        all_points=np.zeros((pc.shape[0],3))
        all_points[:,0]=pc['x']
        all_points[:,1]=pc['y']
        all_points[:,2]=pc['z']
        below_gpe = all_points[all_points[:,2]<(gpe_point.point.z - 0.2)]
        above_gpe = all_points[all_points[:,2]>(gpe_point.point.z - 0.2)]
        
        below_gpe_pass = []

        for point in below_gpe:
            # Test Criteria 1
            u = sub_v3v3(point, [0, 0, 0])
            dot = dot_v3v3([gpe_normal.vector.x, gpe_normal.vector.y, gpe_normal.vector.z], u)

            intersect = not (abs(dot) > self.epsilon)

            if intersect:
                print("hit")

            # Test Criteria 2

            test = euclidean([0,0,0],point)

            range = euclidean([0,0,0],point) < self.sensor_range

            if range:
                # add to pass
                below_gpe_pass.append(point)
        
        # convert to numpy for pcl library
        np_gpe_pass = np.array(below_gpe_pass)

        # add the filtered values back with the above gpe values


        p = pcl.PointCloud(np.array(all_points, dtype=np.float32))
        print("pcl")

def sub_v3v3(v0, v1):
    return (
        v0[0] - v1[0],
        v0[1] - v1[1],
        v0[2] - v1[2],
    )

def dot_v3v3(v0, v1):
    return (
        (v0[0] * v1[0]) +
        (v0[1] * v1[1]) +
        (v0[2] * v1[2])
    )

def euclidean(v0, v1):
    return np.linalg.norm(v0-v1)

def paramDict():
    param_dict = {}
    
    # add all param getting/setting here
    param_dict["input_pc"] = rospy.get_param("~input_pc", "/pc_full") # topic for array of centroids from octomap
    param_dict["output_pc"] = rospy.get_param("~output_pc", "/pc_full_gpef") # topic for array of sound directions from odas
    param_dict["sensor_range"] = rospy.get_param("~sensor_range", "3.0") # topic the graded frontier array will be published under
    
    # reference frames for tf2 conversion
    param_dict["world_frame"] = rospy.get_param("~world_frame", "odom")
    param_dict["base_frame"] = rospy.get_param("~base_frame", "body")
    param_dict["gpe_frame"] = rospy.get_param("~gpe_frame", "gpe")

    return param_dict

if __name__ == '__main__':
    
    rospy.init_node('gpe_filter')
    filter = gpe_filter(paramDict())

    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("GPE filter shutting down")