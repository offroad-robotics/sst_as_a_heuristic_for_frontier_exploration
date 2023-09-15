# Install script for directory: /home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ssl_frontier_selection/srv" TYPE FILE FILES
    "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/CheckCollision.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/GetGraded.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/RemoveFrontier.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/StampMap.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/srv/PruneFrontiers.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ssl_frontier_selection/cmake" TYPE FILE FILES "/home/spot/frontier_exploration_ssl_spot/build/ssl_frontier_selection/catkin_generated/installspace/ssl_frontier_selection-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/spot/frontier_exploration_ssl_spot/devel/include/ssl_frontier_selection")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/spot/frontier_exploration_ssl_spot/devel/share/roseus/ros/ssl_frontier_selection")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/spot/frontier_exploration_ssl_spot/devel/share/common-lisp/ros/ssl_frontier_selection")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/spot/frontier_exploration_ssl_spot/devel/share/gennodejs/ros/ssl_frontier_selection")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/spot/frontier_exploration_ssl_spot/devel/lib/python3/dist-packages/ssl_frontier_selection")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/spot/frontier_exploration_ssl_spot/devel/lib/python3/dist-packages/ssl_frontier_selection")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/spot/frontier_exploration_ssl_spot/build/ssl_frontier_selection/catkin_generated/installspace/ssl_frontier_selection.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ssl_frontier_selection/cmake" TYPE FILE FILES "/home/spot/frontier_exploration_ssl_spot/build/ssl_frontier_selection/catkin_generated/installspace/ssl_frontier_selection-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ssl_frontier_selection/cmake" TYPE FILE FILES
    "/home/spot/frontier_exploration_ssl_spot/build/ssl_frontier_selection/catkin_generated/installspace/ssl_frontier_selectionConfig.cmake"
    "/home/spot/frontier_exploration_ssl_spot/build/ssl_frontier_selection/catkin_generated/installspace/ssl_frontier_selectionConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ssl_frontier_selection" TYPE FILE FILES "/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/package.xml")
endif()

