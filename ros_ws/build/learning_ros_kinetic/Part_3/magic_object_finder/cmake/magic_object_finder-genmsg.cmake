# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "magic_object_finder: 7 messages, 0 services")

set(MSG_I_FLAGS "-Imagic_object_finder:/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg;-Iroscpp:/opt/ros/kinetic/share/roscpp/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Igazebo_msgs:/home/jasonsun/ros_ws/src/learning_ros_external_pkgs_kinetic/gazebo_ros_pkgs/gazebo_msgs/msg;-Iactionlib:/opt/ros/kinetic/share/actionlib/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(magic_object_finder_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionResult.msg" NAME_WE)
add_custom_target(_magic_object_finder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "magic_object_finder" "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:magic_object_finder/magicObjectFinderResult:geometry_msgs/PoseStamped:geometry_msgs/Pose:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg" NAME_WE)
add_custom_target(_magic_object_finder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "magic_object_finder" "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg" ""
)

get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg" NAME_WE)
add_custom_target(_magic_object_finder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "magic_object_finder" "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg" ""
)

get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderAction.msg" NAME_WE)
add_custom_target(_magic_object_finder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "magic_object_finder" "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderAction.msg" "geometry_msgs/PoseStamped:std_msgs/Header:magic_object_finder/magicObjectFinderGoal:geometry_msgs/Quaternion:magic_object_finder/magicObjectFinderActionResult:geometry_msgs/Point:magic_object_finder/magicObjectFinderActionGoal:magic_object_finder/magicObjectFinderResult:geometry_msgs/Pose:magic_object_finder/magicObjectFinderActionFeedback:magic_object_finder/magicObjectFinderFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg" NAME_WE)
add_custom_target(_magic_object_finder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "magic_object_finder" "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionGoal.msg" NAME_WE)
add_custom_target(_magic_object_finder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "magic_object_finder" "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:magic_object_finder/magicObjectFinderGoal"
)

get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionFeedback.msg" NAME_WE)
add_custom_target(_magic_object_finder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "magic_object_finder" "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:magic_object_finder/magicObjectFinderFeedback:actionlib_msgs/GoalStatus"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/magic_object_finder
)
_generate_msg_cpp(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/magic_object_finder
)
_generate_msg_cpp(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/magic_object_finder
)
_generate_msg_cpp(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionGoal.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionFeedback.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/magic_object_finder
)
_generate_msg_cpp(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/magic_object_finder
)
_generate_msg_cpp(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/magic_object_finder
)
_generate_msg_cpp(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/magic_object_finder
)

### Generating Services

### Generating Module File
_generate_module_cpp(magic_object_finder
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/magic_object_finder
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(magic_object_finder_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(magic_object_finder_generate_messages magic_object_finder_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionResult.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_cpp _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_cpp _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_cpp _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderAction.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_cpp _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_cpp _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionGoal.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_cpp _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionFeedback.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_cpp _magic_object_finder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(magic_object_finder_gencpp)
add_dependencies(magic_object_finder_gencpp magic_object_finder_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS magic_object_finder_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/magic_object_finder
)
_generate_msg_eus(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/magic_object_finder
)
_generate_msg_eus(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/magic_object_finder
)
_generate_msg_eus(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionGoal.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionFeedback.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/magic_object_finder
)
_generate_msg_eus(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/magic_object_finder
)
_generate_msg_eus(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/magic_object_finder
)
_generate_msg_eus(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/magic_object_finder
)

### Generating Services

### Generating Module File
_generate_module_eus(magic_object_finder
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/magic_object_finder
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(magic_object_finder_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(magic_object_finder_generate_messages magic_object_finder_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionResult.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_eus _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_eus _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_eus _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderAction.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_eus _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_eus _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionGoal.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_eus _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionFeedback.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_eus _magic_object_finder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(magic_object_finder_geneus)
add_dependencies(magic_object_finder_geneus magic_object_finder_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS magic_object_finder_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/magic_object_finder
)
_generate_msg_lisp(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/magic_object_finder
)
_generate_msg_lisp(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/magic_object_finder
)
_generate_msg_lisp(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionGoal.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionFeedback.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/magic_object_finder
)
_generate_msg_lisp(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/magic_object_finder
)
_generate_msg_lisp(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/magic_object_finder
)
_generate_msg_lisp(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/magic_object_finder
)

### Generating Services

### Generating Module File
_generate_module_lisp(magic_object_finder
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/magic_object_finder
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(magic_object_finder_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(magic_object_finder_generate_messages magic_object_finder_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionResult.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_lisp _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_lisp _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_lisp _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderAction.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_lisp _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_lisp _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionGoal.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_lisp _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionFeedback.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_lisp _magic_object_finder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(magic_object_finder_genlisp)
add_dependencies(magic_object_finder_genlisp magic_object_finder_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS magic_object_finder_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/magic_object_finder
)
_generate_msg_nodejs(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/magic_object_finder
)
_generate_msg_nodejs(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/magic_object_finder
)
_generate_msg_nodejs(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionGoal.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionFeedback.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/magic_object_finder
)
_generate_msg_nodejs(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/magic_object_finder
)
_generate_msg_nodejs(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/magic_object_finder
)
_generate_msg_nodejs(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/magic_object_finder
)

### Generating Services

### Generating Module File
_generate_module_nodejs(magic_object_finder
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/magic_object_finder
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(magic_object_finder_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(magic_object_finder_generate_messages magic_object_finder_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionResult.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_nodejs _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_nodejs _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_nodejs _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderAction.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_nodejs _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_nodejs _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionGoal.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_nodejs _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionFeedback.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_nodejs _magic_object_finder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(magic_object_finder_gennodejs)
add_dependencies(magic_object_finder_gennodejs magic_object_finder_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS magic_object_finder_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/magic_object_finder
)
_generate_msg_py(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/magic_object_finder
)
_generate_msg_py(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/magic_object_finder
)
_generate_msg_py(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionGoal.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionFeedback.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/magic_object_finder
)
_generate_msg_py(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/magic_object_finder
)
_generate_msg_py(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/magic_object_finder
)
_generate_msg_py(magic_object_finder
  "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/magic_object_finder
)

### Generating Services

### Generating Module File
_generate_module_py(magic_object_finder
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/magic_object_finder
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(magic_object_finder_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(magic_object_finder_generate_messages magic_object_finder_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionResult.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_py _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderFeedback.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_py _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderGoal.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_py _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderAction.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_py _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderResult.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_py _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionGoal.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_py _magic_object_finder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg/magicObjectFinderActionFeedback.msg" NAME_WE)
add_dependencies(magic_object_finder_generate_messages_py _magic_object_finder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(magic_object_finder_genpy)
add_dependencies(magic_object_finder_genpy magic_object_finder_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS magic_object_finder_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/magic_object_finder)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/magic_object_finder
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_cpp)
  add_dependencies(magic_object_finder_generate_messages_cpp roscpp_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(magic_object_finder_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(magic_object_finder_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET gazebo_msgs_generate_messages_cpp)
  add_dependencies(magic_object_finder_generate_messages_cpp gazebo_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_generate_messages_cpp)
  add_dependencies(magic_object_finder_generate_messages_cpp actionlib_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/magic_object_finder)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/magic_object_finder
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_eus)
  add_dependencies(magic_object_finder_generate_messages_eus roscpp_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(magic_object_finder_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(magic_object_finder_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET gazebo_msgs_generate_messages_eus)
  add_dependencies(magic_object_finder_generate_messages_eus gazebo_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_generate_messages_eus)
  add_dependencies(magic_object_finder_generate_messages_eus actionlib_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/magic_object_finder)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/magic_object_finder
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_lisp)
  add_dependencies(magic_object_finder_generate_messages_lisp roscpp_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(magic_object_finder_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(magic_object_finder_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET gazebo_msgs_generate_messages_lisp)
  add_dependencies(magic_object_finder_generate_messages_lisp gazebo_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_generate_messages_lisp)
  add_dependencies(magic_object_finder_generate_messages_lisp actionlib_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/magic_object_finder)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/magic_object_finder
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_nodejs)
  add_dependencies(magic_object_finder_generate_messages_nodejs roscpp_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(magic_object_finder_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(magic_object_finder_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET gazebo_msgs_generate_messages_nodejs)
  add_dependencies(magic_object_finder_generate_messages_nodejs gazebo_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_generate_messages_nodejs)
  add_dependencies(magic_object_finder_generate_messages_nodejs actionlib_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/magic_object_finder)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/magic_object_finder\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/magic_object_finder
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_py)
  add_dependencies(magic_object_finder_generate_messages_py roscpp_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(magic_object_finder_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(magic_object_finder_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET gazebo_msgs_generate_messages_py)
  add_dependencies(magic_object_finder_generate_messages_py gazebo_msgs_generate_messages_py)
endif()
if(TARGET actionlib_generate_messages_py)
  add_dependencies(magic_object_finder_generate_messages_py actionlib_generate_messages_py)
endif()
