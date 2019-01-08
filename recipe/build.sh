#!/bin/sh

mkdir build && cd build

cmake \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_PREFIX_PATH=${PREFIX} \
  -DFMILIB_INSTALL_PREFIX=${PREFIX} \
  ..

make install -j${CPU_COUNT}
