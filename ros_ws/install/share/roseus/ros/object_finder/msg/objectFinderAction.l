;; Auto-generated. Do not edit!


(when (boundp 'object_finder::objectFinderAction)
  (if (not (find-package "OBJECT_FINDER"))
    (make-package "OBJECT_FINDER"))
  (shadow 'objectFinderAction (find-package "OBJECT_FINDER")))
(unless (find-package "OBJECT_FINDER::OBJECTFINDERACTION")
  (make-package "OBJECT_FINDER::OBJECTFINDERACTION"))

(in-package "ROS")
;;//! \htmlinclude objectFinderAction.msg.html


(defclass object_finder::objectFinderAction
  :super ros::object
  :slots (_action_goal _action_result _action_feedback ))

(defmethod object_finder::objectFinderAction
  (:init
   (&key
    ((:action_goal __action_goal) (instance object_finder::objectFinderActionGoal :init))
    ((:action_result __action_result) (instance object_finder::objectFinderActionResult :init))
    ((:action_feedback __action_feedback) (instance object_finder::objectFinderActionFeedback :init))
    )
   (send-super :init)
   (setq _action_goal __action_goal)
   (setq _action_result __action_result)
   (setq _action_feedback __action_feedback)
   self)
  (:action_goal
   (&rest __action_goal)
   (if (keywordp (car __action_goal))
       (send* _action_goal __action_goal)
     (progn
       (if __action_goal (setq _action_goal (car __action_goal)))
       _action_goal)))
  (:action_result
   (&rest __action_result)
   (if (keywordp (car __action_result))
       (send* _action_result __action_result)
     (progn
       (if __action_result (setq _action_result (car __action_result)))
       _action_result)))
  (:action_feedback
   (&rest __action_feedback)
   (if (keywordp (car __action_feedback))
       (send* _action_feedback __action_feedback)
     (progn
       (if __action_feedback (setq _action_feedback (car __action_feedback)))
       _action_feedback)))
  (:serialization-length
   ()
   (+
    ;; object_finder/objectFinderActionGoal _action_goal
    (send _action_goal :serialization-length)
    ;; object_finder/objectFinderActionResult _action_result
    (send _action_result :serialization-length)
    ;; object_finder/objectFinderActionFeedback _action_feedback
    (send _action_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; object_finder/objectFinderActionGoal _action_goal
       (send _action_goal :serialize s)
     ;; object_finder/objectFinderActionResult _action_result
       (send _action_result :serialize s)
     ;; object_finder/objectFinderActionFeedback _action_feedback
       (send _action_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; object_finder/objectFinderActionGoal _action_goal
     (send _action_goal :deserialize buf ptr-) (incf ptr- (send _action_goal :serialization-length))
   ;; object_finder/objectFinderActionResult _action_result
     (send _action_result :deserialize buf ptr-) (incf ptr- (send _action_result :serialization-length))
   ;; object_finder/objectFinderActionFeedback _action_feedback
     (send _action_feedback :deserialize buf ptr-) (incf ptr- (send _action_feedback :serialization-length))
   ;;
   self)
  )

(setf (get object_finder::objectFinderAction :md5sum-) "8e73120b56aae47c3b585f6b36cfd1fd")
(setf (get object_finder::objectFinderAction :datatype-) "object_finder/objectFinderAction")
(setf (get object_finder::objectFinderAction :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

objectFinderActionGoal action_goal
objectFinderActionResult action_result
objectFinderActionFeedback action_feedback

================================================================================
MSG: object_finder/objectFinderActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
objectFinderGoal goal

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
MSG: object_finder/objectFinderGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#objectFinder.action
#goal:
#get object ID codes from <object_manipulation_properties/object_ID_codes.h>

#goal fields to fill in:
int32 object_id

#boolean to declare if object is on a horizontal surface of known height:
bool known_surface_ht

#if surface ht is known, fill it in
float32 surface_ht


================================================================================
MSG: object_finder/objectFinderActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
objectFinderResult result

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
MSG: object_finder/objectFinderResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result
int32 SUCCESS =0 
int32 OBJECT_FOUND=0 #synonym for SUCCESS
int32 OBJECT_NOT_FOUND=1
int32 OBJECT_CODE_NOT_RECOGNIZED=2
int32 OBJECT_FINDER_BUSY=3
int32 OBJECT_FINDER_CANCELLED=4

#return the identified pose here:
int32 found_object_code
geometry_msgs/PoseStamped object_pose
int32 object_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: object_finder/objectFinderActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
objectFinderFeedback feedback

================================================================================
MSG: object_finder/objectFinderFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback: optional; 
#int32 OBJECT_FINDER_BUSY=3 
int32 fdbk





")



(provide :object_finder/objectFinderAction "8e73120b56aae47c3b585f6b36cfd1fd")

