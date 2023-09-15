execute_process(COMMAND "/home/spot/frontier_exploration_ssl_spot/build/audio_utils/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/spot/frontier_exploration_ssl_spot/build/audio_utils/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
