# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ssl_frontier_selection: 0 messages, 5 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ssl_frontier_selection_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/CheckCollision.srv" NAME_WE)
add_custom_target(_ssl_frontier_selection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ssl_frontier_selection" "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/CheckCollision.srv" "std_msgs/Header:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/GetGraded.srv" NAME_WE)
add_custom_target(_ssl_frontier_selection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ssl_frontier_selection" "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/GetGraded.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/RemoveFrontier.srv" NAME_WE)
add_custom_target(_ssl_frontier_selection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ssl_frontier_selection" "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/RemoveFrontier.srv" ""
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/StampMap.srv" NAME_WE)
add_custom_target(_ssl_frontier_selection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ssl_frontier_selection" "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/StampMap.srv" ""
)

get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/PruneFrontiers.srv" NAME_WE)
add_custom_target(_ssl_frontier_selection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ssl_frontier_selection" "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/PruneFrontiers.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/CheckCollision.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_cpp(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/GetGraded.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_cpp(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/RemoveFrontier.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_cpp(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/StampMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_cpp(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/PruneFrontiers.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ssl_frontier_selection
)

### Generating Module File
_generate_module_cpp(ssl_frontier_selection
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ssl_frontier_selection
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ssl_frontier_selection_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ssl_frontier_selection_generate_messages ssl_frontier_selection_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/CheckCollision.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_cpp _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/GetGraded.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_cpp _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/RemoveFrontier.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_cpp _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/StampMap.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_cpp _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/PruneFrontiers.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_cpp _ssl_frontier_selection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ssl_frontier_selection_gencpp)
add_dependencies(ssl_frontier_selection_gencpp ssl_frontier_selection_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ssl_frontier_selection_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/CheckCollision.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_eus(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/GetGraded.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_eus(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/RemoveFrontier.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_eus(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/StampMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_eus(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/PruneFrontiers.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ssl_frontier_selection
)

### Generating Module File
_generate_module_eus(ssl_frontier_selection
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ssl_frontier_selection
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ssl_frontier_selection_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ssl_frontier_selection_generate_messages ssl_frontier_selection_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/CheckCollision.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_eus _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/GetGraded.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_eus _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/RemoveFrontier.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_eus _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/StampMap.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_eus _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/PruneFrontiers.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_eus _ssl_frontier_selection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ssl_frontier_selection_geneus)
add_dependencies(ssl_frontier_selection_geneus ssl_frontier_selection_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ssl_frontier_selection_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/CheckCollision.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_lisp(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/GetGraded.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_lisp(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/RemoveFrontier.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_lisp(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/StampMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_lisp(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/PruneFrontiers.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ssl_frontier_selection
)

### Generating Module File
_generate_module_lisp(ssl_frontier_selection
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ssl_frontier_selection
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ssl_frontier_selection_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ssl_frontier_selection_generate_messages ssl_frontier_selection_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/CheckCollision.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_lisp _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/GetGraded.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_lisp _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/RemoveFrontier.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_lisp _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/StampMap.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_lisp _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/PruneFrontiers.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_lisp _ssl_frontier_selection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ssl_frontier_selection_genlisp)
add_dependencies(ssl_frontier_selection_genlisp ssl_frontier_selection_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ssl_frontier_selection_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/CheckCollision.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_nodejs(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/GetGraded.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_nodejs(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/RemoveFrontier.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_nodejs(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/StampMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_nodejs(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/PruneFrontiers.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ssl_frontier_selection
)

### Generating Module File
_generate_module_nodejs(ssl_frontier_selection
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ssl_frontier_selection
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ssl_frontier_selection_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ssl_frontier_selection_generate_messages ssl_frontier_selection_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/CheckCollision.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_nodejs _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/GetGraded.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_nodejs _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/RemoveFrontier.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_nodejs _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/StampMap.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_nodejs _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/PruneFrontiers.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_nodejs _ssl_frontier_selection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ssl_frontier_selection_gennodejs)
add_dependencies(ssl_frontier_selection_gennodejs ssl_frontier_selection_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ssl_frontier_selection_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/CheckCollision.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_py(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/GetGraded.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_py(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/RemoveFrontier.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_py(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/StampMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ssl_frontier_selection
)
_generate_srv_py(ssl_frontier_selection
  "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/PruneFrontiers.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ssl_frontier_selection
)

### Generating Module File
_generate_module_py(ssl_frontier_selection
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ssl_frontier_selection
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ssl_frontier_selection_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ssl_frontier_selection_generate_messages ssl_frontier_selection_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/CheckCollision.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_py _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/GetGraded.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_py _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/RemoveFrontier.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_py _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/StampMap.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_py _ssl_frontier_selection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/PruneFrontiers.srv" NAME_WE)
add_dependencies(ssl_frontier_selection_generate_messages_py _ssl_frontier_selection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ssl_frontier_selection_genpy)
add_dependencies(ssl_frontier_selection_genpy ssl_frontier_selection_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ssl_frontier_selection_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ssl_frontier_selection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ssl_frontier_selection
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ssl_frontier_selection_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ssl_frontier_selection_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ssl_frontier_selection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ssl_frontier_selection
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ssl_frontier_selection_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ssl_frontier_selection_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ssl_frontier_selection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ssl_frontier_selection
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ssl_frontier_selection_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ssl_frontier_selection_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ssl_frontier_selection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ssl_frontier_selection
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ssl_frontier_selection_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ssl_frontier_selection_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ssl_frontier_selection)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ssl_frontier_selection\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ssl_frontier_selection
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ssl_frontier_selection_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ssl_frontier_selection_generate_messages_py geometry_msgs_generate_messages_py)
endif()
