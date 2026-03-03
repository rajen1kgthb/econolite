set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR ppc)

# Specify the Cross-Compiler using the standard /usr/bin path
set(CMAKE_C_COMPILER /usr/bin/powerpc-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER /usr/bin/powerpc-linux-gnu-g++)

# Note: Since this is a standard apt package, we don't strictly need 
# a sysroot path for basic builds, but we keep these modes for safety.
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
