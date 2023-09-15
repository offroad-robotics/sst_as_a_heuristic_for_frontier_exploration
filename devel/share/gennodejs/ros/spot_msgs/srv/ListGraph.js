// Auto-generated. Do not edit!

// (in-package spot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ListGraphRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.upload_filepath = null;
    }
    else {
      if (initObj.hasOwnProperty('upload_filepath')) {
        this.upload_filepath = initObj.upload_filepath
      }
      else {
        this.upload_filepath = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListGraphRequest
    // Serialize message field [upload_filepath]
    bufferOffset = _serializer.string(obj.upload_filepath, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListGraphRequest
    let len;
    let data = new ListGraphRequest(null);
    // Deserialize message field [upload_filepath]
    data.upload_filepath = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.upload_filepath);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'spot_msgs/ListGraphRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01555024216a394c0adb22a6e9118fe3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string upload_filepath
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListGraphRequest(null);
    if (msg.upload_filepath !== undefined) {
      resolved.upload_filepath = msg.upload_filepath;
    }
    else {
      resolved.upload_filepath = ''
    }

    return resolved;
    }
};

class ListGraphResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypoint_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('waypoint_ids')) {
        this.waypoint_ids = initObj.waypoint_ids
      }
      else {
        this.waypoint_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListGraphResponse
    // Serialize message field [waypoint_ids]
    bufferOffset = _arraySerializer.string(obj.waypoint_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListGraphResponse
    let len;
    let data = new ListGraphResponse(null);
    // Deserialize message field [waypoint_ids]
    data.waypoint_ids = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.waypoint_ids.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'spot_msgs/ListGraphResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '118b8bcfd9aa792758857e91da4c7a89';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] waypoint_ids
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListGraphResponse(null);
    if (msg.waypoint_ids !== undefined) {
      resolved.waypoint_ids = msg.waypoint_ids;
    }
    else {
      resolved.waypoint_ids = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ListGraphRequest,
  Response: ListGraphResponse,
  md5sum() { return 'f5a4b6eebf7b4418f61ce9162832e5bf'; },
  datatype() { return 'spot_msgs/ListGraph'; }
};
