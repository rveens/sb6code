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
include CMakeFiles/noperspective.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/noperspective.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/noperspective.dir/flags.make

CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.o: CMakeFiles/noperspective.dir/flags.make
CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.o: src/noperspective/noperspective.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rick/Documenten/sb6code/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.o -c /home/rick/Documenten/sb6code/src/noperspective/noperspective.cpp

CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rick/Documenten/sb6code/src/noperspective/noperspective.cpp > CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.i

CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rick/Documenten/sb6code/src/noperspective/noperspective.cpp -o CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.s

CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.o.requires:
.PHONY : CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.o.requires

CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.o.provides: CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.o.requires
	$(MAKE) -f CMakeFiles/noperspective.dir/build.make CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.o.provides.build
.PHONY : CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.o.provides

CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.o.provides.build: CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.o

# Object files for target noperspective
noperspective_OBJECTS = \
"CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.o"

# External object files for target noperspective
noperspective_EXTERNAL_OBJECTS =

bin/noperspective: CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.o
bin/noperspective: CMakeFiles/noperspective.dir/build.make
bin/noperspective: lib/libsb6.a
bin/noperspective: CMakeFiles/noperspective.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/noperspective"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/noperspective.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/noperspective.dir/build: bin/noperspective
.PHONY : CMakeFiles/noperspective.dir/build

CMakeFiles/noperspective.dir/requires: CMakeFiles/noperspective.dir/src/noperspective/noperspective.cpp.o.requires
.PHONY : CMakeFiles/noperspective.dir/requires

CMakeFiles/noperspective.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/noperspective.dir/cmake_clean.cmake
.PHONY : CMakeFiles/noperspective.dir/clean

CMakeFiles/noperspective.dir/depend:
	cd /home/rick/Documenten/sb6code && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code/CMakeFiles/noperspective.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/noperspective.dir/depend
