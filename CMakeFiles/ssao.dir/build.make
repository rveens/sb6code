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
include CMakeFiles/ssao.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ssao.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ssao.dir/flags.make

CMakeFiles/ssao.dir/src/ssao/ssao.cpp.o: CMakeFiles/ssao.dir/flags.make
CMakeFiles/ssao.dir/src/ssao/ssao.cpp.o: src/ssao/ssao.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rick/Documenten/sb6code/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/ssao.dir/src/ssao/ssao.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ssao.dir/src/ssao/ssao.cpp.o -c /home/rick/Documenten/sb6code/src/ssao/ssao.cpp

CMakeFiles/ssao.dir/src/ssao/ssao.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ssao.dir/src/ssao/ssao.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rick/Documenten/sb6code/src/ssao/ssao.cpp > CMakeFiles/ssao.dir/src/ssao/ssao.cpp.i

CMakeFiles/ssao.dir/src/ssao/ssao.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ssao.dir/src/ssao/ssao.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rick/Documenten/sb6code/src/ssao/ssao.cpp -o CMakeFiles/ssao.dir/src/ssao/ssao.cpp.s

CMakeFiles/ssao.dir/src/ssao/ssao.cpp.o.requires:
.PHONY : CMakeFiles/ssao.dir/src/ssao/ssao.cpp.o.requires

CMakeFiles/ssao.dir/src/ssao/ssao.cpp.o.provides: CMakeFiles/ssao.dir/src/ssao/ssao.cpp.o.requires
	$(MAKE) -f CMakeFiles/ssao.dir/build.make CMakeFiles/ssao.dir/src/ssao/ssao.cpp.o.provides.build
.PHONY : CMakeFiles/ssao.dir/src/ssao/ssao.cpp.o.provides

CMakeFiles/ssao.dir/src/ssao/ssao.cpp.o.provides.build: CMakeFiles/ssao.dir/src/ssao/ssao.cpp.o

# Object files for target ssao
ssao_OBJECTS = \
"CMakeFiles/ssao.dir/src/ssao/ssao.cpp.o"

# External object files for target ssao
ssao_EXTERNAL_OBJECTS =

bin/ssao: CMakeFiles/ssao.dir/src/ssao/ssao.cpp.o
bin/ssao: CMakeFiles/ssao.dir/build.make
bin/ssao: lib/libsb6.a
bin/ssao: CMakeFiles/ssao.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/ssao"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ssao.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ssao.dir/build: bin/ssao
.PHONY : CMakeFiles/ssao.dir/build

CMakeFiles/ssao.dir/requires: CMakeFiles/ssao.dir/src/ssao/ssao.cpp.o.requires
.PHONY : CMakeFiles/ssao.dir/requires

CMakeFiles/ssao.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ssao.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ssao.dir/clean

CMakeFiles/ssao.dir/depend:
	cd /home/rick/Documenten/sb6code && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code /home/rick/Documenten/sb6code/CMakeFiles/ssao.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ssao.dir/depend
