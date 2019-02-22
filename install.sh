#!/bin/bash
# Basics
# Install pathogen.vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install syntastic as a Pathogen Bundle
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic

# Install Ctags
## clone from github
git clone https://github.com/universal-ctags/ctags ~/.ctags
## build & install
cd ~/.ctags
./autogen.sh
./configure
make
sudo make install
cd -

# Install Tagbar
git clone --depth=1 https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar

# Install ap/vim-buftabline
git clone https://github.com/ap/vim-buftabline.git ~/.vim/bundle/vim-buftabline

#Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tpm/plugins/tpm

# vim-javascript
# it clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript


ln -s ~/.ed-rc/.vimrc ~/.vimrc 
ln -s  ~/.ed-rc/.tmux.conf ~/.tmux.conf

source ~/.ed-rc/env_rust.sh

