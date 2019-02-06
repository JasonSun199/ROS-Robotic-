;; Auto-generated. Do not edit!


(when (boundp 'object_finder::objectFinderResult)
  (if (not (find-package "OBJECT_FINDER"))
    (make-package "OBJECT_FINDER"))
  (shadow 'objectFinderResult (find-package "OBJECT_FINDER")))
(unless (find-package "OBJECT_FINDER::OBJECTFINDERRESULT")
  (make-package "OBJECT_FINDER::OBJECTFINDERRESULT"))

(in-package "ROS")
;;//! \htmlinclude objectFinderResult.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*SUCCESS*" (find-package "OBJECT_FINDER::OBJECTFINDERRESULT"))
(shadow '*SUCCESS* (find-package "OBJECT_FINDER::OBJECTFINDERRESULT"))
(defconstant object_finder::objectFinderResult::*SUCCESS* 0)
(intern "*OBJECT_FOUND*" (find-package "OBJECT_FINDER::OBJECTFINDERRESULT"))
(shadow '*OBJECT_FOUND* (find-package "OBJECT_FINDER::OBJECTFINDERRESULT"))
(defconstant object_finder::objectFinderResult::*OBJECT_FOUND* 0)
(intern "*OBJECT_NOT_FOUND*" (find-package "OBJECT_FINDER::OBJECTFINDERRESULT"))
(shadow '*OBJECT_NOT_FOUND* (find-package "OBJECT_FINDER::OBJECTFINDERRESULT"))
(defconstant object_finder::objectFinderResult::*OBJECT_NOT_FOUND* 1)
(intern "*OBJECT_CODE_NOT_RECOGNIZED*" (find-package "OBJECT_FINDER::OBJECTFINDERRESULT"))
(shadow '*OBJECT_CODE_NOT_RECOGNIZED* (find-package "OBJECT_FINDER::OBJECTFINDERRESULT"))
(defconstant object_finder::objectFinderResult::*OBJECT_CODE_NOT_RECOGNIZED* 2)
(intern "*OBJECT_FINDER_BUSY*" (find-package "OBJECT_FINDER::OBJECTFINDERRESULT"))
(shadow '*OBJECT_FINDER_BUSY* (find-package "OBJECT_FINDER::OBJECTFINDERRESULT"))
(defconstant object_finder::objectFinderResult::*OBJECT_FINDER_BUSY* 3)
(intern "*OBJECT_FINDER_CANCELLED*" (find-package "OBJECT_FINDER::OBJECTFINDERRESULT"))
(shadow '*OBJECT_FINDER_CANCELLED* (find-package "OBJECT_FINDER::OBJECTFINDERRESULT"))
(defconstant object_finder::objectFinderResult::*OBJECT_FINDER_CANCELLED* 4)
(defclass object_finder::objectFinderResult
  :super ros::object
  :slots (_found_object_code _object_pose _object_id ))

(defmethod object_finder::objectFinderResult
  (:init
   (&key
    ((:found_object_code __found_object_code) 0)
    ((:object_pose __object_pose) (instance geometry_msgs::PoseStamped :init))
    ((:object_id __object_id) 0)
    )
   (send-super :init)
   (setq _found_object_code (round __found_object_code))
   (setq _object_pose __object_pose)
   (setq _object_id (round __object_id))
   self)
  (:found_object_code
   (&optional __found_object_code)
   (if __found_object_code (setq _found_object_code __found_object_code)) _found_object_code)
  (:object_pose
   (&rest __object_pose)
   (if (keywordp (car __object_pose))
       (send* _object_pose __object_pose)
     (progn
       (if __object_pose (setq _object_pose (car __object_pose)))
       _object_pose)))
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:serialization-length
   ()
   (+
    ;; int32 _found_object_code
    4
    ;; geometry_msgs/PoseStamped _object_pose
    (send _object_pose :serialization-length)
    ;; int32 _object_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _found_object_code
       (write-long _found_object_code s)
     ;; geometry_msgs/PoseStamped _object_pose
       (send _object_pose :serialize s)
     ;; int32 _object_id
       (write-long _object_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _found_object_code
     (setq _found_object_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _object_pose
     (send _object_pose :deserialize buf ptr-) (incf ptr- (send _object_pose :serialization-length))
   ;; int32 _object_id
     (setq _object_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get object_finder::objectFinderResult :md5sum-) "a7900c52b913a2038f3ebf889a359d6e")
(setf (get object_finder::objectFinderResult :datatype-) "object_finder/objectFinderResult")
(setf (get object_finder::objectFinderResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
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

")



(provide :object_finder/objectFinderResult "a7900c52b913a2038f3ebf889a359d6e")

