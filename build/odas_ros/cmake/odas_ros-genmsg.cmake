# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "odas_ros: 4 messages, 0 services")

set(MSG_I_FLAGS "-Iodas_ros:/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(odas_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSst.msg" NAME_WE)
add_custom_target(_odas_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "odas_ros" "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSst.msg" ""
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSstArrayStamped.msg" NAME_WE)
add_custom_target(_odas_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "odas_ros" "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSstArrayStamped.msg" "std_msgs/Header:odas_ros/OdasSst"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSsl.msg" NAME_WE)
add_custom_target(_odas_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "odas_ros" "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSsl.msg" ""
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSslArrayStamped.msg" NAME_WE)
add_custom_target(_odas_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "odas_ros" "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSslArrayStamped.msg" "odas_ros/OdasSsl:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSst.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odas_ros
)
_generate_msg_cpp(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSstArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSst.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odas_ros
)
_generate_msg_cpp(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSsl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odas_ros
)
_generate_msg_cpp(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSslArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSsl.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odas_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(odas_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odas_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(odas_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(odas_ros_generate_messages odas_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSst.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_cpp _odas_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSstArrayStamped.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_cpp _odas_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSsl.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_cpp _odas_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSslArrayStamped.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_cpp _odas_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odas_ros_gencpp)
add_dependencies(odas_ros_gencpp odas_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odas_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSst.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odas_ros
)
_generate_msg_eus(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSstArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSst.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odas_ros
)
_generate_msg_eus(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSsl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odas_ros
)
_generate_msg_eus(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSslArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSsl.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odas_ros
)

### Generating Services

### Generating Module File
_generate_module_eus(odas_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odas_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(odas_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(odas_ros_generate_messages odas_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSst.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_eus _odas_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSstArrayStamped.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_eus _odas_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSsl.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_eus _odas_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSslArrayStamped.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_eus _odas_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odas_ros_geneus)
add_dependencies(odas_ros_geneus odas_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odas_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSst.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odas_ros
)
_generate_msg_lisp(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSstArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSst.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odas_ros
)
_generate_msg_lisp(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSsl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odas_ros
)
_generate_msg_lisp(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSslArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSsl.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odas_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(odas_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odas_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(odas_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(odas_ros_generate_messages odas_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSst.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_lisp _odas_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSstArrayStamped.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_lisp _odas_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSsl.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_lisp _odas_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSslArrayStamped.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_lisp _odas_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odas_ros_genlisp)
add_dependencies(odas_ros_genlisp odas_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odas_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSst.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odas_ros
)
_generate_msg_nodejs(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSstArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSst.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odas_ros
)
_generate_msg_nodejs(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSsl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odas_ros
)
_generate_msg_nodejs(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSslArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSsl.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odas_ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(odas_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odas_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(odas_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(odas_ros_generate_messages odas_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSst.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_nodejs _odas_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSstArrayStamped.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_nodejs _odas_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSsl.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_nodejs _odas_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSslArrayStamped.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_nodejs _odas_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odas_ros_gennodejs)
add_dependencies(odas_ros_gennodejs odas_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odas_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSst.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odas_ros
)
_generate_msg_py(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSstArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSst.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odas_ros
)
_generate_msg_py(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSsl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odas_ros
)
_generate_msg_py(odas_ros
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSslArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSsl.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odas_ros
)

### Generating Services

### Generating Module File
_generate_module_py(odas_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odas_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(odas_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(odas_ros_generate_messages odas_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSst.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_py _odas_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSstArrayStamped.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_py _odas_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSsl.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_py _odas_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/msg/OdasSslArrayStamped.msg" NAME_WE)
add_dependencies(odas_ros_generate_messages_py _odas_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odas_ros_genpy)
add_dependencies(odas_ros_genpy odas_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odas_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odas_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odas_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(odas_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odas_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odas_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(odas_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odas_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odas_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(odas_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odas_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odas_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(odas_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odas_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odas_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odas_ros
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odas_ros")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odas_ros
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(odas_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
