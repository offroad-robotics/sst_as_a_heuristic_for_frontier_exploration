import sys

import numpy as np
import rospy

from std_msgs.msg import Empty
from tf2_msgs.msg import TFMessage
from geometry_msgs.msg import TransformStamped
from sensor_msgs.msg import Image, CameraInfo
from sensor_msgs.msg import JointState
from geometry_msgs.msg import PoseWithCovariance
from geometry_msgs.msg import TwistWithCovariance
from geometry_msgs.msg import TwistWithCovarianceStamped
from nav_msgs.msg import Odometry, OccupancyGrid

from spot_msgs.msg import AprilTagState
from spot_msgs.msg import Metrics
from spot_msgs.msg import LeaseArray, LeaseResource
from spot_msgs.msg import FootState, FootStateArray
from spot_msgs.msg import EStopState, EStopStateArray
from spot_msgs.msg import WiFiState
from spot_msgs.msg import PowerState
from spot_msgs.msg import BehaviorFault, BehaviorFaultState
from spot_msgs.msg import SystemFault, SystemFaultState
from spot_msgs.msg import BatteryState, BatteryStateArray

from bosdyn.api import image_pb2, local_grid_pb2
from bosdyn.client.math_helpers import SE3Pose, Quat, angle_diff
from bosdyn.client.frame_helpers import get_odom_tform_body, get_vision_tform_body, get_a_tform_b, BODY_FRAME_NAME, VISION_FRAME_NAME, GROUND_PLANE_FRAME_NAME

friendly_joint_names = {}
"""Dictionary for mapping BD joint names to more friendly names"""
friendly_joint_names["fl.hx"] = "front_left_hip_x"
friendly_joint_names["fl.hy"] = "front_left_hip_y"
friendly_joint_names["fl.kn"] = "front_left_knee"
friendly_joint_names["fr.hx"] = "front_right_hip_x"
friendly_joint_names["fr.hy"] = "front_right_hip_y"
friendly_joint_names["fr.kn"] = "front_right_knee"
friendly_joint_names["hl.hx"] = "rear_left_hip_x"
friendly_joint_names["hl.hy"] = "rear_left_hip_y"
friendly_joint_names["hl.kn"] = "rear_left_knee"
friendly_joint_names["hr.hx"] = "rear_right_hip_x"
friendly_joint_names["hr.hy"] = "rear_right_hip_y"
friendly_joint_names["hr.kn"] = "rear_right_knee"

class DefaultCameraInfo(CameraInfo):
    """Blank class extending CameraInfo ROS topic that defaults most parameters"""
    def __init__(self):
        super().__init__()
        self.distortion_model = "plumb_bob"

        self.D.append(0)
        self.D.append(0)
        self.D.append(0)
        self.D.append(0)
        self.D.append(0)

        self.K[1] = 0
        self.K[3] = 0
        self.K[6] = 0
        self.K[7] = 0
        self.K[8] = 1

        self.R[0] = 1
        self.R[1] = 0
        self.R[2] = 0
        self.R[3] = 0
        self.R[4] = 1
        self.R[5] = 0
        self.R[6] = 0
        self.R[7] = 0
        self.R[8] = 1

        self.P[1] = 0
        self.P[3] = 0
        self.P[4] = 0
        self.P[7] = 0
        self.P[8] = 0
        self.P[9] = 0
        self.P[10] = 1
        self.P[11] = 0


def populateTransformStamped(time, parent_frame, child_frame, transform):
    """Populates a TransformStamped message

    Args:
        time: The time of the transform
        parent_frame: The parent frame of the transform
        child_frame: The child_frame_id of the transform
        transform: A transform to copy into a StampedTransform object. Should have position (x,y,z) and rotation (x,
        y,z,w) members
    Returns:
        TransformStamped message
    """
    new_tf = TransformStamped()
    new_tf.header.stamp = time
    new_tf.header.frame_id = parent_frame
    new_tf.child_frame_id = child_frame
    new_tf.transform.translation.x = transform.position.x
    new_tf.transform.translation.y = transform.position.y
    new_tf.transform.translation.z = transform.position.z
    new_tf.transform.rotation.x = transform.rotation.x
    new_tf.transform.rotation.y = transform.rotation.y
    new_tf.transform.rotation.z = transform.rotation.z
    new_tf.transform.rotation.w = transform.rotation.w

    return new_tf

def getImageMsg(data, spot_wrapper):
    """Takes the imag and  camera data and populates the necessary ROS messages

    Args:
        data: Image proto
        spot_wrapper: A SpotWrapper object
    Returns:
        (tuple):
            * Image: message of the image captured
            * CameraInfo: message to define the state and config of the camera that took the image
    """
    image_msg = Image()
    local_time = spot_wrapper.robotToLocalTime(data.shot.acquisition_time)
    image_msg.header.stamp = rospy.Time(local_time.seconds, local_time.nanos)
    image_msg.header.frame_id = data.shot.frame_name_image_sensor
    image_msg.height = data.shot.image.rows
    image_msg.width = data.shot.image.cols

    # Color/greyscale formats.
    # JPEG format
    if data.shot.image.format == image_pb2.Image.FORMAT_JPEG:
        image_msg.encoding = "rgb8"
        image_msg.is_bigendian = True
        image_msg.step = 3 * data.shot.image.cols
        image_msg.data = data.shot.image.data

    # Uncompressed.  Requires pixel_format.
    if data.shot.image.format == image_pb2.Image.FORMAT_RAW:
        # One byte per pixel.
        if data.shot.image.pixel_format == image_pb2.Image.PIXEL_FORMAT_GREYSCALE_U8:
            image_msg.encoding = "mono8"
            image_msg.is_bigendian = True
            image_msg.step = data.shot.image.cols
            image_msg.data = data.shot.image.data

        # Three bytes per pixel.
        if data.shot.image.pixel_format == image_pb2.Image.PIXEL_FORMAT_RGB_U8:
            image_msg.encoding = "rgb8"
            image_msg.is_bigendian = True
            image_msg.step = 3 * data.shot.image.cols
            image_msg.data = data.shot.image.data

        # Four bytes per pixel.
        if data.shot.image.pixel_format == image_pb2.Image.PIXEL_FORMAT_RGBA_U8:
            image_msg.encoding = "rgba8"
            image_msg.is_bigendian = True
            image_msg.step = 4 * data.shot.image.cols
            image_msg.data = data.shot.image.data

        # Little-endian uint16 z-distance from camera (mm).
        if data.shot.image.pixel_format == image_pb2.Image.PIXEL_FORMAT_DEPTH_U16:
            image_msg.encoding = "16UC1"
            image_msg.is_bigendian = False
            image_msg.step = 2 * data.shot.image.cols
            image_msg.data = data.shot.image.data

    camera_info_msg = DefaultCameraInfo()
    local_time = spot_wrapper.robotToLocalTime(data.shot.acquisition_time)
    camera_info_msg.header.stamp = rospy.Time(local_time.seconds, local_time.nanos)
    camera_info_msg.header.frame_id = data.shot.frame_name_image_sensor
    camera_info_msg.height = data.shot.image.rows
    camera_info_msg.width = data.shot.image.cols

    camera_info_msg.K[0] = data.source.pinhole.intrinsics.focal_length.x
    camera_info_msg.K[2] = data.source.pinhole.intrinsics.principal_point.x
    camera_info_msg.K[4] = data.source.pinhole.intrinsics.focal_length.y
    camera_info_msg.K[5] = data.source.pinhole.intrinsics.principal_point.y

    camera_info_msg.P[0] = data.source.pinhole.intrinsics.focal_length.x
    camera_info_msg.P[2] = data.source.pinhole.intrinsics.principal_point.x
    camera_info_msg.P[5] = data.source.pinhole.intrinsics.focal_length.y
    camera_info_msg.P[6] = data.source.pinhole.intrinsics.principal_point.y

    return image_msg, camera_info_msg

def GetJointStatesFromState(state, spot_wrapper):
    """Maps joint state data from robot state proto to ROS JointState message

    Args:
        data: Robot State proto
        spot_wrapper: A SpotWrapper object
    Returns:
        JointState message
    """
    joint_state = JointState()
    local_time = spot_wrapper.robotToLocalTime(state.kinematic_state.acquisition_timestamp)
    joint_state.header.stamp = rospy.Time(local_time.seconds, local_time.nanos)
    for joint in state.kinematic_state.joint_states:
        joint_state.name.append(friendly_joint_names.get(joint.name, "ERROR"))
        joint_state.position.append(joint.position.value)
        joint_state.velocity.append(joint.velocity.value)
        joint_state.effort.append(joint.load.value)

    return joint_state

def CombineGrids(raw_grid, valid_grid, spot_wrapper):
    """Performs logical and between the raw_grid and valid_grid to remove invalid measurements from a OccupancyGrid

        Args:
            raw_grid: OccupancyGrid msg with measurement
            valid_grid: OccupancyGrid msg with binary indicators
            spot_wrapper: A SpotWrapper object
        Returns:
            OccupancyGrid message
        """

    grid_map = raw_grid

    raw = np.asarray(raw_grid.data)
    valid = np.asarray(valid_grid.data)

    raw[valid != 1] = -1

    grid_map.data = raw.astype(dtype=np.int8)

    return grid_map

def GetWorldObjectsFromState(data, spot_wrapper):
    # currentlt only build for april tags
    ids = []
    tag_ids = []
    names = []

    world_obj_msg = AprilTagState()
    
    for object in data.world_objects:
        if 'apriltag' in str(object.name):
            ids.append(int(object.id))
            tag_ids.append(int(object.apriltag_properties.tag_id))
            names.append(str(object.name))
    
    local_time = spot_wrapper.robotToLocalTime(data.header.response_timestamp)

    # header
    world_obj_msg.header.stamp = rospy.Time(local_time.seconds, local_time.nanos)
    # changed to body for now, currently non functional with robot localization setup. 
    world_obj_msg.header.frame_id = 'body' # TODO make dynamic frame id

    world_obj_msg.ids = ids
    world_obj_msg.tag_ids = tag_ids
    world_obj_msg.names = names

    return world_obj_msg
    

def GetLocalGridsFromState(grid, spot_wrapper, tf, normalize='obstacle'):
    """Maps local grid data from robot state proto to ROS OccupancyGrid message

    Args:
        grid: Robot State proto (LocalGridResponse)
        spot_wrapper: A SpotWrapper object
        tf: transform from localized frame to body (center and loc occupancy grid)
    Returns:
        OccupancyGrid message

    Assumptions: Not checking error states in the LocalGridResponse.status proto (following getImageMsg style)
    """

    grid_map = OccupancyGrid()
    local_time = spot_wrapper.robotToLocalTime(grid.local_grid.acquisition_time)

    # header
    grid_map.header.stamp = rospy.Time(local_time.seconds, local_time.nanos)
    # changed to body for now, currently non functional with robot localization setup. 
    grid_map.header.frame_id = tf.header.frame_id

    # metadata
    grid_map.info.map_load_time = rospy.Time(local_time.seconds, local_time.nanos)
    grid_map.info.resolution = float(grid.local_grid.extent.cell_size)  # proto stores as double
    grid_map.info.width = grid.local_grid.extent.num_cells_x
    grid_map.info.height = grid.local_grid.extent.num_cells_y

    cell_count = grid.local_grid.extent.num_cells_x * grid.local_grid.extent.num_cells_y
    color = np.ones([cell_count], dtype=np.int8) # array for recoloring for OccupancyGrid message

    # check type and decode appropriately
    if grid.local_grid_type_name == "no_step":
        # unsafe (val<0) -> 0, safe (val>0) -> val * 100
        grid_full = unpack_grid(grid).astype(np.float32)

        for pos, cell in enumerate(grid_full):
            if cell <= 0:
                color[pos] = 10
            elif cell > 0:
                color[pos] = 100
            else:
                color[pos] = -1

    elif grid.local_grid_type_name == "obstacle_distance":
        # inside obstacle (<0) -> 100, obstacle border (0<val>0.33) ->  40 + 100 * val, outside obstacle (val>0) -> 0
        grid_full = unpack_grid(grid).astype(np.float32)

        for pos, cell in enumerate(grid_full):
            if cell <= 0:
                color[pos] = 100
            elif cell > 0 and cell < 0.33:
                color[pos] = 40 + 100 * cell
            elif cell > 0.33:
                color[pos] = 0
            else:
                color[pos] = -1

    elif grid.local_grid_type_name == "terrain":
        # height is scaled between 0 and 100. Heights are RAW and need to be validated with terrain_valid local grid
        grid_full = unpack_grid(grid).astype(np.float32)

        color = ((grid_full - grid_full.min()) * (1/(grid_full.max() - grid_full.min()) * 100)).astype('uint8')

    elif grid.local_grid_type_name == "terrain_valid":
        color = unpack_grid(grid)

    # transform
    cell_size = grid.local_grid.extent.cell_size

    

    # center the local grid on the robot
    grid_map.info.origin.position.x = tf.transform.translation.x - (grid_map.info.resolution * grid.local_grid.extent.num_cells_x) / 2
    grid_map.info.origin.position.y = tf.transform.translation.y -(grid_map.info.resolution * grid.local_grid.extent.num_cells_x) / 2
    grid_map.info.origin.position.z = tf.transform.translation.z - 0.35
    grid_map.info.origin.orientation.w = 1.0

    grid_map.data = color.astype(dtype='int8')

    return grid_map

def GetEStopStateFromState(state, spot_wrapper):
    """Maps eStop state data from robot state proto to ROS EStopArray message

    Args:
        data: Robot State proto
        spot_wrapper: A SpotWrapper object
    Returns:
        EStopArray message
    """
    estop_array_msg = EStopStateArray()
    for estop in state.estop_states:
        estop_msg = EStopState()
        local_time = spot_wrapper.robotToLocalTime(estop.timestamp)
        estop_msg.header.stamp = rospy.Time(local_time.seconds, local_time.nanos)
        estop_msg.name = estop.name
        estop_msg.type = estop.type
        estop_msg.state = estop.state
        estop_msg.state_description = estop.state_description
        estop_array_msg.estop_states.append(estop_msg)

    return estop_array_msg

def GetFeetFromState(state, spot_wrapper):
    """Maps foot position state data from robot state proto to ROS FootStateArray message

    Args:
        data: Robot State proto
        spot_wrapper: A SpotWrapper object
    Returns:
        FootStateArray message
    """
    foot_array_msg = FootStateArray()
    for foot in state.foot_state:
        foot_msg = FootState()
        foot_msg.foot_position_rt_body.x = foot.foot_position_rt_body.x
        foot_msg.foot_position_rt_body.y = foot.foot_position_rt_body.y
        foot_msg.foot_position_rt_body.z = foot.foot_position_rt_body.z
        foot_msg.contact = foot.contact
        foot_array_msg.states.append(foot_msg)

    return foot_array_msg

def GetOdomTwistFromState(state, spot_wrapper):
    """Maps odometry data from robot state proto to ROS TwistWithCovarianceStamped message

    Args:
        data: Robot State proto
        spot_wrapper: A SpotWrapper object
    Returns:
        TwistWithCovarianceStamped message
    """
    twist_odom_msg = TwistWithCovarianceStamped()
    local_time = spot_wrapper.robotToLocalTime(state.kinematic_state.acquisition_timestamp)
    twist_odom_msg.header.stamp = rospy.Time(local_time.seconds, local_time.nanos)
    twist_odom_msg.twist.twist.linear.x = state.kinematic_state.velocity_of_body_in_odom.linear.x
    twist_odom_msg.twist.twist.linear.y = state.kinematic_state.velocity_of_body_in_odom.linear.y
    twist_odom_msg.twist.twist.linear.z = state.kinematic_state.velocity_of_body_in_odom.linear.z
    twist_odom_msg.twist.twist.angular.x = state.kinematic_state.velocity_of_body_in_odom.angular.x
    twist_odom_msg.twist.twist.angular.y = state.kinematic_state.velocity_of_body_in_odom.angular.y
    twist_odom_msg.twist.twist.angular.z = state.kinematic_state.velocity_of_body_in_odom.angular.z
    return twist_odom_msg

def GetOdomFromState(state, spot_wrapper, use_vision=True):
    """Maps odometry data from robot state proto to ROS Odometry message

    Args:
        data: Robot State proto
        spot_wrapper: A SpotWrapper object
    Returns:
        Odometry message
    """
    odom_msg = Odometry()
    local_time = spot_wrapper.robotToLocalTime(state.kinematic_state.acquisition_timestamp)
    odom_msg.header.stamp = rospy.Time(local_time.seconds, local_time.nanos)
    if use_vision == True:
        # switched from vision to odom, since a vision frame has no connection with Robot Localization
        odom_msg.header.frame_id = 'odom'
        tform_body = get_vision_tform_body(state.kinematic_state.transforms_snapshot)
    else:
        odom_msg.header.frame_id = 'odom'
        tform_body = get_odom_tform_body(state.kinematic_state.transforms_snapshot)
    odom_msg.child_frame_id = 'body'
    pose_odom_msg = PoseWithCovariance()
    pose_odom_msg.pose.position.x = tform_body.position.x
    pose_odom_msg.pose.position.y = tform_body.position.y
    pose_odom_msg.pose.position.z = tform_body.position.z
    pose_odom_msg.pose.orientation.x = tform_body.rotation.x
    pose_odom_msg.pose.orientation.y = tform_body.rotation.y
    pose_odom_msg.pose.orientation.z = tform_body.rotation.z
    pose_odom_msg.pose.orientation.w = tform_body.rotation.w

    odom_msg.pose = pose_odom_msg
    twist_odom_msg = GetOdomTwistFromState(state, spot_wrapper).twist
    odom_msg.twist = twist_odom_msg
    return odom_msg

def GetWifiFromState(state, spot_wrapper):
    """Maps wireless state data from robot state proto to ROS WiFiState message

    Args:
        data: Robot State proto
        spot_wrapper: A SpotWrapper object
    Returns:
        WiFiState message
    """
    wifi_msg = WiFiState()
    for comm_state in state.comms_states:
        if comm_state.HasField('wifi_state'):
            wifi_msg.current_mode = comm_state.wifi_state.current_mode
            wifi_msg.essid = comm_state.wifi_state.essid

    return wifi_msg

def GetTFFromState(state, spot_wrapper, inverse_target_frame):
    """Maps robot link state data from robot state proto to ROS TFMessage message

    Args:
        data: Robot State proto
        spot_wrapper: A SpotWrapper object
        inverse_target_frame: A frame name to be inversed to a parent frame.
    Returns:
        TFMessage message
    """
    tf_msg = TFMessage()

    for frame_name in state.kinematic_state.transforms_snapshot.child_to_parent_edge_map:
        if state.kinematic_state.transforms_snapshot.child_to_parent_edge_map.get(frame_name).parent_frame_name:
            if frame_name == 'odom' or frame_name == 'vision':
                """
                Halts the publishing of tf transforms between odom/vision to the body frame.
                This allows the Robot Localization Package to handle the tf after performing localization
                using multiple sensors and a ekf/ukf
                """
                continue
            try:
                transform = state.kinematic_state.transforms_snapshot.child_to_parent_edge_map.get(frame_name)
                local_time = spot_wrapper.robotToLocalTime(state.kinematic_state.acquisition_timestamp)
                tf_time = rospy.Time(local_time.seconds, local_time.nanos)
                if inverse_target_frame == frame_name:
                    geo_tform_inversed = SE3Pose.from_obj(transform.parent_tform_child).inverse()
                    new_tf = populateTransformStamped(tf_time, frame_name, transform.parent_frame_name, geo_tform_inversed)
                else:
                    new_tf = populateTransformStamped(tf_time, transform.parent_frame_name, frame_name, transform.parent_tform_child)
                tf_msg.transforms.append(new_tf)
            except Exception as e:
                spot_wrapper.logger.error('Error: {}'.format(e))

    return tf_msg

def GetBatteryStatesFromState(state, spot_wrapper):
    """Maps battery state data from robot state proto to ROS BatteryStateArray message

    Args:
        data: Robot State proto
        spot_wrapper: A SpotWrapper object
    Returns:
        BatteryStateArray message
    """
    battery_states_array_msg = BatteryStateArray()
    for battery in state.battery_states:
        battery_msg = BatteryState()
        local_time = spot_wrapper.robotToLocalTime(battery.timestamp)
        battery_msg.header.stamp = rospy.Time(local_time.seconds, local_time.nanos)

        battery_msg.identifier = battery.identifier
        battery_msg.charge_percentage = battery.charge_percentage.value
        battery_msg.estimated_runtime = rospy.Time(battery.estimated_runtime.seconds, battery.estimated_runtime.nanos)
        battery_msg.current = battery.current.value
        battery_msg.voltage = battery.voltage.value
        for temp in battery.temperatures:
            battery_msg.temperatures.append(temp)
        battery_msg.status = battery.status
        battery_states_array_msg.battery_states.append(battery_msg)

    return battery_states_array_msg

def GetPowerStatesFromState(state, spot_wrapper):
    """Maps power state data from robot state proto to ROS PowerState message

    Args:
        data: Robot State proto
        spot_wrapper: A SpotWrapper object
    Returns:
        PowerState message
    """
    power_state_msg = PowerState()
    local_time = spot_wrapper.robotToLocalTime(state.power_state.timestamp)
    power_state_msg.header.stamp = rospy.Time(local_time.seconds, local_time.nanos)
    power_state_msg.motor_power_state = state.power_state.motor_power_state
    power_state_msg.shore_power_state = state.power_state.shore_power_state
    power_state_msg.locomotion_charge_percentage = state.power_state.locomotion_charge_percentage.value
    power_state_msg.locomotion_estimated_runtime = rospy.Time(state.power_state.locomotion_estimated_runtime.seconds, state.power_state.locomotion_estimated_runtime.nanos)
    return power_state_msg

def getBehaviorFaults(behavior_faults, spot_wrapper):
    """Helper function to strip out behavior faults into a list

    Args:
        behavior_faults: List of BehaviorFaults
        spot_wrapper: A SpotWrapper object
    Returns:
        List of BehaviorFault messages
    """
    faults = []

    for fault in behavior_faults:
        new_fault = BehaviorFault()
        new_fault.behavior_fault_id = fault.behavior_fault_id
        local_time = spot_wrapper.robotToLocalTime(fault.onset_timestamp)
        new_fault.header.stamp = rospy.Time(local_time.seconds, local_time.nanos)
        new_fault.cause = fault.cause
        new_fault.status = fault.status
        faults.append(new_fault)

    return faults

def getSystemFaults(system_faults, spot_wrapper):
    """Helper function to strip out system faults into a list

    Args:
        systen_faults: List of SystemFaults
        spot_wrapper: A SpotWrapper object
    Returns:
        List of SystemFault messages
    """
    faults = []

    for fault in system_faults:
        new_fault = SystemFault()
        new_fault.name = fault.name
        local_time = spot_wrapper.robotToLocalTime(fault.onset_timestamp)
        new_fault.header.stamp = rospy.Time(local_time.seconds, local_time.nanos)
        new_fault.duration = rospy.Time(fault.duration.seconds, fault.duration.nanos)
        new_fault.code = fault.code
        new_fault.uid = fault.uid
        new_fault.error_message = fault.error_message

        for att in fault.attributes:
            new_fault.attributes.append(att)

        new_fault.severity = fault.severity
        faults.append(new_fault)

    return faults

def GetSystemFaultsFromState(state, spot_wrapper):
    """Maps system fault data from robot state proto to ROS SystemFaultState message

    Args:
        data: Robot State proto
        spot_wrapper: A SpotWrapper object
    Returns:
        SystemFaultState message
    """
    system_fault_state_msg = SystemFaultState()
    system_fault_state_msg.faults = getSystemFaults(state.system_fault_state.faults, spot_wrapper)
    system_fault_state_msg.historical_faults = getSystemFaults(state.system_fault_state.historical_faults, spot_wrapper)
    return system_fault_state_msg

def getBehaviorFaultsFromState(state, spot_wrapper):
    """Maps behavior fault data from robot state proto to ROS BehaviorFaultState message

    Args:
        data: Robot State proto
        spot_wrapper: A SpotWrapper object
    Returns:
        BehaviorFaultState message
    """
    behavior_fault_state_msg = BehaviorFaultState()
    behavior_fault_state_msg.faults = getBehaviorFaults(state.behavior_fault_state.faults, spot_wrapper)
    return behavior_fault_state_msg

def GetInRange(pose, range_t= 0.15, range_y= 0.088):
    """Checks if the given pose is within the translation range and yaw angle of local frame

        Args:
            pose: geometry_msgs/pose - pose in local frame
            range_t: float - pass range in meters
            range_y: float - pass range in degrees
        Returns:
            inRange: bool - if the pose is within the acceptable range
        """
    # convert quaternion to yaw radians
    yaw = Quat(
        w=pose.orientation.w,
        x=pose.orientation.x,
        y=pose.orientation.y,
        z=pose.orientation.z
    ).to_yaw()

    #rospy.loginfo(f"x: {pose.orientation.x:.2f}, y: {pose.orientation.y:.2f}, z: {pose.orientation.z}, w: {pose.orientation.w}")
    #rospy.logdebug(f"position: {bool(abs(pose.position.x) < range_t and abs(pose.position.y))} angle: {bool(angle_diff(0, yaw) < range_y)}")

    rospy.loginfo(f"x: {pose.position.x:.2f}, y: {pose.position.y:.2f}, yaw: {yaw:.2f}")
    rospy.loginfo(range_t)

    # TODO removed angle parameter from below check
    # and angle_diff(0, yaw) < range_y

    # check if in range
    if(abs(pose.position.x) < range_t and abs(pose.position.y) < range_t):
        inRange = True
    else:
        inRange = False

    return inRange

def get_numpy_data_type(local_grid_proto):
    """Convert the cell format of the local grid proto to a numpy data type."""
    if local_grid_proto.cell_format == local_grid_pb2.LocalGrid.CELL_FORMAT_UINT16:
        return np.uint16
    elif local_grid_proto.cell_format == local_grid_pb2.LocalGrid.CELL_FORMAT_INT16:
        return np.int16
    elif local_grid_proto.cell_format == local_grid_pb2.LocalGrid.CELL_FORMAT_UINT8:
        return np.uint8
    elif local_grid_proto.cell_format == local_grid_pb2.LocalGrid.CELL_FORMAT_INT8:
        return np.int8
    elif local_grid_proto.cell_format == local_grid_pb2.LocalGrid.CELL_FORMAT_FLOAT64:
        return np.float64
    elif local_grid_proto.cell_format == local_grid_pb2.LocalGrid.CELL_FORMAT_FLOAT32:
        return np.float32
    else:
        return None

def expand_data_by_rle_count(local_grid_proto, data_type=np.int16):
    """Expand local grid data to full bytes data using the RLE count."""
    cells_pz = np.frombuffer(local_grid_proto.local_grid.data, dtype=data_type)
    cells_pz_full = []
    # For each value of rle_counts, we expand the cell data at the matching index
    # to have that many repeated, consecutive values.
    for i in range(0, len(local_grid_proto.local_grid.rle_counts)):
        for j in range(0, local_grid_proto.local_grid.rle_counts[i]):
            cells_pz_full.append(cells_pz[i])
    return np.array(cells_pz_full)

def unpack_grid(grid):

    data_type = get_numpy_data_type(grid.local_grid)

    # decode local grid
    if grid.local_grid.encoding == local_grid_pb2.LocalGrid.ENCODING_RAW:
        full_grid = np.frombuffer(grid.local_grid.data, dtype=data_type)
    elif grid.local_grid.encoding == local_grid_pb2.LocalGrid.ENCODING_RLE:
        full_grid = expand_data_by_rle_count(grid, data_type=data_type)

    # Apply the offset and scaling to the local grid.
    if grid.local_grid.cell_value_scale != 0:
        full_grid = full_grid.astype(np.float64)
        full_grid *= grid.local_grid.cell_value_scale
        full_grid += grid.local_grid.cell_value_offset

    return full_grid

def offset_grid_pixels(pts, vision_tform_local_grid, cell_size):
    """Offset the local grid's pixels to be in the world frame instead of the local grid frame."""
    x_base = vision_tform_local_grid.position.x + cell_size * 0.5
    y_base = vision_tform_local_grid.position.y + cell_size * 0.5
    print(x_base)
    pts[:, 0] += x_base
    pts[:, 1] += y_base
    return pts