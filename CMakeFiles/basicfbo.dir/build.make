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
include CMakeFiles/basicfbo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/basicfbo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/basicfbo.dir/flags.make

CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.o: CMakeFiles/basicfbo.dir/flags.make
CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.o: src/basicfbo/basicfbo.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rick/Documenten/sb6code/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.o -c /home/rick/Documenten/sb6code/src/basicfbo/basicfbo.cpp

CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rick/Documenten/sb6code/src/basicfbo/basicfbo.cpp > CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.i

CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rick/Documenten/sb6code/src/basicfbo/basicfbo.cpp -o CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.s

CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.o.requires:
.PHONY : CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.o.requires

CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.o.provides: CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.o.requires
	$(MAKE) -f CMakeFiles/basicfbo.dir/build.make CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.o.provides.build
.PHONY : CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.o.provides

CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.o.provides.build: CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.o

# Object files for target basicfbo
basicfbo_OBJECTS = \
"CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.o"

# External object files for target basicfbo
basicfbo_EXTERNAL_OBJECTS =

bin/basicfbo: CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.o
bin/basicfbo: CMakeFiles/basicfbo.dir/build.make
bin/basicfbo: lib/libsb6.a
bin/basicfbo: CMakeFiles/basicfbo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/basicfbo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/basicfbo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/basicfbo.dir/build: bin/basicfbo
.PHONY : CMakeFiles/basicfbo.dir/build

CMakeFiles/basicfbo.dir/requires: CMakeFiles/basicfbo.dir/src/basicfbo/basicfbo.cpp.o.requires
.PHONY : CMakeFiles/basicfbo.dir/requires

CMakeFiles/basicfbo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/basicfbo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/basicfbo.dir/clean

CMakeFiles/basicfbo.dir/depend:
	cd /home/rick/Documenten/sb6code && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code/CMakeFiles/basicfbo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/basicfbo.dir/depend
