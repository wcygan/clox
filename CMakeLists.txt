cmake_minimum_required(VERSION 3.22)
project(clox C)

set(CMAKE_C_STANDARD 23)

add_executable(clox main.c common.h chunk.h memory.h memory.c chunk.c debug.h debug.c value.c value.h vm.c vm.h compiler.c compiler.h scanner.c scanner.h object.c object.h table.c table.h)
