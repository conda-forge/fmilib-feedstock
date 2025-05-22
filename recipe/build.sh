#!/bin/sh


git clone https://github.com/modelon-community/fmi-library.git
cd fmi-library

cmake ${CMAKE_ARGS} \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_PREFIX_PATH=${PREFIX} \
  -DCMAKE_INSTALL_PREFIX=${PREFIX} \
  -DFMILIB_BUILD_TESTS=OFF \
  -DFMILIB_EXTERNAL_LIBS=ON \
  -B build_ .

cmake --build build_ --target install --parallel ${CPU_COUNT}
