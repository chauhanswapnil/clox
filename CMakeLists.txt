cmake_minimum_required(VERSION 3.25)
project(clox C)

set(CMAKE_C_STANDARD 11)

add_executable(clox
        main.c common.h chunk.h chunk.c memory.h debug.h debug.c chunk.c memory.c value.c vm.h vm.c compiler.h compiler.c scanner.h scanner.c )
