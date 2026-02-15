cmake_minimum_required(VERSION 3.25)
project(clox C)

set(CMAKE_C_STANDARD 11)

# Enable debug builds by default unless overridden
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Debug)
endif()

# Add executable and sources
add_executable(clox
    main.c
    chunk.c
    debug.c
    memory.c
    value.c
    vm.c
    compiler.c
    scanner.c
        object.h
        object.c
)

# Group headers for IDEs
target_sources(clox PRIVATE
    common.h
    chunk.h
    debug.h
    memory.h
    value.h
    vm.h
    compiler.h
    scanner.h
)

# Enable compiler warnings
if (CMAKE_C_COMPILER_ID STREQUAL "GNU" OR CMAKE_C_COMPILER_ID STREQUAL "Clang")
    target_compile_options(clox PRIVATE -Wall -Wextra -Wpedantic)
endif()

# Export compile_commands.json for tooling
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
