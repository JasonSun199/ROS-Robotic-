
(cl:in-package :asdf)

(defsystem "magic_object_finder-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "magicObjectFinderAction" :depends-on ("_package_magicObjectFinderAction"))
    (:file "_package_magicObjectFinderAction" :depends-on ("_package"))
    (:file "magicObjectFinderActionFeedback" :depends-on ("_package_magicObjectFinderActionFeedback"))
    (:file "_package_magicObjectFinderActionFeedback" :depends-on ("_package"))
    (:file "magicObjectFinderActionGoal" :depends-on ("_package_magicObjectFinderActionGoal"))
    (:file "_package_magicObjectFinderActionGoal" :depends-on ("_package"))
    (:file "magicObjectFinderActionResult" :depends-on ("_package_magicObjectFinderActionResult"))
    (:file "_package_magicObjectFinderActionResult" :depends-on ("_package"))
    (:file "magicObjectFinderFeedback" :depends-on ("_package_magicObjectFinderFeedback"))
    (:file "_package_magicObjectFinderFeedback" :depends-on ("_package"))
    (:file "magicObjectFinderGoal" :depends-on ("_package_magicObjectFinderGoal"))
    (:file "_package_magicObjectFinderGoal" :depends-on ("_package"))
    (:file "magicObjectFinderResult" :depends-on ("_package_magicObjectFinderResult"))
    (:file "_package_magicObjectFinderResult" :depends-on ("_package"))
  ))