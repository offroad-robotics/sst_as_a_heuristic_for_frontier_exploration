// Auto-generated. Do not edit!

// (in-package spot_trajectory_planner.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ExecuteTrajectoryGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frontier_plan = null;
      this.parent_id = null;
      this.add_frontier = null;
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
      if (initObj.hasOwnProperty('add_frontier')) {
        this.add_frontier = initObj.add_frontier
      }
      else {
        this.add_frontier = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExecuteTrajectoryGoal
    // Serialize message field [frontier_plan]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.frontier_plan, buffer, bufferOffset);
    // Serialize message field [parent_id]
    bufferOffset = _serializer.int32(obj.parent_id, buffer, bufferOffset);
    // Serialize message field [add_frontier]
    bufferOffset = _serializer.bool(obj.add_frontier, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExecuteTrajectoryGoal
    let len;
    let data = new ExecuteTrajectoryGoal(null);
    // Deserialize message field [frontier_plan]
    data.frontier_plan = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [parent_id]
    data.parent_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [add_frontier]
    data.add_frontier = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.frontier_plan);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'spot_trajectory_planner/ExecuteTrajectoryGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9d017ffa8c844d5c0848ed4125c8d0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Action
    geometry_msgs/PoseArray frontier_plan
    int32 parent_id
    bool add_frontier
    
    
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
    const resolved = new ExecuteTrajectoryGoal(null);
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

    if (msg.add_frontier !== undefined) {
      resolved.add_frontier = msg.add_frontier;
    }
    else {
      resolved.add_frontier = false
    }

    return resolved;
    }
};

module.exports = ExecuteTrajectoryGoal;
