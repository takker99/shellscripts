cd $HOME/.local
wget https://github.com/Kitware/CMake/releases/download/v3.14.3/cmake-3.14.3.tar.gz
nice -n 19 tar -xf cmake-3.14.3.tar.gz
cd cmake-3.14.3
nice -n 19 ./configure --prefix=$HOME/.local
nice -n 19 make -j4
nice -n 19 porg -lD "make install"
cd
cd $HOME/.local
rm -r cmake-3.14.3/
rm cmake-3.14.3.tar.gz
