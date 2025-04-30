#!/bin/sh

cmake ${CMAKE_ARGS} \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_PREFIX_PATH=${PREFIX} \
  -DCMAKE_INSTALL_PREFIX=${PREFIX} \
  -DFMILIB_BUILD_TESTS=OFF \
  -B build_ .

cmake --build build_ --target install --parallel ${CPU_COUNT}
