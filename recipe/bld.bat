
mkdir build && cd build

cmake -LAH -G"NMake Makefiles"                               ^
  -DCMAKE_BUILD_TYPE=Release                                 ^
  -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%"                     ^
  -DFMILIB_INSTALL_PREFIX="%LIBRARY_PREFIX%"                 ^
   ..
if errorlevel 1 exit 1

cmake --build . --config Release --target install
if errorlevel 1 exit 1
