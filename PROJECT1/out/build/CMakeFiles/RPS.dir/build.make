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
CMAKE_SOURCE_DIR = /home/priyanuj/Desktop/C0DER11101/CMake/PROJECT1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/priyanuj/Desktop/C0DER11101/CMake/PROJECT1/out/build

# Include any dependencies generated for this target.
include CMakeFiles/RPS.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/RPS.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RPS.dir/flags.make

CMakeFiles/RPS.dir/RPS.c.o: CMakeFiles/RPS.dir/flags.make
CMakeFiles/RPS.dir/RPS.c.o: ../../RPS.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/priyanuj/Desktop/C0DER11101/CMake/PROJECT1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/RPS.dir/RPS.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RPS.dir/RPS.c.o   -c /home/priyanuj/Desktop/C0DER11101/CMake/PROJECT1/RPS.c

CMakeFiles/RPS.dir/RPS.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RPS.dir/RPS.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/priyanuj/Desktop/C0DER11101/CMake/PROJECT1/RPS.c > CMakeFiles/RPS.dir/RPS.c.i

CMakeFiles/RPS.dir/RPS.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RPS.dir/RPS.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/priyanuj/Desktop/C0DER11101/CMake/PROJECT1/RPS.c -o CMakeFiles/RPS.dir/RPS.c.s

# Object files for target RPS
RPS_OBJECTS = \
"CMakeFiles/RPS.dir/RPS.c.o"

# External object files for target RPS
RPS_EXTERNAL_OBJECTS =

RPS: CMakeFiles/RPS.dir/RPS.c.o
RPS: CMakeFiles/RPS.dir/build.make
RPS: CMakeFiles/RPS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/priyanuj/Desktop/C0DER11101/CMake/PROJECT1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable RPS"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RPS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RPS.dir/build: RPS

.PHONY : CMakeFiles/RPS.dir/build

CMakeFiles/RPS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RPS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RPS.dir/clean

CMakeFiles/RPS.dir/depend:
	cd /home/priyanuj/Desktop/C0DER11101/CMake/PROJECT1/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/priyanuj/Desktop/C0DER11101/CMake/PROJECT1 /home/priyanuj/Desktop/C0DER11101/CMake/PROJECT1 /home/priyanuj/Desktop/C0DER11101/CMake/PROJECT1/out/build /home/priyanuj/Desktop/C0DER11101/CMake/PROJECT1/out/build /home/priyanuj/Desktop/C0DER11101/CMake/PROJECT1/out/build/CMakeFiles/RPS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RPS.dir/depend

