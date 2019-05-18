#!/bin/sh
cmake_version="3.14.3"
cd $HOME/.local
wget https://github.com/Kitware/CMake/releases/download/v${cmake_version}/cmake-${cmake_version}.tar.gz
nice -n 19 tar -xf cmake-${cmake_version}.tar.gz
cd cmake-${cmake_version}
nice -n 19 ./configure --prefix=$HOME/.local
nice -n 19 make -j${nproc}
nice -n 19 porg -lD "make install"
cd
cd $HOME/.local
rm -r cmake-${cmake_version}/
rm cmake-${cmake_version}.tar.gz
