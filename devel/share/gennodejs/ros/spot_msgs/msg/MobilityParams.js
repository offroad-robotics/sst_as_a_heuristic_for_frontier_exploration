// Auto-generated. Do not edit!

// (in-package spot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MobilityParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.body_control = null;
      this.locomotion_hint = null;
      this.stair_hint = null;
    }
    else {
      if (initObj.hasOwnProperty('body_control')) {
        this.body_control = initObj.body_control
      }
      else {
        this.body_control = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('locomotion_hint')) {
        this.locomotion_hint = initObj.locomotion_hint
      }
      else {
        this.locomotion_hint = 0;
      }
      if (initObj.hasOwnProperty('stair_hint')) {
        this.stair_hint = initObj.stair_hint
      }
      else {
        this.stair_hint = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MobilityParams
    // Serialize message field [body_control]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.body_control, buffer, bufferOffset);
    // Serialize message field [locomotion_hint]
    bufferOffset = _serializer.uint32(obj.locomotion_hint, buffer, bufferOffset);
    // Serialize message field [stair_hint]
    bufferOffset = _serializer.bool(obj.stair_hint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MobilityParams
    let len;
    let data = new MobilityParams(null);
    // Deserialize message field [body_control]
    data.body_control = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [locomotion_hint]
    data.locomotion_hint = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stair_hint]
    data.stair_hint = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 61;
  }

  static datatype() {
    // Returns string type for a message object
    return 'spot_msgs/MobilityParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87bda7c4fbd2a6b19bdc029effa9f715';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose body_control
    uint32 locomotion_hint
    bool stair_hint
    
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
    const resolved = new MobilityParams(null);
    if (msg.body_control !== undefined) {
      resolved.body_control = geometry_msgs.msg.Pose.Resolve(msg.body_control)
    }
    else {
      resolved.body_control = new geometry_msgs.msg.Pose()
    }

    if (msg.locomotion_hint !== undefined) {
      resolved.locomotion_hint = msg.locomotion_hint;
    }
    else {
      resolved.locomotion_hint = 0
    }

    if (msg.stair_hint !== undefined) {
      resolved.stair_hint = msg.stair_hint;
    }
    else {
      resolved.stair_hint = false
    }

    return resolved;
    }
};

module.exports = MobilityParams;
