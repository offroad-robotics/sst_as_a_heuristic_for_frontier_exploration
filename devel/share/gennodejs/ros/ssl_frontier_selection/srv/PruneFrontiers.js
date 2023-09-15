// Auto-generated. Do not edit!

// (in-package ssl_frontier_selection.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PruneFrontiersRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PruneFrontiersRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PruneFrontiersRequest
    let len;
    let data = new PruneFrontiersRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ssl_frontier_selection/PruneFrontiersRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # request
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PruneFrontiersRequest(null);
    return resolved;
    }
};

class PruneFrontiersResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pruned = null;
    }
    else {
      if (initObj.hasOwnProperty('pruned')) {
        this.pruned = initObj.pruned
      }
      else {
        this.pruned = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PruneFrontiersResponse
    // Serialize message field [pruned]
    bufferOffset = _arraySerializer.int32(obj.pruned, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PruneFrontiersResponse
    let len;
    let data = new PruneFrontiersResponse(null);
    // Deserialize message field [pruned]
    data.pruned = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pruned.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ssl_frontier_selection/PruneFrontiersResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e0b05d933c831596f58cdbe4fb9041b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # response
    int32[] pruned 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PruneFrontiersResponse(null);
    if (msg.pruned !== undefined) {
      resolved.pruned = msg.pruned;
    }
    else {
      resolved.pruned = []
    }

    return resolved;
    }
};

module.exports = {
  Request: PruneFrontiersRequest,
  Response: PruneFrontiersResponse,
  md5sum() { return '5e0b05d933c831596f58cdbe4fb9041b'; },
  datatype() { return 'ssl_frontier_selection/PruneFrontiers'; }
};
