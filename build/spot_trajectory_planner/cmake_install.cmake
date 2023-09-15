# Install script for directory: /home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/spot/frontier_exploration_ssl_spot/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spot_trajectory_planner/srv" TYPE FILE FILES
    "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/AddSavePoint.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/srv/BuildTrajectory.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spot_trajectory_planner/action" TYPE FILE FILES "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/action/ExecuteTrajectory.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spot_trajectory_planner/msg" TYPE FILE FILES
    "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryAction.msg"
    "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionGoal.msg"
    "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionResult.msg"
    "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryActionFeedback.msg"
    "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryGoal.msg"
    "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryResult.msg"
    "/home/spot/frontier_exploration_ssl_spot/devel/share/spot_trajectory_planner/msg/ExecuteTrajectoryFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spot_trajectory_planner/cmake" TYPE FILE FILES "/home/spot/frontier_exploration_ssl_spot/build/spot_trajectory_planner/catkin_generated/installspace/spot_trajectory_planner-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/spot/frontier_exploration_ssl_spot/devel/include/spot_trajectory_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/spot/frontier_exploration_ssl_spot/devel/share/roseus/ros/spot_trajectory_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/spot/frontier_exploration_ssl_spot/devel/share/common-lisp/ros/spot_trajectory_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/spot/frontier_exploration_ssl_spot/devel/share/gennodejs/ros/spot_trajectory_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/spot/frontier_exploration_ssl_spot/devel/lib/python3/dist-packages/spot_trajectory_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/spot/frontier_exploration_ssl_spot/devel/lib/python3/dist-packages/spot_trajectory_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/spot/frontier_exploration_ssl_spot/build/spot_trajectory_planner/catkin_generated/installspace/spot_trajectory_planner.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spot_trajectory_planner/cmake" TYPE FILE FILES "/home/spot/frontier_exploration_ssl_spot/build/spot_trajectory_planner/catkin_generated/installspace/spot_trajectory_planner-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spot_trajectory_planner/cmake" TYPE FILE FILES
    "/home/spot/frontier_exploration_ssl_spot/build/spot_trajectory_planner/catkin_generated/installspace/spot_trajectory_plannerConfig.cmake"
    "/home/spot/frontier_exploration_ssl_spot/build/spot_trajectory_planner/catkin_generated/installspace/spot_trajectory_plannerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spot_trajectory_planner" TYPE FILE FILES "/home/spot/frontier_exploration_ssl_spot/src/spot_trajectory_planner/package.xml")
endif()

