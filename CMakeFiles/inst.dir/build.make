# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/joaovam/Documents/TCC/Instrumentation_CAPBENCH

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joaovam/Documents/TCC/Instrumentation_CAPBENCH

# Include any dependencies generated for this target.
include CMakeFiles/inst.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/inst.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/inst.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/inst.dir/flags.make

CMakeFiles/inst.dir/main.c.o: CMakeFiles/inst.dir/flags.make
CMakeFiles/inst.dir/main.c.o: main.c
CMakeFiles/inst.dir/main.c.o: CMakeFiles/inst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joaovam/Documents/TCC/Instrumentation_CAPBENCH/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/inst.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/inst.dir/main.c.o -MF CMakeFiles/inst.dir/main.c.o.d -o CMakeFiles/inst.dir/main.c.o -c /home/joaovam/Documents/TCC/Instrumentation_CAPBENCH/main.c

CMakeFiles/inst.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/inst.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joaovam/Documents/TCC/Instrumentation_CAPBENCH/main.c > CMakeFiles/inst.dir/main.c.i

CMakeFiles/inst.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/inst.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joaovam/Documents/TCC/Instrumentation_CAPBENCH/main.c -o CMakeFiles/inst.dir/main.c.s

# Object files for target inst
inst_OBJECTS = \
"CMakeFiles/inst.dir/main.c.o"

# External object files for target inst
inst_EXTERNAL_OBJECTS =

inst: CMakeFiles/inst.dir/main.c.o
inst: CMakeFiles/inst.dir/build.make
inst: CMakeFiles/inst.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joaovam/Documents/TCC/Instrumentation_CAPBENCH/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable inst"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/inst.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/inst.dir/build: inst
.PHONY : CMakeFiles/inst.dir/build

CMakeFiles/inst.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/inst.dir/cmake_clean.cmake
.PHONY : CMakeFiles/inst.dir/clean

CMakeFiles/inst.dir/depend:
	cd /home/joaovam/Documents/TCC/Instrumentation_CAPBENCH && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joaovam/Documents/TCC/Instrumentation_CAPBENCH /home/joaovam/Documents/TCC/Instrumentation_CAPBENCH /home/joaovam/Documents/TCC/Instrumentation_CAPBENCH /home/joaovam/Documents/TCC/Instrumentation_CAPBENCH /home/joaovam/Documents/TCC/Instrumentation_CAPBENCH/CMakeFiles/inst.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/inst.dir/depend
