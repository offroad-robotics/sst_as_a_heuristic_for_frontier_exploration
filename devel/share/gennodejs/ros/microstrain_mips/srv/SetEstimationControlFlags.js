// Auto-generated. Do not edit!

// (in-package microstrain_mips.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetEstimationControlFlagsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flag = null;
    }
    else {
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetEstimationControlFlagsRequest
    // Serialize message field [flag]
    bufferOffset = _serializer.int8(obj.flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEstimationControlFlagsRequest
    let len;
    let data = new SetEstimationControlFlagsRequest(null);
    // Deserialize message field [flag]
    data.flag = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'microstrain_mips/SetEstimationControlFlagsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad1023f6ef4358dd8f820bdc9b6f40cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 GYRO_BIAS_ESTIMATION=1
    int8 HARD_IRON_AUTO_CALIBRATION=32
    int8 SOFT_IRON_AUTO_CALIBRATION=64
    int8 flag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetEstimationControlFlagsRequest(null);
    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    return resolved;
    }
};

// Constants for message
SetEstimationControlFlagsRequest.Constants = {
  GYRO_BIAS_ESTIMATION: 1,
  HARD_IRON_AUTO_CALIBRATION: 32,
  SOFT_IRON_AUTO_CALIBRATION: 64,
}

class SetEstimationControlFlagsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetEstimationControlFlagsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEstimationControlFlagsResponse
    let len;
    let data = new SetEstimationControlFlagsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'microstrain_mips/SetEstimationControlFlagsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetEstimationControlFlagsResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetEstimationControlFlagsRequest,
  Response: SetEstimationControlFlagsResponse,
  md5sum() { return '692fa639072887f90a3c63c3c00dc9f6'; },
  datatype() { return 'microstrain_mips/SetEstimationControlFlags'; }
};
