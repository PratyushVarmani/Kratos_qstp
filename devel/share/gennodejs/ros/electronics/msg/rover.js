// Auto-generated. Do not edit!

// (in-package electronics.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class rover {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.velocity = null;
      this.distance = null;
      this.position = null;
      this.battery = null;
      this.time_running = null;
    }
    else {
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('battery')) {
        this.battery = initObj.battery
      }
      else {
        this.battery = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('time_running')) {
        this.time_running = initObj.time_running
      }
      else {
        this.time_running = new std_msgs.msg.Time();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rover
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.distance, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [battery]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.battery, buffer, bufferOffset);
    // Serialize message field [time_running]
    bufferOffset = std_msgs.msg.Time.serialize(obj.time_running, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rover
    let len;
    let data = new rover(null);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [battery]
    data.battery = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_running]
    data.time_running = std_msgs.msg.Time.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 124;
  }

  static datatype() {
    // Returns string type for a message object
    return 'electronics/rover';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88cdce70f8f92a71fa841fa7b7186ec4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Twist velocity
    std_msgs/Float64 distance
    geometry_msgs/Pose position
    std_msgs/Int32 battery
    std_msgs/Time time_running
    
    
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
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
    
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: std_msgs/Time
    time data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rover(null);
    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Twist.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Twist()
    }

    if (msg.distance !== undefined) {
      resolved.distance = std_msgs.msg.Float64.Resolve(msg.distance)
    }
    else {
      resolved.distance = new std_msgs.msg.Float64()
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Pose.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Pose()
    }

    if (msg.battery !== undefined) {
      resolved.battery = std_msgs.msg.Int32.Resolve(msg.battery)
    }
    else {
      resolved.battery = new std_msgs.msg.Int32()
    }

    if (msg.time_running !== undefined) {
      resolved.time_running = std_msgs.msg.Time.Resolve(msg.time_running)
    }
    else {
      resolved.time_running = new std_msgs.msg.Time()
    }

    return resolved;
    }
};

module.exports = rover;
