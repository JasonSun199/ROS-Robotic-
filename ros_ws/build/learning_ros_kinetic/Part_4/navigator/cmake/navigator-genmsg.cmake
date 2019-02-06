# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "navigator: 7 messages, 0 services")

set(MSG_I_FLAGS "-Inavigator:/home/jasonsun/ros_ws/devel/share/navigator/msg;-Iroscpp:/opt/ros/kinetic/share/roscpp/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Iactionlib:/opt/ros/kinetic/share/actionlib/cmake/../msg;-Imove_base_msgs:/opt/ros/kinetic/share/move_base_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(navigator_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg" NAME_WE)
add_custom_target(_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigator" "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg" ""
)

get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionFeedback.msg" NAME_WE)
add_custom_target(_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigator" "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:navigator/navigatorFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionResult.msg" NAME_WE)
add_custom_target(_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigator" "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionResult.msg" "navigator/navigatorResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorAction.msg" NAME_WE)
add_custom_target(_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigator" "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorAction.msg" "navigator/navigatorActionResult:actionlib_msgs/GoalID:std_msgs/Header:navigator/navigatorActionFeedback:geometry_msgs/Quaternion:geometry_msgs/Point:navigator/navigatorResult:geometry_msgs/PoseStamped:navigator/navigatorGoal:navigator/navigatorFeedback:geometry_msgs/Pose:navigator/navigatorActionGoal:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg" NAME_WE)
add_custom_target(_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigator" "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg" ""
)

get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionGoal.msg" NAME_WE)
add_custom_target(_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigator" "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionGoal.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:actionlib_msgs/GoalID:navigator/navigatorGoal"
)

get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg" NAME_WE)
add_custom_target(_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigator" "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigator
)
_generate_msg_cpp(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigator
)
_generate_msg_cpp(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigator
)
_generate_msg_cpp(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigator
)
_generate_msg_cpp(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorAction.msg"
  "${MSG_I_FLAGS}"
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigator
)
_generate_msg_cpp(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigator
)
_generate_msg_cpp(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigator
)

### Generating Services

### Generating Module File
_generate_module_cpp(navigator
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigator
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(navigator_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(navigator_generate_messages navigator_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg" NAME_WE)
add_dependencies(navigator_generate_messages_cpp _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionFeedback.msg" NAME_WE)
add_dependencies(navigator_generate_messages_cpp _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionResult.msg" NAME_WE)
add_dependencies(navigator_generate_messages_cpp _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorAction.msg" NAME_WE)
add_dependencies(navigator_generate_messages_cpp _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg" NAME_WE)
add_dependencies(navigator_generate_messages_cpp _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionGoal.msg" NAME_WE)
add_dependencies(navigator_generate_messages_cpp _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg" NAME_WE)
add_dependencies(navigator_generate_messages_cpp _navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navigator_gencpp)
add_dependencies(navigator_gencpp navigator_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navigator_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigator
)
_generate_msg_eus(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigator
)
_generate_msg_eus(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigator
)
_generate_msg_eus(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigator
)
_generate_msg_eus(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorAction.msg"
  "${MSG_I_FLAGS}"
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigator
)
_generate_msg_eus(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigator
)
_generate_msg_eus(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigator
)

### Generating Services

### Generating Module File
_generate_module_eus(navigator
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigator
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(navigator_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(navigator_generate_messages navigator_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg" NAME_WE)
add_dependencies(navigator_generate_messages_eus _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionFeedback.msg" NAME_WE)
add_dependencies(navigator_generate_messages_eus _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionResult.msg" NAME_WE)
add_dependencies(navigator_generate_messages_eus _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorAction.msg" NAME_WE)
add_dependencies(navigator_generate_messages_eus _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg" NAME_WE)
add_dependencies(navigator_generate_messages_eus _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionGoal.msg" NAME_WE)
add_dependencies(navigator_generate_messages_eus _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg" NAME_WE)
add_dependencies(navigator_generate_messages_eus _navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navigator_geneus)
add_dependencies(navigator_geneus navigator_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navigator_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigator
)
_generate_msg_lisp(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigator
)
_generate_msg_lisp(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigator
)
_generate_msg_lisp(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigator
)
_generate_msg_lisp(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorAction.msg"
  "${MSG_I_FLAGS}"
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigator
)
_generate_msg_lisp(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigator
)
_generate_msg_lisp(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigator
)

### Generating Services

### Generating Module File
_generate_module_lisp(navigator
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigator
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(navigator_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(navigator_generate_messages navigator_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg" NAME_WE)
add_dependencies(navigator_generate_messages_lisp _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionFeedback.msg" NAME_WE)
add_dependencies(navigator_generate_messages_lisp _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionResult.msg" NAME_WE)
add_dependencies(navigator_generate_messages_lisp _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorAction.msg" NAME_WE)
add_dependencies(navigator_generate_messages_lisp _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg" NAME_WE)
add_dependencies(navigator_generate_messages_lisp _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionGoal.msg" NAME_WE)
add_dependencies(navigator_generate_messages_lisp _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg" NAME_WE)
add_dependencies(navigator_generate_messages_lisp _navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navigator_genlisp)
add_dependencies(navigator_genlisp navigator_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navigator_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigator
)
_generate_msg_nodejs(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigator
)
_generate_msg_nodejs(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigator
)
_generate_msg_nodejs(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigator
)
_generate_msg_nodejs(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorAction.msg"
  "${MSG_I_FLAGS}"
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigator
)
_generate_msg_nodejs(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigator
)
_generate_msg_nodejs(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigator
)

### Generating Services

### Generating Module File
_generate_module_nodejs(navigator
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigator
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(navigator_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(navigator_generate_messages navigator_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg" NAME_WE)
add_dependencies(navigator_generate_messages_nodejs _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionFeedback.msg" NAME_WE)
add_dependencies(navigator_generate_messages_nodejs _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionResult.msg" NAME_WE)
add_dependencies(navigator_generate_messages_nodejs _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorAction.msg" NAME_WE)
add_dependencies(navigator_generate_messages_nodejs _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg" NAME_WE)
add_dependencies(navigator_generate_messages_nodejs _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionGoal.msg" NAME_WE)
add_dependencies(navigator_generate_messages_nodejs _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg" NAME_WE)
add_dependencies(navigator_generate_messages_nodejs _navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navigator_gennodejs)
add_dependencies(navigator_gennodejs navigator_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navigator_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigator
)
_generate_msg_py(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigator
)
_generate_msg_py(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigator
)
_generate_msg_py(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigator
)
_generate_msg_py(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorAction.msg"
  "${MSG_I_FLAGS}"
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigator
)
_generate_msg_py(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigator
)
_generate_msg_py(navigator
  "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigator
)

### Generating Services

### Generating Module File
_generate_module_py(navigator
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigator
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(navigator_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(navigator_generate_messages navigator_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorResult.msg" NAME_WE)
add_dependencies(navigator_generate_messages_py _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionFeedback.msg" NAME_WE)
add_dependencies(navigator_generate_messages_py _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionResult.msg" NAME_WE)
add_dependencies(navigator_generate_messages_py _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorAction.msg" NAME_WE)
add_dependencies(navigator_generate_messages_py _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorFeedback.msg" NAME_WE)
add_dependencies(navigator_generate_messages_py _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorActionGoal.msg" NAME_WE)
add_dependencies(navigator_generate_messages_py _navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jasonsun/ros_ws/devel/share/navigator/msg/navigatorGoal.msg" NAME_WE)
add_dependencies(navigator_generate_messages_py _navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navigator_genpy)
add_dependencies(navigator_genpy navigator_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navigator_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigator
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_cpp)
  add_dependencies(navigator_generate_messages_cpp roscpp_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(navigator_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(navigator_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(navigator_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_generate_messages_cpp)
  add_dependencies(navigator_generate_messages_cpp actionlib_generate_messages_cpp)
endif()
if(TARGET move_base_msgs_generate_messages_cpp)
  add_dependencies(navigator_generate_messages_cpp move_base_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigator
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_eus)
  add_dependencies(navigator_generate_messages_eus roscpp_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(navigator_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(navigator_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(navigator_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_generate_messages_eus)
  add_dependencies(navigator_generate_messages_eus actionlib_generate_messages_eus)
endif()
if(TARGET move_base_msgs_generate_messages_eus)
  add_dependencies(navigator_generate_messages_eus move_base_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigator
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_lisp)
  add_dependencies(navigator_generate_messages_lisp roscpp_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(navigator_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(navigator_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(navigator_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_generate_messages_lisp)
  add_dependencies(navigator_generate_messages_lisp actionlib_generate_messages_lisp)
endif()
if(TARGET move_base_msgs_generate_messages_lisp)
  add_dependencies(navigator_generate_messages_lisp move_base_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigator
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_nodejs)
  add_dependencies(navigator_generate_messages_nodejs roscpp_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(navigator_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(navigator_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(navigator_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_generate_messages_nodejs)
  add_dependencies(navigator_generate_messages_nodejs actionlib_generate_messages_nodejs)
endif()
if(TARGET move_base_msgs_generate_messages_nodejs)
  add_dependencies(navigator_generate_messages_nodejs move_base_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigator)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigator\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigator
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_py)
  add_dependencies(navigator_generate_messages_py roscpp_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(navigator_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(navigator_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(navigator_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET actionlib_generate_messages_py)
  add_dependencies(navigator_generate_messages_py actionlib_generate_messages_py)
endif()
if(TARGET move_base_msgs_generate_messages_py)
  add_dependencies(navigator_generate_messages_py move_base_msgs_generate_messages_py)
endif()
