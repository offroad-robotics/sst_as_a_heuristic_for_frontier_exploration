# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "spot_trajectory_planner: 7 messages, 2 services")

set(MSG_I_FLAGS "-Ispot_trajectory_planner:/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/noetic/share/visualization_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(spot_trajectory_planner_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryAction.msg" NAME_WE)
add_custom_target(_spot_trajectory_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_trajectory_planner" "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryAction.msg" "actionlib_msgs/GoalID:geometry_msgs/Quaternion:spot_trajectory_planner/ExecuteTrajectoryActionGoal:spot_trajectory_planner/ExecuteTrajectoryActionResult:std_msgs/Header:spot_trajectory_planner/ExecuteTrajectoryActionFeedback:spot_trajectory_planner/ExecuteTrajectoryResult:spot_trajectory_planner/ExecuteTrajectoryFeedback:geometry_msgs/Point:geometry_msgs/Pose:spot_trajectory_planner/ExecuteTrajectoryGoal:actionlib_msgs/GoalStatus:geometry_msgs/PoseArray"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg" NAME_WE)
add_custom_target(_spot_trajectory_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_trajectory_planner" "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg" "actionlib_msgs/GoalID:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point:geometry_msgs/Pose:spot_trajectory_planner/ExecuteTrajectoryGoal:geometry_msgs/PoseArray"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg" NAME_WE)
add_custom_target(_spot_trajectory_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_trajectory_planner" "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg" "actionlib_msgs/GoalID:geometry_msgs/Quaternion:std_msgs/Header:spot_trajectory_planner/ExecuteTrajectoryResult:geometry_msgs/Point:geometry_msgs/Pose:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg" NAME_WE)
add_custom_target(_spot_trajectory_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_trajectory_planner" "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg" "actionlib_msgs/GoalID:spot_trajectory_planner/ExecuteTrajectoryFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg" NAME_WE)
add_custom_target(_spot_trajectory_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_trajectory_planner" "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg" "geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/PoseArray"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg" NAME_WE)
add_custom_target(_spot_trajectory_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_trajectory_planner" "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg" NAME_WE)
add_custom_target(_spot_trajectory_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_trajectory_planner" "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg" ""
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/AddSavePoint.srv" NAME_WE)
add_custom_target(_spot_trajectory_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_trajectory_planner" "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/AddSavePoint.srv" "geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/BuildTrajectory.srv" NAME_WE)
add_custom_target(_spot_trajectory_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_trajectory_planner" "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/BuildTrajectory.srv" "geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/PoseArray"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_cpp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_cpp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_cpp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_cpp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_cpp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_cpp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_trajectory_planner
)

### Generating Services
_generate_srv_cpp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/AddSavePoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_trajectory_planner
)
_generate_srv_cpp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/BuildTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_trajectory_planner
)

### Generating Module File
_generate_module_cpp(spot_trajectory_planner
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_trajectory_planner
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(spot_trajectory_planner_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(spot_trajectory_planner_generate_messages spot_trajectory_planner_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryAction.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_cpp _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_cpp _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_cpp _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_cpp _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_cpp _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_cpp _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_cpp _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/AddSavePoint.srv" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_cpp _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/BuildTrajectory.srv" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_cpp _spot_trajectory_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spot_trajectory_planner_gencpp)
add_dependencies(spot_trajectory_planner_gencpp spot_trajectory_planner_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spot_trajectory_planner_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_eus(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_eus(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_eus(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_eus(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_eus(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_eus(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_trajectory_planner
)

### Generating Services
_generate_srv_eus(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/AddSavePoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_trajectory_planner
)
_generate_srv_eus(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/BuildTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_trajectory_planner
)

### Generating Module File
_generate_module_eus(spot_trajectory_planner
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_trajectory_planner
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(spot_trajectory_planner_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(spot_trajectory_planner_generate_messages spot_trajectory_planner_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryAction.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_eus _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_eus _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_eus _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_eus _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_eus _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_eus _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_eus _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/AddSavePoint.srv" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_eus _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/BuildTrajectory.srv" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_eus _spot_trajectory_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spot_trajectory_planner_geneus)
add_dependencies(spot_trajectory_planner_geneus spot_trajectory_planner_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spot_trajectory_planner_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_lisp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_lisp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_lisp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_lisp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_lisp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_lisp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_trajectory_planner
)

### Generating Services
_generate_srv_lisp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/AddSavePoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_trajectory_planner
)
_generate_srv_lisp(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/BuildTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_trajectory_planner
)

### Generating Module File
_generate_module_lisp(spot_trajectory_planner
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_trajectory_planner
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(spot_trajectory_planner_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(spot_trajectory_planner_generate_messages spot_trajectory_planner_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryAction.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_lisp _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_lisp _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_lisp _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_lisp _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_lisp _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_lisp _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_lisp _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/AddSavePoint.srv" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_lisp _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/BuildTrajectory.srv" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_lisp _spot_trajectory_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spot_trajectory_planner_genlisp)
add_dependencies(spot_trajectory_planner_genlisp spot_trajectory_planner_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spot_trajectory_planner_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_nodejs(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_nodejs(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_nodejs(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_nodejs(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_nodejs(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_nodejs(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_trajectory_planner
)

### Generating Services
_generate_srv_nodejs(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/AddSavePoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_trajectory_planner
)
_generate_srv_nodejs(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/BuildTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_trajectory_planner
)

### Generating Module File
_generate_module_nodejs(spot_trajectory_planner
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_trajectory_planner
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(spot_trajectory_planner_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(spot_trajectory_planner_generate_messages spot_trajectory_planner_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryAction.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_nodejs _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_nodejs _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_nodejs _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_nodejs _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_nodejs _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_nodejs _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_nodejs _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/AddSavePoint.srv" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_nodejs _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/BuildTrajectory.srv" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_nodejs _spot_trajectory_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spot_trajectory_planner_gennodejs)
add_dependencies(spot_trajectory_planner_gennodejs spot_trajectory_planner_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spot_trajectory_planner_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_py(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_py(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_py(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_py(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_py(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_trajectory_planner
)
_generate_msg_py(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_trajectory_planner
)

### Generating Services
_generate_srv_py(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/AddSavePoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_trajectory_planner
)
_generate_srv_py(spot_trajectory_planner
  "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/BuildTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_trajectory_planner
)

### Generating Module File
_generate_module_py(spot_trajectory_planner
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_trajectory_planner
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(spot_trajectory_planner_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(spot_trajectory_planner_generate_messages spot_trajectory_planner_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryAction.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_py _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_py _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_py _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_py _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_py _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_py _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_py _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/AddSavePoint.srv" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_py _spot_trajectory_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/BuildTrajectory.srv" NAME_WE)
add_dependencies(spot_trajectory_planner_generate_messages_py _spot_trajectory_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spot_trajectory_planner_genpy)
add_dependencies(spot_trajectory_planner_genpy spot_trajectory_planner_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spot_trajectory_planner_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_trajectory_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_trajectory_planner
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(spot_trajectory_planner_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(spot_trajectory_planner_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(spot_trajectory_planner_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(spot_trajectory_planner_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_trajectory_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_trajectory_planner
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(spot_trajectory_planner_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(spot_trajectory_planner_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(spot_trajectory_planner_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(spot_trajectory_planner_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_trajectory_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_trajectory_planner
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(spot_trajectory_planner_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(spot_trajectory_planner_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(spot_trajectory_planner_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(spot_trajectory_planner_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_trajectory_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_trajectory_planner
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(spot_trajectory_planner_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(spot_trajectory_planner_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(spot_trajectory_planner_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(spot_trajectory_planner_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_trajectory_planner)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_trajectory_planner\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_trajectory_planner
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(spot_trajectory_planner_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(spot_trajectory_planner_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(spot_trajectory_planner_generate_messages_py visualization_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(spot_trajectory_planner_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
