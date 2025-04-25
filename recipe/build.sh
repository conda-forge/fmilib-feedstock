#!/bin/sh
# Get an updated config.sub and config.guess
#cp $BUILD_PREFIX/share/gnuconfig/config.* ./ThirdParty/Expat/expat-2.4.8/conftools

sed -i.bak "s|/usr/bin/libtool|\${CMAKE_LIBTOOL}|g" Config.cmake/mergestaticlibs.cmake

cmake ${CMAKE_ARGS} \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_PREFIX_PATH=${PREFIX} \
  -DCMAKE_INSTALL_PREFIX=${PREFIX} \
  -DFMILIB_BUILD_TESTS=OFF \
  -B build_ .

cmake --build build_ --target install --parallel ${CPU_COUNT}
