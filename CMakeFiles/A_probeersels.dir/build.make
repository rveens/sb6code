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
include CMakeFiles/A_probeersels.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/A_probeersels.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/A_probeersels.dir/flags.make

CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.o: CMakeFiles/A_probeersels.dir/flags.make
CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.o: src/A_probeersels/A_probeersels.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rick/Documenten/sb6code/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.o -c /home/rick/Documenten/sb6code/src/A_probeersels/A_probeersels.cpp

CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rick/Documenten/sb6code/src/A_probeersels/A_probeersels.cpp > CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.i

CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rick/Documenten/sb6code/src/A_probeersels/A_probeersels.cpp -o CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.s

CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.o.requires:
.PHONY : CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.o.requires

CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.o.provides: CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.o.requires
	$(MAKE) -f CMakeFiles/A_probeersels.dir/build.make CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.o.provides.build
.PHONY : CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.o.provides

CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.o.provides.build: CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.o

# Object files for target A_probeersels
A_probeersels_OBJECTS = \
"CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.o"

# External object files for target A_probeersels
A_probeersels_EXTERNAL_OBJECTS =

bin/A_probeersels: CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.o
bin/A_probeersels: CMakeFiles/A_probeersels.dir/build.make
bin/A_probeersels: lib/libsb6.a
bin/A_probeersels: CMakeFiles/A_probeersels.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/A_probeersels"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/A_probeersels.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/A_probeersels.dir/build: bin/A_probeersels
.PHONY : CMakeFiles/A_probeersels.dir/build

CMakeFiles/A_probeersels.dir/requires: CMakeFiles/A_probeersels.dir/src/A_probeersels/A_probeersels.cpp.o.requires
.PHONY : CMakeFiles/A_probeersels.dir/requires

CMakeFiles/A_probeersels.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/A_probeersels.dir/cmake_clean.cmake
.PHONY : CMakeFiles/A_probeersels.dir/clean

CMakeFiles/A_probeersels.dir/depend:
	cd /home/rick/Documenten/sb6code && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code/CMakeFiles/A_probeersels.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/A_probeersels.dir/depend
