cmake_minimum_required(VERSION 3.0.2)
project(ssl_frontier_selection)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  geometry_msgs
  message_generation
  std_msgs
  cv_bridge
  image_transport
  
)

find_package(OpenCV REQUIRED)

add_service_files(
  FILES
  CheckCollision.srv
  GetGraded.srv
  RemoveFrontier.srv
  StampMap.srv
  PruneFrontiers.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)

catkin_package()

include_directories(
    ${catkin_INCLUDE_DIRS}
    ${OpenCV_INCLUDE_DIRS}
  )

add_executable(depth_limiter src/depth_limiter.cpp)
target_link_libraries(depth_limiter ${catkin_LIBRARIES} ${OpenCV_LIBRARIES})



