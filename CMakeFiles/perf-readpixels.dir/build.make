# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/rick/Documenten/sb6code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rick/Documenten/sb6code

# Include any dependencies generated for this target.
include CMakeFiles/perf-readpixels.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/perf-readpixels.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/perf-readpixels.dir/flags.make

CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.o: CMakeFiles/perf-readpixels.dir/flags.make
CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.o: src/perf-readpixels/perf-readpixels.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rick/Documenten/sb6code/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.o -c /home/rick/Documenten/sb6code/src/perf-readpixels/perf-readpixels.cpp

CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rick/Documenten/sb6code/src/perf-readpixels/perf-readpixels.cpp > CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.i

CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rick/Documenten/sb6code/src/perf-readpixels/perf-readpixels.cpp -o CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.s

CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.o.requires:
.PHONY : CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.o.requires

CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.o.provides: CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.o.requires
	$(MAKE) -f CMakeFiles/perf-readpixels.dir/build.make CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.o.provides.build
.PHONY : CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.o.provides

CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.o.provides.build: CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.o

# Object files for target perf-readpixels
perf__readpixels_OBJECTS = \
"CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.o"

# External object files for target perf-readpixels
perf__readpixels_EXTERNAL_OBJECTS =

bin/perf-readpixels: CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.o
bin/perf-readpixels: CMakeFiles/perf-readpixels.dir/build.make
bin/perf-readpixels: lib/libsb6.a
bin/perf-readpixels: CMakeFiles/perf-readpixels.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/perf-readpixels"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/perf-readpixels.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/perf-readpixels.dir/build: bin/perf-readpixels
.PHONY : CMakeFiles/perf-readpixels.dir/build

CMakeFiles/perf-readpixels.dir/requires: CMakeFiles/perf-readpixels.dir/src/perf-readpixels/perf-readpixels.cpp.o.requires
.PHONY : CMakeFiles/perf-readpixels.dir/requires

CMakeFiles/perf-readpixels.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/perf-readpixels.dir/cmake_clean.cmake
.PHONY : CMakeFiles/perf-readpixels.dir/clean

CMakeFiles/perf-readpixels.dir/depend:
	cd /home/rick/Documenten/sb6code && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code/CMakeFiles/perf-readpixels.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/perf-readpixels.dir/depend
