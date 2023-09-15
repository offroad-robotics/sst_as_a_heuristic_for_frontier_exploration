# Install script for directory: /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/microstrain_mips/msg" TYPE FILE FILES "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/msg/status_msg.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/microstrain_mips/srv" TYPE FILE FILES
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBias.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBias.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetHardIronValues.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSoftIronMatrix.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetComplementaryFilter.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterEuler.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetFilterHeading.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelBiasModel.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelAdaptiveVals.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameTrans.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetSensorVehicleFrameOffset.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetReferencePosition.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetConingScullingComp.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetEstimationControlFlags.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetDynamicsMode.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetZeroAngleUpdateThreshold.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetTareOrientation.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelNoise.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroNoise.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagNoise.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetGyroBiasModel.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetAccelAdaptiveVals.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagAdaptiveVals.srv"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/srv/SetMagDipAdaptiveVals.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/microstrain_mips/cmake" TYPE FILE FILES "/home/spot/frontier_exploration_ssl_spot/build/microstrain_mips/catkin_generated/installspace/microstrain_mips-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/spot/frontier_exploration_ssl_spot/devel/include/microstrain_mips")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/spot/frontier_exploration_ssl_spot/devel/share/roseus/ros/microstrain_mips")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/spot/frontier_exploration_ssl_spot/devel/share/common-lisp/ros/microstrain_mips")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/spot/frontier_exploration_ssl_spot/devel/share/gennodejs/ros/microstrain_mips")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/spot/frontier_exploration_ssl_spot/devel/lib/python3/dist-packages/microstrain_mips")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/spot/frontier_exploration_ssl_spot/devel/lib/python3/dist-packages/microstrain_mips")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/spot/frontier_exploration_ssl_spot/build/microstrain_mips/catkin_generated/installspace/microstrain_mips.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/microstrain_mips/cmake" TYPE FILE FILES "/home/spot/frontier_exploration_ssl_spot/build/microstrain_mips/catkin_generated/installspace/microstrain_mips-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/microstrain_mips/cmake" TYPE FILE FILES
    "/home/spot/frontier_exploration_ssl_spot/build/microstrain_mips/catkin_generated/installspace/microstrain_mipsConfig.cmake"
    "/home/spot/frontier_exploration_ssl_spot/build/microstrain_mips/catkin_generated/installspace/microstrain_mipsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/microstrain_mips" TYPE FILE FILES "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmicrostrain_mips.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmicrostrain_mips.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmicrostrain_mips.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmicrostrain_mips.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmicrostrain_mips.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmicrostrain_mips.so"
         OLD_RPATH "/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmicrostrain_mips.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/microstrain_mips/microstrain_mips_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/microstrain_mips/microstrain_mips_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/microstrain_mips/microstrain_mips_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/microstrain_mips" TYPE EXECUTABLE FILES "/home/spot/frontier_exploration_ssl_spot/devel/lib/microstrain_mips/microstrain_mips_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/microstrain_mips/microstrain_mips_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/microstrain_mips/microstrain_mips_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/microstrain_mips/microstrain_mips_node"
         OLD_RPATH "/home/spot/frontier_exploration_ssl_spot/devel/lib:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/microstrain_mips/microstrain_mips_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/microstrain_mips" TYPE DIRECTORY FILES
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/launch"
    "/home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/config"
    )
endif()

