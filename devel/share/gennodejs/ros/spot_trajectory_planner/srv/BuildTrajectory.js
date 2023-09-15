// Auto-generated. Do not edit!

// (in-package spot_trajectory_planner.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class BuildTrajectoryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frontier_pose = null;
      this.cur_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('frontier_pose')) {
        this.frontier_pose = initObj.frontier_pose
      }
      else {
        this.frontier_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('cur_pose')) {
        this.cur_pose = initObj.cur_pose
      }
      else {
        this.cur_pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BuildTrajectoryRequest
    // Serialize message field [frontier_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.frontier_pose, buffer, bufferOffset);
    // Serialize message field [cur_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.cur_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BuildTrajectoryRequest
    let len;
    let data = new BuildTrajectoryRequest(null);
    // Deserialize message field [frontier_pose]
    data.frontier_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [cur_pose]
    data.cur_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.frontier_pose);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.cur_pose);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'spot_trajectory_planner/BuildTrajectoryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5fe3a429557d5006ca30226448e54d14';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # request
    geometry_msgs/PoseStamped frontier_pose
    geometry_msgs/PoseStamped cur_pose
    
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BuildTrajectoryRequest(null);
    if (msg.frontier_pose !== undefined) {
      resolved.frontier_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.frontier_pose)
    }
    else {
      resolved.frontier_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.cur_pose !== undefined) {
      resolved.cur_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.cur_pose)
    }
    else {
      resolved.cur_pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

class BuildTrajectoryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frontier_plan = null;
      this.parent_id = null;
      this.node_list = null;
    }
    else {
      if (initObj.hasOwnProperty('frontier_plan')) {
        this.frontier_plan = initObj.frontier_plan
      }
      else {
        this.frontier_plan = new geometry_msgs.msg.PoseArray();
      }
      if (initObj.hasOwnProperty('parent_id')) {
        this.parent_id = initObj.parent_id
      }
      else {
        this.parent_id = 0;
      }
      if (initObj.hasOwnProperty('node_list')) {
        this.node_list = initObj.node_list
      }
      else {
        this.node_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BuildTrajectoryResponse
    // Serialize message field [frontier_plan]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.frontier_plan, buffer, bufferOffset);
    // Serialize message field [parent_id]
    bufferOffset = _serializer.int32(obj.parent_id, buffer, bufferOffset);
    // Serialize message field [node_list]
    bufferOffset = _arraySerializer.int32(obj.node_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BuildTrajectoryResponse
    let len;
    let data = new BuildTrajectoryResponse(null);
    // Deserialize message field [frontier_plan]
    data.frontier_plan = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [parent_id]
    data.parent_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [node_list]
    data.node_list = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.frontier_plan);
    length += 4 * object.node_list.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'spot_trajectory_planner/BuildTrajectoryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7eecba9990cdc357502735584636d95';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # response
    geometry_msgs/PoseArray frontier_plan
    int32 parent_id # used to identify which node is the parent of the frontier
    int32[] node_list
    
    ================================================================================
    MSG: geometry_msgs/PoseArray
    # An array of poses with a header for global reference.
    
    Header header
    
    Pose[] poses
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BuildTrajectoryResponse(null);
    if (msg.frontier_plan !== undefined) {
      resolved.frontier_plan = geometry_msgs.msg.PoseArray.Resolve(msg.frontier_plan)
    }
    else {
      resolved.frontier_plan = new geometry_msgs.msg.PoseArray()
    }

    if (msg.parent_id !== undefined) {
      resolved.parent_id = msg.parent_id;
    }
    else {
      resolved.parent_id = 0
    }

    if (msg.node_list !== undefined) {
      resolved.node_list = msg.node_list;
    }
    else {
      resolved.node_list = []
    }

    return resolved;
    }
};

module.exports = {
  Request: BuildTrajectoryRequest,
  Response: BuildTrajectoryResponse,
  md5sum() { return 'bc7bc67c3c2d0c9de04aea3b481ca509'; },
  datatype() { return 'spot_trajectory_planner/BuildTrajectory'; }
};
