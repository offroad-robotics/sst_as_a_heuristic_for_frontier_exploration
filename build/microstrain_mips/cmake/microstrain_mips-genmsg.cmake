# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "microstrain_mips: 1 messages, 24 services")

set(MSG_I_FLAGS "-Imicrostrain_mips:/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(microstrain_mips_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/msg/status_msg.msg" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/msg/status_msg.msg" ""
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBias.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBias.srv" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBias.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBias.srv" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetHardIronValues.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetHardIronValues.srv" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSoftIronMatrix.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSoftIronMatrix.srv" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetComplementaryFilter.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetComplementaryFilter.srv" ""
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterEuler.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterEuler.srv" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterHeading.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterHeading.srv" ""
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBiasModel.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBiasModel.srv" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelAdaptiveVals.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelAdaptiveVals.srv" ""
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameTrans.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameTrans.srv" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameOffset.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameOffset.srv" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetReferencePosition.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetReferencePosition.srv" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetConingScullingComp.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetConingScullingComp.srv" ""
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetEstimationControlFlags.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetEstimationControlFlags.srv" ""
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetDynamicsMode.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetDynamicsMode.srv" ""
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetZeroAngleUpdateThreshold.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetZeroAngleUpdateThreshold.srv" ""
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetTareOrientation.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetTareOrientation.srv" ""
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelNoise.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelNoise.srv" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroNoise.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroNoise.srv" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagNoise.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagNoise.srv" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBiasModel.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBiasModel.srv" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagAdaptiveVals.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagAdaptiveVals.srv" ""
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagDipAdaptiveVals.srv" NAME_WE)
add_custom_target(_microstrain_mips_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "microstrain_mips" "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagDipAdaptiveVals.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/msg/status_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)

### Generating Services
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetHardIronValues.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSoftIronMatrix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetComplementaryFilter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterEuler.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterHeading.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBiasModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelAdaptiveVals.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameTrans.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameOffset.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetReferencePosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetConingScullingComp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetEstimationControlFlags.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetDynamicsMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetZeroAngleUpdateThreshold.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetTareOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelNoise.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroNoise.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagNoise.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBiasModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagAdaptiveVals.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_cpp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagDipAdaptiveVals.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
)

### Generating Module File
_generate_module_cpp(microstrain_mips
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(microstrain_mips_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(microstrain_mips_generate_messages microstrain_mips_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/msg/status_msg.msg" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBias.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBias.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetHardIronValues.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSoftIronMatrix.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetComplementaryFilter.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterEuler.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterHeading.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBiasModel.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelAdaptiveVals.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameTrans.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameOffset.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetReferencePosition.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetConingScullingComp.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetEstimationControlFlags.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetDynamicsMode.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetZeroAngleUpdateThreshold.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetTareOrientation.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelNoise.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroNoise.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagNoise.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBiasModel.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagAdaptiveVals.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagDipAdaptiveVals.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_cpp _microstrain_mips_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(microstrain_mips_gencpp)
add_dependencies(microstrain_mips_gencpp microstrain_mips_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS microstrain_mips_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/msg/status_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)

### Generating Services
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetHardIronValues.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSoftIronMatrix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetComplementaryFilter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterEuler.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterHeading.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBiasModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelAdaptiveVals.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameTrans.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameOffset.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetReferencePosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetConingScullingComp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetEstimationControlFlags.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetDynamicsMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetZeroAngleUpdateThreshold.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetTareOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelNoise.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroNoise.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagNoise.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBiasModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagAdaptiveVals.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)
_generate_srv_eus(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagDipAdaptiveVals.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
)

### Generating Module File
_generate_module_eus(microstrain_mips
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(microstrain_mips_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(microstrain_mips_generate_messages microstrain_mips_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/msg/status_msg.msg" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBias.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBias.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetHardIronValues.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSoftIronMatrix.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetComplementaryFilter.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterEuler.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterHeading.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBiasModel.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelAdaptiveVals.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameTrans.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameOffset.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetReferencePosition.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetConingScullingComp.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetEstimationControlFlags.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetDynamicsMode.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetZeroAngleUpdateThreshold.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetTareOrientation.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelNoise.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroNoise.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagNoise.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBiasModel.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagAdaptiveVals.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagDipAdaptiveVals.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_eus _microstrain_mips_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(microstrain_mips_geneus)
add_dependencies(microstrain_mips_geneus microstrain_mips_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS microstrain_mips_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/msg/status_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)

### Generating Services
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetHardIronValues.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSoftIronMatrix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetComplementaryFilter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterEuler.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterHeading.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBiasModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelAdaptiveVals.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameTrans.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameOffset.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetReferencePosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetConingScullingComp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetEstimationControlFlags.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetDynamicsMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetZeroAngleUpdateThreshold.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetTareOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelNoise.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroNoise.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagNoise.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBiasModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagAdaptiveVals.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)
_generate_srv_lisp(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagDipAdaptiveVals.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
)

### Generating Module File
_generate_module_lisp(microstrain_mips
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(microstrain_mips_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(microstrain_mips_generate_messages microstrain_mips_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/msg/status_msg.msg" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBias.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBias.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetHardIronValues.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSoftIronMatrix.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetComplementaryFilter.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterEuler.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterHeading.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBiasModel.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelAdaptiveVals.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameTrans.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameOffset.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetReferencePosition.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetConingScullingComp.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetEstimationControlFlags.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetDynamicsMode.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetZeroAngleUpdateThreshold.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetTareOrientation.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelNoise.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroNoise.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagNoise.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBiasModel.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagAdaptiveVals.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagDipAdaptiveVals.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_lisp _microstrain_mips_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(microstrain_mips_genlisp)
add_dependencies(microstrain_mips_genlisp microstrain_mips_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS microstrain_mips_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/msg/status_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)

### Generating Services
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetHardIronValues.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSoftIronMatrix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetComplementaryFilter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterEuler.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterHeading.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBiasModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelAdaptiveVals.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameTrans.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameOffset.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetReferencePosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetConingScullingComp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetEstimationControlFlags.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetDynamicsMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetZeroAngleUpdateThreshold.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetTareOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelNoise.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroNoise.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagNoise.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBiasModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagAdaptiveVals.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)
_generate_srv_nodejs(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagDipAdaptiveVals.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
)

### Generating Module File
_generate_module_nodejs(microstrain_mips
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(microstrain_mips_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(microstrain_mips_generate_messages microstrain_mips_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/msg/status_msg.msg" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBias.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBias.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetHardIronValues.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSoftIronMatrix.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetComplementaryFilter.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterEuler.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterHeading.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBiasModel.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelAdaptiveVals.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameTrans.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameOffset.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetReferencePosition.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetConingScullingComp.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetEstimationControlFlags.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetDynamicsMode.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetZeroAngleUpdateThreshold.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetTareOrientation.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelNoise.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroNoise.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagNoise.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBiasModel.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagAdaptiveVals.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagDipAdaptiveVals.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_nodejs _microstrain_mips_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(microstrain_mips_gennodejs)
add_dependencies(microstrain_mips_gennodejs microstrain_mips_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS microstrain_mips_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/msg/status_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)

### Generating Services
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetHardIronValues.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSoftIronMatrix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetComplementaryFilter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterEuler.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterHeading.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBiasModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelAdaptiveVals.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameTrans.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameOffset.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetReferencePosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetConingScullingComp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetEstimationControlFlags.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetDynamicsMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetZeroAngleUpdateThreshold.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetTareOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelNoise.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroNoise.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagNoise.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBiasModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagAdaptiveVals.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)
_generate_srv_py(microstrain_mips
  "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagDipAdaptiveVals.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
)

### Generating Module File
_generate_module_py(microstrain_mips
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(microstrain_mips_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(microstrain_mips_generate_messages microstrain_mips_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/msg/status_msg.msg" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBias.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBias.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetHardIronValues.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSoftIronMatrix.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetComplementaryFilter.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterEuler.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterHeading.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBiasModel.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelAdaptiveVals.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameTrans.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameOffset.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetReferencePosition.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetConingScullingComp.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetEstimationControlFlags.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetDynamicsMode.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetZeroAngleUpdateThreshold.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetTareOrientation.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelNoise.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroNoise.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagNoise.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBiasModel.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagAdaptiveVals.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagDipAdaptiveVals.srv" NAME_WE)
add_dependencies(microstrain_mips_generate_messages_py _microstrain_mips_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(microstrain_mips_genpy)
add_dependencies(microstrain_mips_genpy microstrain_mips_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS microstrain_mips_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/microstrain_mips
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(microstrain_mips_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(microstrain_mips_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/microstrain_mips
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(microstrain_mips_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(microstrain_mips_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/microstrain_mips
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(microstrain_mips_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(microstrain_mips_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/microstrain_mips
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(microstrain_mips_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(microstrain_mips_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/microstrain_mips
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(microstrain_mips_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(microstrain_mips_generate_messages_py geometry_msgs_generate_messages_py)
endif()
