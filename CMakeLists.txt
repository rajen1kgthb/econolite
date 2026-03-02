cmake_minimum_required(VERSION 3.10)
project(project LANGUAGES CXX)

if (RELEASE STREQUAL "true")
	add_definitions (-DRELEASE_BUILD)
	message(STATUS "Configuring for RELEASE")
else ()
	message(STATUS "Configuring for DEBUG")
endif()

add_executable(app myprog.cpp)
#add_executable(app myprog.cpp)pro
