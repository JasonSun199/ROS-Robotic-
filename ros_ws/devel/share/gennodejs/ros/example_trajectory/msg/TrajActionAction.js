// Auto-generated. Do not edit!

// (in-package example_trajectory.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrajActionActionGoal = require('./TrajActionActionGoal.js');
let TrajActionActionResult = require('./TrajActionActionResult.js');
let TrajActionActionFeedback = require('./TrajActionActionFeedback.js');

//-----------------------------------------------------------

class TrajActionAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_goal = null;
      this.action_result = null;
      this.action_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('action_goal')) {
        this.action_goal = initObj.action_goal
      }
      else {
        this.action_goal = new TrajActionActionGoal();
      }
      if (initObj.hasOwnProperty('action_result')) {
        this.action_result = initObj.action_result
      }
      else {
        this.action_result = new TrajActionActionResult();
      }
      if (initObj.hasOwnProperty('action_feedback')) {
        this.action_feedback = initObj.action_feedback
      }
      else {
        this.action_feedback = new TrajActionActionFeedback();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajActionAction
    // Serialize message field [action_goal]
    bufferOffset = TrajActionActionGoal.serialize(obj.action_goal, buffer, bufferOffset);
    // Serialize message field [action_result]
    bufferOffset = TrajActionActionResult.serialize(obj.action_result, buffer, bufferOffset);
    // Serialize message field [action_feedback]
    bufferOffset = TrajActionActionFeedback.serialize(obj.action_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajActionAction
    let len;
    let data = new TrajActionAction(null);
    // Deserialize message field [action_goal]
    data.action_goal = TrajActionActionGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_result]
    data.action_result = TrajActionActionResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_feedback]
    data.action_feedback = TrajActionActionFeedback.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += TrajActionActionGoal.getMessageSize(object.action_goal);
    length += TrajActionActionResult.getMessageSize(object.action_result);
    length += TrajActionActionFeedback.getMessageSize(object.action_feedback);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'example_trajectory/TrajActionAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63ba343e827fda625841c0ba811b4b6d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    TrajActionActionGoal action_goal
    TrajActionActionResult action_result
    TrajActionActionFeedback action_feedback
    
    ================================================================================
    MSG: example_trajectory/TrajActionActionGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalID goal_id
    TrajActionGoal goal
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: actionlib_msgs/GoalID
    # The stamp should store the time at which this goal was requested.
    # It is used by an action server when it tries to preempt all
    # goals that were requested before a certain time
    time stamp
    
    # The id provides a way to associate feedback and
    # result message with specific goal requests. The id
    # specified must be unique.
    string id
    
    
    ================================================================================
    MSG: example_trajectory/TrajActionGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal definition
    trajectory_msgs/JointTrajectory trajectory
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectory
    Header header
    string[] joint_names
    JointTrajectoryPoint[] points
    ================================================================================
    MSG: trajectory_msgs/JointTrajectoryPoint
    # Each trajectory point specifies either positions[, velocities[, accelerations]]
    # or positions[, effort] for the trajectory to be executed.
    # All specified values are in the same order as the joint names in JointTrajectory.msg
    
    float64[] positions
    float64[] velocities
    float64[] accelerations
    float64[] effort
    duration time_from_start
    
    ================================================================================
    MSG: example_trajectory/TrajActionActionResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    TrajActionResult result
    
    ================================================================================
    MSG: actionlib_msgs/GoalStatus
    GoalID goal_id
    uint8 status
    uint8 PENDING         = 0   # The goal has yet to be processed by the action server
    uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
    uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                                #   and has since completed its execution (Terminal State)
    uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
    uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                                #    to some failure (Terminal State)
    uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                                #    because the goal was unattainable or invalid (Terminal State)
    uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                                #    and has not yet completed execution
    uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                                #    but the action server has not yet confirmed that the goal is canceled
    uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                                #    and was successfully cancelled (Terminal State)
    uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                                #    sent over the wire by an action server
    
    #Allow for the user to associate a string with GoalStatus for debugging
    string text
    
    
    ================================================================================
    MSG: example_trajectory/TrajActionResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #result definition
    int32 rtn_status
    
    ================================================================================
    MSG: example_trajectory/TrajActionActionFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    TrajActionFeedback feedback
    
    ================================================================================
    MSG: example_trajectory/TrajActionFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback
    int32 fdbk
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrajActionAction(null);
    if (msg.action_goal !== undefined) {
      resolved.action_goal = TrajActionActionGoal.Resolve(msg.action_goal)
    }
    else {
      resolved.action_goal = new TrajActionActionGoal()
    }

    if (msg.action_result !== undefined) {
      resolved.action_result = TrajActionActionResult.Resolve(msg.action_result)
    }
    else {
      resolved.action_result = new TrajActionActionResult()
    }

    if (msg.action_feedback !== undefined) {
      resolved.action_feedback = TrajActionActionFeedback.Resolve(msg.action_feedback)
    }
    else {
      resolved.action_feedback = new TrajActionActionFeedback()
    }

    return resolved;
    }
};

module.exports = TrajActionAction;