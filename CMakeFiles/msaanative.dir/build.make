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
include CMakeFiles/msaanative.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/msaanative.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/msaanative.dir/flags.make

CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.o: CMakeFiles/msaanative.dir/flags.make
CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.o: src/msaanative/msaanative.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rick/Documenten/sb6code/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.o -c /home/rick/Documenten/sb6code/src/msaanative/msaanative.cpp

CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rick/Documenten/sb6code/src/msaanative/msaanative.cpp > CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.i

CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rick/Documenten/sb6code/src/msaanative/msaanative.cpp -o CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.s

CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.o.requires:
.PHONY : CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.o.requires

CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.o.provides: CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.o.requires
	$(MAKE) -f CMakeFiles/msaanative.dir/build.make CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.o.provides.build
.PHONY : CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.o.provides

CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.o.provides.build: CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.o

# Object files for target msaanative
msaanative_OBJECTS = \
"CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.o"

# External object files for target msaanative
msaanative_EXTERNAL_OBJECTS =

bin/msaanative: CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.o
bin/msaanative: CMakeFiles/msaanative.dir/build.make
bin/msaanative: lib/libsb6.a
bin/msaanative: CMakeFiles/msaanative.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/msaanative"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/msaanative.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/msaanative.dir/build: bin/msaanative
.PHONY : CMakeFiles/msaanative.dir/build

CMakeFiles/msaanative.dir/requires: CMakeFiles/msaanative.dir/src/msaanative/msaanative.cpp.o.requires
.PHONY : CMakeFiles/msaanative.dir/requires

CMakeFiles/msaanative.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/msaanative.dir/cmake_clean.cmake
.PHONY : CMakeFiles/msaanative.dir/clean

CMakeFiles/msaanative.dir/depend:
	cd /home/rick/Documenten/sb6code && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code/CMakeFiles/msaanative.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/msaanative.dir/depend

