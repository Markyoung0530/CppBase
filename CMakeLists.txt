 cmake_minimum_required(VERSION 3.30)
project(CppBase)
 include_directories(/usr/local/opt/llvm/include/c++/v1)
 link_directories(/usr/local/opt/llvm/lib)
 add_compile_options(-nostdinc++)

 set(CMAKE_CXX_STANDARD 20)
 set(CMAKE_CXX_STANDARD_REQUIRED ON)
 set(CMAKE_CXX_EXTENSIONS OFF)
add_executable(CppBase main.cpp
        Log.cpp
        Log.h
        myUtils/StringReverser.cpp
        myUtils/StringReverser.h
        myUtils/STLpractise.cpp
        myUtils/SmartPoiniter.cpp
        Solution.cpp
        Solution.cpp
)
