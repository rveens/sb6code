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
include CMakeFiles/subroutines.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/subroutines.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/subroutines.dir/flags.make

CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.o: CMakeFiles/subroutines.dir/flags.make
CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.o: src/subroutines/subroutines.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rick/Documenten/sb6code/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.o -c /home/rick/Documenten/sb6code/src/subroutines/subroutines.cpp

CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rick/Documenten/sb6code/src/subroutines/subroutines.cpp > CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.i

CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rick/Documenten/sb6code/src/subroutines/subroutines.cpp -o CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.s

CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.o.requires:
.PHONY : CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.o.requires

CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.o.provides: CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.o.requires
	$(MAKE) -f CMakeFiles/subroutines.dir/build.make CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.o.provides.build
.PHONY : CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.o.provides

CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.o.provides.build: CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.o

# Object files for target subroutines
subroutines_OBJECTS = \
"CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.o"

# External object files for target subroutines
subroutines_EXTERNAL_OBJECTS =

bin/subroutines: CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.o
bin/subroutines: CMakeFiles/subroutines.dir/build.make
bin/subroutines: lib/libsb6.a
bin/subroutines: CMakeFiles/subroutines.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/subroutines"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/subroutines.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/subroutines.dir/build: bin/subroutines
.PHONY : CMakeFiles/subroutines.dir/build

CMakeFiles/subroutines.dir/requires: CMakeFiles/subroutines.dir/src/subroutines/subroutines.cpp.o.requires
.PHONY : CMakeFiles/subroutines.dir/requires

CMakeFiles/subroutines.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/subroutines.dir/cmake_clean.cmake
.PHONY : CMakeFiles/subroutines.dir/clean

CMakeFiles/subroutines.dir/depend:
	cd /home/rick/Documenten/sb6code && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code/CMakeFiles/subroutines.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/subroutines.dir/depend

