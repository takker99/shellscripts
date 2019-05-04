mkdir $HOME/.local
wget https://sourceforge.net/projects/porg/files/porg-0.10.tar.gz
tar xf porg-0.10.tar.gz
cd porg-0.10
nice -n 19 ./configure --prefix=$HOME/.local --sysconfdir=$HOME/.local/etc --with-porg-logdir=$HOME/.local/var/log/porg --disable-grop
nice -n 19 make -j4
nice -n 19 mkdir -p $HOME/.local/var/log/porg
nice -n 19 ./porg/porg -lD make install
