# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/spot/frontier_exploration_ssl_spot/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/spot/frontier_exploration_ssl_spot/build

# Include any dependencies generated for this target.
include odas_ros/CMakeFiles/odas_core_node.dir/depend.make

# Include the progress variables for this target.
include odas_ros/CMakeFiles/odas_core_node.dir/progress.make

# Include the compile flags for this target's objects.
include odas_ros/CMakeFiles/odas_core_node.dir/flags.make

odas_ros/CMakeFiles/odas_core_node.dir/src/odas_core_node.cpp.o: odas_ros/CMakeFiles/odas_core_node.dir/flags.make
odas_ros/CMakeFiles/odas_core_node.dir/src/odas_core_node.cpp.o: /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas_core_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object odas_ros/CMakeFiles/odas_core_node.dir/src/odas_core_node.cpp.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/odas_core_node.dir/src/odas_core_node.cpp.o -c /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas_core_node.cpp

odas_ros/CMakeFiles/odas_core_node.dir/src/odas_core_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/odas_core_node.dir/src/odas_core_node.cpp.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas_core_node.cpp > CMakeFiles/odas_core_node.dir/src/odas_core_node.cpp.i

odas_ros/CMakeFiles/odas_core_node.dir/src/odas_core_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/odas_core_node.dir/src/odas_core_node.cpp.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas_core_node.cpp -o CMakeFiles/odas_core_node.dir/src/odas_core_node.cpp.s

odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/configs.c.o: odas_ros/CMakeFiles/odas_core_node.dir/flags.make
odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/configs.c.o: /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/configs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/configs.c.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/configs.c.o   -c /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/configs.c

odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/configs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/configs.c.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/configs.c > CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/configs.c.i

odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/configs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/configs.c.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/configs.c -o CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/configs.c.s

odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/objects.c.o: odas_ros/CMakeFiles/odas_core_node.dir/flags.make
odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/objects.c.o: /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/objects.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/objects.c.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/objects.c.o   -c /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/objects.c

odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/objects.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/objects.c.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/objects.c > CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/objects.c.i

odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/objects.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/objects.c.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/objects.c -o CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/objects.c.s

odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/parameters.c.o: odas_ros/CMakeFiles/odas_core_node.dir/flags.make
odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/parameters.c.o: /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/parameters.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/parameters.c.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/parameters.c.o   -c /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/parameters.c

odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/parameters.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/parameters.c.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/parameters.c > CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/parameters.c.i

odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/parameters.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/parameters.c.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/parameters.c -o CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/parameters.c.s

odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/profiler.c.o: odas_ros/CMakeFiles/odas_core_node.dir/flags.make
odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/profiler.c.o: /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/profiler.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/profiler.c.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/profiler.c.o   -c /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/profiler.c

odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/profiler.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/profiler.c.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/profiler.c > CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/profiler.c.i

odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/profiler.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/profiler.c.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/profiler.c -o CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/profiler.c.s

odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/threads.c.o: odas_ros/CMakeFiles/odas_core_node.dir/flags.make
odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/threads.c.o: /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/threads.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/threads.c.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/threads.c.o   -c /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/threads.c

odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/threads.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/threads.c.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/threads.c > CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/threads.c.i

odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/threads.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/threads.c.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/odas_ros/src/odas/demo/odaslive/threads.c -o CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/threads.c.s

# Object files for target odas_core_node
odas_core_node_OBJECTS = \
"CMakeFiles/odas_core_node.dir/src/odas_core_node.cpp.o" \
"CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/configs.c.o" \
"CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/objects.c.o" \
"CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/parameters.c.o" \
"CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/profiler.c.o" \
"CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/threads.c.o"

# External object files for target odas_core_node
odas_core_node_EXTERNAL_OBJECTS =

/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: odas_ros/CMakeFiles/odas_core_node.dir/src/odas_core_node.cpp.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/configs.c.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/objects.c.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/parameters.c.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/profiler.c.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: odas_ros/CMakeFiles/odas_core_node.dir/src/odas/demo/odaslive/threads.c.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: odas_ros/CMakeFiles/odas_core_node.dir/build.make
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /home/spot/frontier_exploration_ssl_spot/devel/lib/libMusicBeatDetector.a
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /home/spot/frontier_exploration_ssl_spot/src/audio_utils/src/MusicBeatDetector/3rdParty/OpenBLAS/libopenblas.a
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /home/spot/frontier_exploration_ssl_spot/src/audio_utils/src/MusicBeatDetector/3rdParty/fftw/build/lib/libfftw3f.a
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /opt/ros/noetic/lib/libroscpp.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /opt/ros/noetic/lib/librosconsole.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /opt/ros/noetic/lib/librostime.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /opt/ros/noetic/lib/libcpp_common.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: /home/spot/frontier_exploration_ssl_spot/devel/lib/libodas.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node: odas_ros/CMakeFiles/odas_core_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable /home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node"
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/odas_core_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
odas_ros/CMakeFiles/odas_core_node.dir/build: /home/spot/frontier_exploration_ssl_spot/devel/lib/odas_ros/odas_core_node

.PHONY : odas_ros/CMakeFiles/odas_core_node.dir/build

odas_ros/CMakeFiles/odas_core_node.dir/clean:
	cd /home/spot/frontier_exploration_ssl_spot/build/odas_ros && $(CMAKE_COMMAND) -P CMakeFiles/odas_core_node.dir/cmake_clean.cmake
.PHONY : odas_ros/CMakeFiles/odas_core_node.dir/clean

odas_ros/CMakeFiles/odas_core_node.dir/depend:
	cd /home/spot/frontier_exploration_ssl_spot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/spot/frontier_exploration_ssl_spot/src /home/spot/frontier_exploration_ssl_spot/src/odas_ros /home/spot/frontier_exploration_ssl_spot/build /home/spot/frontier_exploration_ssl_spot/build/odas_ros /home/spot/frontier_exploration_ssl_spot/build/odas_ros/CMakeFiles/odas_core_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : odas_ros/CMakeFiles/odas_core_node.dir/depend

