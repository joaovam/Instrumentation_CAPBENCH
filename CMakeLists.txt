cmake_minimum_required(VERSION 2.8)
project(inst C)

set(CMAKE_C_STANDARD 17)

add_executable(inst main.c)
target_link_libraries(${PROJECT_NAME} papi)