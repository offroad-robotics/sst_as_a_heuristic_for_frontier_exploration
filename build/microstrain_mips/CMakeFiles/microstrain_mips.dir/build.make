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
include microstrain_mips/CMakeFiles/microstrain_mips.dir/depend.make

# Include the progress variables for this target.
include microstrain_mips/CMakeFiles/microstrain_mips.dir/progress.make

# Include the compile flags for this target's objects.
include microstrain_mips/CMakeFiles/microstrain_mips.dir/flags.make

microstrain_mips/CMakeFiles/microstrain_mips.dir/src/microstrain_3dm.cpp.o: microstrain_mips/CMakeFiles/microstrain_mips.dir/flags.make
microstrain_mips/CMakeFiles/microstrain_mips.dir/src/microstrain_3dm.cpp.o: /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/src/microstrain_3dm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object microstrain_mips/CMakeFiles/microstrain_mips.dir/src/microstrain_3dm.cpp.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/microstrain_mips.dir/src/microstrain_3dm.cpp.o -c /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/src/microstrain_3dm.cpp

microstrain_mips/CMakeFiles/microstrain_mips.dir/src/microstrain_3dm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/microstrain_mips.dir/src/microstrain_3dm.cpp.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/src/microstrain_3dm.cpp > CMakeFiles/microstrain_mips.dir/src/microstrain_3dm.cpp.i

microstrain_mips/CMakeFiles/microstrain_mips.dir/src/microstrain_3dm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/microstrain_mips.dir/src/microstrain_3dm.cpp.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/src/microstrain_3dm.cpp -o CMakeFiles/microstrain_mips.dir/src/microstrain_3dm.cpp.s

microstrain_mips/CMakeFiles/microstrain_mips.dir/src/mip_sdk_user_functions.c.o: microstrain_mips/CMakeFiles/microstrain_mips.dir/flags.make
microstrain_mips/CMakeFiles/microstrain_mips.dir/src/mip_sdk_user_functions.c.o: /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/src/mip_sdk_user_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object microstrain_mips/CMakeFiles/microstrain_mips.dir/src/mip_sdk_user_functions.c.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/microstrain_mips.dir/src/mip_sdk_user_functions.c.o   -c /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/src/mip_sdk_user_functions.c

microstrain_mips/CMakeFiles/microstrain_mips.dir/src/mip_sdk_user_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/microstrain_mips.dir/src/mip_sdk_user_functions.c.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/src/mip_sdk_user_functions.c > CMakeFiles/microstrain_mips.dir/src/mip_sdk_user_functions.c.i

microstrain_mips/CMakeFiles/microstrain_mips.dir/src/mip_sdk_user_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/microstrain_mips.dir/src/mip_sdk_user_functions.c.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/src/mip_sdk_user_functions.c -o CMakeFiles/microstrain_mips.dir/src/mip_sdk_user_functions.c.s

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip.c.o: microstrain_mips/CMakeFiles/microstrain_mips.dir/flags.make
microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip.c.o: /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip.c.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip.c.o   -c /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip.c

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip.c.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip.c > CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip.c.i

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip.c.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip.c -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip.c.s

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_base.c.o: microstrain_mips/CMakeFiles/microstrain_mips.dir/flags.make
microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_base.c.o: /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_base.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_base.c.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_base.c.o   -c /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_base.c

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_base.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_base.c.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_base.c > CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_base.c.i

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_base.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_base.c.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_base.c -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_base.c.s

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_inteface.c.o: microstrain_mips/CMakeFiles/microstrain_mips.dir/flags.make
microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_inteface.c.o: /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_inteface.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_inteface.c.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_inteface.c.o   -c /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_inteface.c

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_inteface.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_inteface.c.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_inteface.c > CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_inteface.c.i

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_inteface.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_inteface.c.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_inteface.c -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_inteface.c.s

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_3dm.c.o: microstrain_mips/CMakeFiles/microstrain_mips.dir/flags.make
microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_3dm.c.o: /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_3dm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_3dm.c.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_3dm.c.o   -c /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_3dm.c

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_3dm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_3dm.c.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_3dm.c > CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_3dm.c.i

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_3dm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_3dm.c.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_3dm.c -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_3dm.c.s

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_filter.c.o: microstrain_mips/CMakeFiles/microstrain_mips.dir/flags.make
microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_filter.c.o: /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_filter.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_filter.c.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_filter.c.o   -c /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_filter.c

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_filter.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_filter.c.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_filter.c > CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_filter.c.i

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_filter.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_filter.c.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_filter.c -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_filter.c.s

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_system.c.o: microstrain_mips/CMakeFiles/microstrain_mips.dir/flags.make
microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_system.c.o: /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_system.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_system.c.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_system.c.o   -c /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_system.c

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_system.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_system.c.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_system.c > CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_system.c.i

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_system.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_system.c.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_system.c -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_system.c.s

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_ahrs.c.o: microstrain_mips/CMakeFiles/microstrain_mips.dir/flags.make
microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_ahrs.c.o: /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_ahrs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_ahrs.c.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_ahrs.c.o   -c /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_ahrs.c

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_ahrs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_ahrs.c.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_ahrs.c > CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_ahrs.c.i

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_ahrs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_ahrs.c.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_ahrs.c -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_ahrs.c.s

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_gps.c.o: microstrain_mips/CMakeFiles/microstrain_mips.dir/flags.make
microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_gps.c.o: /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_gps.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_gps.c.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_gps.c.o   -c /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_gps.c

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_gps.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_gps.c.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_gps.c > CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_gps.c.i

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_gps.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_gps.c.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/mip_sdk_gps.c -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_gps.c.s

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/ring_buffer.c.o: microstrain_mips/CMakeFiles/microstrain_mips.dir/flags.make
microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/ring_buffer.c.o: /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/ring_buffer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/ring_buffer.c.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/ring_buffer.c.o   -c /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/ring_buffer.c

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/ring_buffer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/ring_buffer.c.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/ring_buffer.c > CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/ring_buffer.c.i

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/ring_buffer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/ring_buffer.c.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Library/Source/ring_buffer.c -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/ring_buffer.c.s

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Utilities/Source/byteswap_utilities.c.o: microstrain_mips/CMakeFiles/microstrain_mips.dir/flags.make
microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Utilities/Source/byteswap_utilities.c.o: /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Utilities/Source/byteswap_utilities.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Utilities/Source/byteswap_utilities.c.o"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Utilities/Source/byteswap_utilities.c.o   -c /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Utilities/Source/byteswap_utilities.c

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Utilities/Source/byteswap_utilities.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/microstrain_mips.dir/MIPSDK/C/Utilities/Source/byteswap_utilities.c.i"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Utilities/Source/byteswap_utilities.c > CMakeFiles/microstrain_mips.dir/MIPSDK/C/Utilities/Source/byteswap_utilities.c.i

microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Utilities/Source/byteswap_utilities.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/microstrain_mips.dir/MIPSDK/C/Utilities/Source/byteswap_utilities.c.s"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips/MIPSDK/C/Utilities/Source/byteswap_utilities.c -o CMakeFiles/microstrain_mips.dir/MIPSDK/C/Utilities/Source/byteswap_utilities.c.s

# Object files for target microstrain_mips
microstrain_mips_OBJECTS = \
"CMakeFiles/microstrain_mips.dir/src/microstrain_3dm.cpp.o" \
"CMakeFiles/microstrain_mips.dir/src/mip_sdk_user_functions.c.o" \
"CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip.c.o" \
"CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_base.c.o" \
"CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_inteface.c.o" \
"CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_3dm.c.o" \
"CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_filter.c.o" \
"CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_system.c.o" \
"CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_ahrs.c.o" \
"CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_gps.c.o" \
"CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/ring_buffer.c.o" \
"CMakeFiles/microstrain_mips.dir/MIPSDK/C/Utilities/Source/byteswap_utilities.c.o"

# External object files for target microstrain_mips
microstrain_mips_EXTERNAL_OBJECTS =

/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: microstrain_mips/CMakeFiles/microstrain_mips.dir/src/microstrain_3dm.cpp.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: microstrain_mips/CMakeFiles/microstrain_mips.dir/src/mip_sdk_user_functions.c.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip.c.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_base.c.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_inteface.c.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_3dm.c.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_filter.c.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_system.c.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_ahrs.c.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/mip_sdk_gps.c.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Library/Source/ring_buffer.c.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: microstrain_mips/CMakeFiles/microstrain_mips.dir/MIPSDK/C/Utilities/Source/byteswap_utilities.c.o
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: microstrain_mips/CMakeFiles/microstrain_mips.dir/build.make
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /opt/ros/noetic/lib/libtf2_ros.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /opt/ros/noetic/lib/libactionlib.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /opt/ros/noetic/lib/libmessage_filters.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /opt/ros/noetic/lib/libtf2.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /opt/ros/noetic/lib/libdiagnostic_updater.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /opt/ros/noetic/lib/libroscpp.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /opt/ros/noetic/lib/librosconsole.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /opt/ros/noetic/lib/librostime.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /opt/ros/noetic/lib/libcpp_common.so
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so: microstrain_mips/CMakeFiles/microstrain_mips.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/spot/frontier_exploration_ssl_spot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX shared library /home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so"
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/microstrain_mips.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
microstrain_mips/CMakeFiles/microstrain_mips.dir/build: /home/spot/frontier_exploration_ssl_spot/devel/lib/libmicrostrain_mips.so

.PHONY : microstrain_mips/CMakeFiles/microstrain_mips.dir/build

microstrain_mips/CMakeFiles/microstrain_mips.dir/clean:
	cd /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips && $(CMAKE_COMMAND) -P CMakeFiles/microstrain_mips.dir/cmake_clean.cmake
.PHONY : microstrain_mips/CMakeFiles/microstrain_mips.dir/clean

microstrain_mips/CMakeFiles/microstrain_mips.dir/depend:
	cd /home/spot/frontier_exploration_ssl_spot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/spot/frontier_exploration_ssl_spot/src /home/spot/frontier_exploration_ssl_spot/src/microstrain_mips /home/spot/frontier_exploration_ssl_spot/build /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips /home/spot/frontier_exploration_ssl_spot/build/microstrain_mips/CMakeFiles/microstrain_mips.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : microstrain_mips/CMakeFiles/microstrain_mips.dir/depend

