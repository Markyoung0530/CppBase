# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/x64/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/markyoung/CLionProjects/CppBase

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/markyoung/CLionProjects/CppBase/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CppBase.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/CppBase.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/CppBase.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CppBase.dir/flags.make

CMakeFiles/CppBase.dir/main.cpp.o: CMakeFiles/CppBase.dir/flags.make
CMakeFiles/CppBase.dir/main.cpp.o: /Users/markyoung/CLionProjects/CppBase/main.cpp
CMakeFiles/CppBase.dir/main.cpp.o: CMakeFiles/CppBase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/markyoung/CLionProjects/CppBase/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CppBase.dir/main.cpp.o"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CppBase.dir/main.cpp.o -MF CMakeFiles/CppBase.dir/main.cpp.o.d -o CMakeFiles/CppBase.dir/main.cpp.o -c /Users/markyoung/CLionProjects/CppBase/main.cpp

CMakeFiles/CppBase.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CppBase.dir/main.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/markyoung/CLionProjects/CppBase/main.cpp > CMakeFiles/CppBase.dir/main.cpp.i

CMakeFiles/CppBase.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CppBase.dir/main.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/markyoung/CLionProjects/CppBase/main.cpp -o CMakeFiles/CppBase.dir/main.cpp.s

CMakeFiles/CppBase.dir/Log.cpp.o: CMakeFiles/CppBase.dir/flags.make
CMakeFiles/CppBase.dir/Log.cpp.o: /Users/markyoung/CLionProjects/CppBase/Log.cpp
CMakeFiles/CppBase.dir/Log.cpp.o: CMakeFiles/CppBase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/markyoung/CLionProjects/CppBase/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CppBase.dir/Log.cpp.o"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CppBase.dir/Log.cpp.o -MF CMakeFiles/CppBase.dir/Log.cpp.o.d -o CMakeFiles/CppBase.dir/Log.cpp.o -c /Users/markyoung/CLionProjects/CppBase/Log.cpp

CMakeFiles/CppBase.dir/Log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CppBase.dir/Log.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/markyoung/CLionProjects/CppBase/Log.cpp > CMakeFiles/CppBase.dir/Log.cpp.i

CMakeFiles/CppBase.dir/Log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CppBase.dir/Log.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/markyoung/CLionProjects/CppBase/Log.cpp -o CMakeFiles/CppBase.dir/Log.cpp.s

CMakeFiles/CppBase.dir/myUtils/StringReverser.cpp.o: CMakeFiles/CppBase.dir/flags.make
CMakeFiles/CppBase.dir/myUtils/StringReverser.cpp.o: /Users/markyoung/CLionProjects/CppBase/myUtils/StringReverser.cpp
CMakeFiles/CppBase.dir/myUtils/StringReverser.cpp.o: CMakeFiles/CppBase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/markyoung/CLionProjects/CppBase/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/CppBase.dir/myUtils/StringReverser.cpp.o"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CppBase.dir/myUtils/StringReverser.cpp.o -MF CMakeFiles/CppBase.dir/myUtils/StringReverser.cpp.o.d -o CMakeFiles/CppBase.dir/myUtils/StringReverser.cpp.o -c /Users/markyoung/CLionProjects/CppBase/myUtils/StringReverser.cpp

CMakeFiles/CppBase.dir/myUtils/StringReverser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CppBase.dir/myUtils/StringReverser.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/markyoung/CLionProjects/CppBase/myUtils/StringReverser.cpp > CMakeFiles/CppBase.dir/myUtils/StringReverser.cpp.i

CMakeFiles/CppBase.dir/myUtils/StringReverser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CppBase.dir/myUtils/StringReverser.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/markyoung/CLionProjects/CppBase/myUtils/StringReverser.cpp -o CMakeFiles/CppBase.dir/myUtils/StringReverser.cpp.s

CMakeFiles/CppBase.dir/myUtils/STLpractise.cpp.o: CMakeFiles/CppBase.dir/flags.make
CMakeFiles/CppBase.dir/myUtils/STLpractise.cpp.o: /Users/markyoung/CLionProjects/CppBase/myUtils/STLpractise.cpp
CMakeFiles/CppBase.dir/myUtils/STLpractise.cpp.o: CMakeFiles/CppBase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/markyoung/CLionProjects/CppBase/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/CppBase.dir/myUtils/STLpractise.cpp.o"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CppBase.dir/myUtils/STLpractise.cpp.o -MF CMakeFiles/CppBase.dir/myUtils/STLpractise.cpp.o.d -o CMakeFiles/CppBase.dir/myUtils/STLpractise.cpp.o -c /Users/markyoung/CLionProjects/CppBase/myUtils/STLpractise.cpp

CMakeFiles/CppBase.dir/myUtils/STLpractise.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CppBase.dir/myUtils/STLpractise.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/markyoung/CLionProjects/CppBase/myUtils/STLpractise.cpp > CMakeFiles/CppBase.dir/myUtils/STLpractise.cpp.i

CMakeFiles/CppBase.dir/myUtils/STLpractise.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CppBase.dir/myUtils/STLpractise.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/markyoung/CLionProjects/CppBase/myUtils/STLpractise.cpp -o CMakeFiles/CppBase.dir/myUtils/STLpractise.cpp.s

CMakeFiles/CppBase.dir/myUtils/SmartPoiniter.cpp.o: CMakeFiles/CppBase.dir/flags.make
CMakeFiles/CppBase.dir/myUtils/SmartPoiniter.cpp.o: /Users/markyoung/CLionProjects/CppBase/myUtils/SmartPoiniter.cpp
CMakeFiles/CppBase.dir/myUtils/SmartPoiniter.cpp.o: CMakeFiles/CppBase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/markyoung/CLionProjects/CppBase/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/CppBase.dir/myUtils/SmartPoiniter.cpp.o"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CppBase.dir/myUtils/SmartPoiniter.cpp.o -MF CMakeFiles/CppBase.dir/myUtils/SmartPoiniter.cpp.o.d -o CMakeFiles/CppBase.dir/myUtils/SmartPoiniter.cpp.o -c /Users/markyoung/CLionProjects/CppBase/myUtils/SmartPoiniter.cpp

CMakeFiles/CppBase.dir/myUtils/SmartPoiniter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CppBase.dir/myUtils/SmartPoiniter.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/markyoung/CLionProjects/CppBase/myUtils/SmartPoiniter.cpp > CMakeFiles/CppBase.dir/myUtils/SmartPoiniter.cpp.i

CMakeFiles/CppBase.dir/myUtils/SmartPoiniter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CppBase.dir/myUtils/SmartPoiniter.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/markyoung/CLionProjects/CppBase/myUtils/SmartPoiniter.cpp -o CMakeFiles/CppBase.dir/myUtils/SmartPoiniter.cpp.s

CMakeFiles/CppBase.dir/Solution.cpp.o: CMakeFiles/CppBase.dir/flags.make
CMakeFiles/CppBase.dir/Solution.cpp.o: /Users/markyoung/CLionProjects/CppBase/Solution.cpp
CMakeFiles/CppBase.dir/Solution.cpp.o: CMakeFiles/CppBase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/markyoung/CLionProjects/CppBase/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/CppBase.dir/Solution.cpp.o"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CppBase.dir/Solution.cpp.o -MF CMakeFiles/CppBase.dir/Solution.cpp.o.d -o CMakeFiles/CppBase.dir/Solution.cpp.o -c /Users/markyoung/CLionProjects/CppBase/Solution.cpp

CMakeFiles/CppBase.dir/Solution.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CppBase.dir/Solution.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/markyoung/CLionProjects/CppBase/Solution.cpp > CMakeFiles/CppBase.dir/Solution.cpp.i

CMakeFiles/CppBase.dir/Solution.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CppBase.dir/Solution.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/markyoung/CLionProjects/CppBase/Solution.cpp -o CMakeFiles/CppBase.dir/Solution.cpp.s

# Object files for target CppBase
CppBase_OBJECTS = \
"CMakeFiles/CppBase.dir/main.cpp.o" \
"CMakeFiles/CppBase.dir/Log.cpp.o" \
"CMakeFiles/CppBase.dir/myUtils/StringReverser.cpp.o" \
"CMakeFiles/CppBase.dir/myUtils/STLpractise.cpp.o" \
"CMakeFiles/CppBase.dir/myUtils/SmartPoiniter.cpp.o" \
"CMakeFiles/CppBase.dir/Solution.cpp.o"

# External object files for target CppBase
CppBase_EXTERNAL_OBJECTS =

CppBase: CMakeFiles/CppBase.dir/main.cpp.o
CppBase: CMakeFiles/CppBase.dir/Log.cpp.o
CppBase: CMakeFiles/CppBase.dir/myUtils/StringReverser.cpp.o
CppBase: CMakeFiles/CppBase.dir/myUtils/STLpractise.cpp.o
CppBase: CMakeFiles/CppBase.dir/myUtils/SmartPoiniter.cpp.o
CppBase: CMakeFiles/CppBase.dir/Solution.cpp.o
CppBase: CMakeFiles/CppBase.dir/build.make
CppBase: CMakeFiles/CppBase.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/markyoung/CLionProjects/CppBase/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable CppBase"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CppBase.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CppBase.dir/build: CppBase
.PHONY : CMakeFiles/CppBase.dir/build

CMakeFiles/CppBase.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CppBase.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CppBase.dir/clean

CMakeFiles/CppBase.dir/depend:
	cd /Users/markyoung/CLionProjects/CppBase/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/markyoung/CLionProjects/CppBase /Users/markyoung/CLionProjects/CppBase /Users/markyoung/CLionProjects/CppBase/cmake-build-debug /Users/markyoung/CLionProjects/CppBase/cmake-build-debug /Users/markyoung/CLionProjects/CppBase/cmake-build-debug/CMakeFiles/CppBase.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/CppBase.dir/depend

