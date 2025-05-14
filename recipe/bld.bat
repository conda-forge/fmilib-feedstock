

git clone https://github.com/modelon-community/fmi-library.git
cd fmi-library


cmake -LAH -G Ninja                                         ^
  -DCMAKE_BUILD_TYPE=Release                                ^
  -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%"                    ^
  -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%"                 ^
  -DFMILIB_BUILD_TESTS=OFF                                  ^
  -DFMILIB_EXTERNAL_LIBS=ON                                 ^
   -B build_ .
if errorlevel 1 exit 1

cmake --build build_ --config Release --target install
if errorlevel 1 exit 1
