cmake_minimum_required(VERSION 2.8.3)
project(points_preprocessor)


find_package(catkin REQUIRED COMPONENTS
  cv_bridge
  pcl_conversions
  pcl_ros
  roscpp
  roslint
  sensor_msgs
  std_msgs
  tf
  tf2
  tf2_eigen
  tf2_ros
  velodyne_pointcloud
)

catkin_package()

set(ROSLINT_CPP_OPTS "--filter=-build/c++14")
roslint_cpp(
  nodes/ray_ground_filter/ray_ground_filter.cpp
  nodes/ray_ground_filter/ray_ground_filter_main.cpp
  include/points_preprocessor/ray_ground_filter/ray_ground_filter.h
)

find_package(Qt5Core REQUIRED)
find_package(OpenCV REQUIRED)
find_package(PCL 1.7 REQUIRED)
find_package(OpenMP)

# Resolve system dependency on yaml-cpp, which apparently does not
# provide a CMake find_package() module.
find_package(PkgConfig REQUIRED)
pkg_check_modules(YAML_CPP REQUIRED yaml-cpp)
find_path(YAML_CPP_INCLUDE_DIR NAMES yaml_cpp.h PATHS ${YAML_CPP_INCLUDE_DIRS})
find_library(YAML_CPP_LIBRARY NAMES YAML_CPP PATHS ${YAML_CPP_LIBRARY_DIRS})
link_directories(${YAML_CPP_LIBRARY_DIRS})

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

SET(CMAKE_CXX_FLAGS "-O2 -g -Wall ${CMAKE_CXX_FLAGS}")

link_directories(${PCL_LIBRARY_DIRS})



# Points Concat filter
add_executable(points_concat_filter
  nodes/points_concat_filter/points_concat_filter.cpp
)

target_include_directories(points_concat_filter PRIVATE
  ${PCL_INCLUDE_DIRS}
)

target_link_libraries(points_concat_filter
  ${catkin_LIBRARIES}
  ${PCL_LIBRARIES}
  ${YAML_CPP_LIBRARIES}
)

add_dependencies(points_concat_filter ${catkin_EXPORTED_TARGETS})



### Unit Tests ###
if (CATKIN_ENABLE_TESTING)
    find_package(rostest REQUIRED)
    find_package(roslaunch REQUIRED)

    add_rostest_gtest(test_points_preprocessor
      test/test_points_preprocessor.test
      test/src/test_points_preprocessor.cpp)
    target_include_directories(test_points_preprocessor PRIVATE
      nodes/ray_ground_filter/include
      test/include)
    target_link_libraries(test_points_preprocessor
      ray_ground_filter_lib
      ${catkin_LIBRARIES})
endif ()

install(
  TARGETS
    
    points_concat_filter
    
    
    
    
    
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY include/
  DESTINATION ${CATKIN_GLOBAL_INCLUDE_DESTINATION}
  PATTERN ".svn" EXCLUDE
)
install(DIRECTORY launch/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
  PATTERN ".svn" EXCLUDE
)

if (CATKIN_ENABLE_TESTING)
  roslint_add_test()
endif()
