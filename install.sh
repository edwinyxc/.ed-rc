#!/bin/bash

#Install pathogen.vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#vim-javascript
clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript

ln -s ~/.ed-rc/.vimrc ~/.vimrc 
ln -s  ~/.ed-rc/.tmux.conf ~/.tmux.conf

