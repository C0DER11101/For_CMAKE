cmake_minimum_required(VERSION 3.16.3)

project(RPS)

add_executable(${PROJECT_NAME} RPS.c triangle.c)

install(TARGETS ${PROJECT_NAME} DESTINATION bin)
