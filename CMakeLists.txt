 cmake_minimum_required(VERSION 3.30)
project(CppBase)

set(CMAKE_CXX_STANDARD 20)

add_executable(CppBase main.cpp
        Log.cpp
        Log.h
        myUtils/StringReverser.cpp
        myUtils/StringReverser.h
        myUtils/STLpractise.cpp
)
