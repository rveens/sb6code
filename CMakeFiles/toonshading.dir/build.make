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
include CMakeFiles/toonshading.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/toonshading.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/toonshading.dir/flags.make

CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.o: CMakeFiles/toonshading.dir/flags.make
CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.o: src/toonshading/toonshading.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rick/Documenten/sb6code/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.o -c /home/rick/Documenten/sb6code/src/toonshading/toonshading.cpp

CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rick/Documenten/sb6code/src/toonshading/toonshading.cpp > CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.i

CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rick/Documenten/sb6code/src/toonshading/toonshading.cpp -o CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.s

CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.o.requires:
.PHONY : CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.o.requires

CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.o.provides: CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.o.requires
	$(MAKE) -f CMakeFiles/toonshading.dir/build.make CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.o.provides.build
.PHONY : CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.o.provides

CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.o.provides.build: CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.o

# Object files for target toonshading
toonshading_OBJECTS = \
"CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.o"

# External object files for target toonshading
toonshading_EXTERNAL_OBJECTS =

bin/toonshading: CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.o
bin/toonshading: CMakeFiles/toonshading.dir/build.make
bin/toonshading: lib/libsb6.a
bin/toonshading: CMakeFiles/toonshading.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/toonshading"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/toonshading.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/toonshading.dir/build: bin/toonshading
.PHONY : CMakeFiles/toonshading.dir/build

CMakeFiles/toonshading.dir/requires: CMakeFiles/toonshading.dir/src/toonshading/toonshading.cpp.o.requires
.PHONY : CMakeFiles/toonshading.dir/requires

CMakeFiles/toonshading.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/toonshading.dir/cmake_clean.cmake
.PHONY : CMakeFiles/toonshading.dir/clean

CMakeFiles/toonshading.dir/depend:
	cd /home/rick/Documenten/sb6code && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code/CMakeFiles/toonshading.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/toonshading.dir/depend

