
cmake -LAH -G"NMake Makefiles"                               ^
  -DCMAKE_BUILD_TYPE=Release                                 ^
  -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%"                     ^
  -DFMILIB_INSTALL_PREFIX="%LIBRARY_PREFIX%"                 ^
   -B build_ .
if errorlevel 1 exit 1

cmake --build build_ --config Release --target install
if errorlevel 1 exit 1
