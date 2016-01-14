cmake_minimum_required(VERSION 3.3)
project(TreeMas_7_2)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES main.cpp ChildTree.h Root.h Tree.h SearchTree.cpp SearchTree.h CreateTre.cpp CreateTre.h)
add_executable(TreeMas_7_2 ${SOURCE_FILES})

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -lboost_unit_test_framework -lboost_program_options -lboost_system -pg")

FIND_PACKAGE(Boost COMPONENTS unit_test_framework system REQUIRED)
INCLUDE_DIRECTORIES(${Boost_INCLUDE_DIR})

set(SOURCE_FILES Tests.cpp)
add_executable(Tests ${SOURCE_FILES} Tests.cpp)

TARGET_LINK_LIBRARIES(Tests ${Boost_LIBRARIES})