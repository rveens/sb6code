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
include CMakeFiles/envmapsphere.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/envmapsphere.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/envmapsphere.dir/flags.make

CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.o: CMakeFiles/envmapsphere.dir/flags.make
CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.o: src/envmapsphere/envmapsphere.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rick/Documenten/sb6code/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.o -c /home/rick/Documenten/sb6code/src/envmapsphere/envmapsphere.cpp

CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rick/Documenten/sb6code/src/envmapsphere/envmapsphere.cpp > CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.i

CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rick/Documenten/sb6code/src/envmapsphere/envmapsphere.cpp -o CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.s

CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.o.requires:
.PHONY : CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.o.requires

CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.o.provides: CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.o.requires
	$(MAKE) -f CMakeFiles/envmapsphere.dir/build.make CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.o.provides.build
.PHONY : CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.o.provides

CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.o.provides.build: CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.o

# Object files for target envmapsphere
envmapsphere_OBJECTS = \
"CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.o"

# External object files for target envmapsphere
envmapsphere_EXTERNAL_OBJECTS =

bin/envmapsphere: CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.o
bin/envmapsphere: CMakeFiles/envmapsphere.dir/build.make
bin/envmapsphere: lib/libsb6.a
bin/envmapsphere: CMakeFiles/envmapsphere.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/envmapsphere"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/envmapsphere.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/envmapsphere.dir/build: bin/envmapsphere
.PHONY : CMakeFiles/envmapsphere.dir/build

CMakeFiles/envmapsphere.dir/requires: CMakeFiles/envmapsphere.dir/src/envmapsphere/envmapsphere.cpp.o.requires
.PHONY : CMakeFiles/envmapsphere.dir/requires

CMakeFiles/envmapsphere.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/envmapsphere.dir/cmake_clean.cmake
.PHONY : CMakeFiles/envmapsphere.dir/clean

CMakeFiles/envmapsphere.dir/depend:
	cd /home/rick/Documenten/sb6code && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code/CMakeFiles/envmapsphere.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/envmapsphere.dir/depend

