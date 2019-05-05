cd $HOME/git
git clone https://github.com/neovim/neovim.git
cd neovim
nice -n 19 rm -r build/
nice -n 19 make -j4 CMAKE_BUILD_TYPE=Release
nice -n 19 porg -lD "make CMAKE_INSTALL_PREFIX=$HOME/.local/nvim install"

export PATH="$HOME/.local/neovim/bin:$PATH"
