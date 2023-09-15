// Auto-generated. Do not edit!

// (in-package odas_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let OdasSst = require('./OdasSst.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class OdasSstArrayStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sources = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sources')) {
        this.sources = initObj.sources
      }
      else {
        this.sources = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OdasSstArrayStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sources]
    // Serialize the length for message field [sources]
    bufferOffset = _serializer.uint32(obj.sources.length, buffer, bufferOffset);
    obj.sources.forEach((val) => {
      bufferOffset = OdasSst.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OdasSstArrayStamped
    let len;
    let data = new OdasSstArrayStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sources]
    // Deserialize array length for message field [sources]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sources = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sources[i] = OdasSst.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 40 * object.sources.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'odas_ros/OdasSstArrayStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d2c6de6487e9fc578a7b9e452e8489d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    odas_ros/OdasSst[] sources
    
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
    MSG: odas_ros/OdasSst
    int64 id
    float64 x
    float64 y
    float64 z
    float64 activity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OdasSstArrayStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sources !== undefined) {
      resolved.sources = new Array(msg.sources.length);
      for (let i = 0; i < resolved.sources.length; ++i) {
        resolved.sources[i] = OdasSst.Resolve(msg.sources[i]);
      }
    }
    else {
      resolved.sources = []
    }

    return resolved;
    }
};

module.exports = OdasSstArrayStamped;
