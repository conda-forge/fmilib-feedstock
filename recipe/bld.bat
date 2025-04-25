
cmake -LAH -G Ninja                                          ^
  -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%"                     ^
  -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%"                 ^
  -DCMAKE_BUILD_TYPE=Release                                ^
   -B build_ .
if errorlevel 1 exit 1

cmake --build build_ --config Release --target install
if errorlevel 1 exit 1
