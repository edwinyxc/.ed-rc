#!/bin/bash
# Basics Tools (TODO remove deps from ubuntu /susu /apt)
# vim 8.2 for coc.nvim && popup-window
# 1. build-essential && tools
sudo apt-get update
sudo apt-get install -y build-essential ncurses-dev \
	zip unzip curl wget tmux git \
	silversearcher-ag ctags fd-find \
	bash-completion

# Oh my Bash
echo exit | bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" 

# build latest vim
mkdir ~/.buildrepos
cd ~/.buildrepos/
git clone https://github.com/vim/vim.git
cd vim
./configure
make
sudo make install
cd ~
echo 'export EDITOR=vi' >> ~/.bashrc

# make soft links
sudo ln -sf /usr/local/bin/vim /usr/bin/vi
sudo ln -sf /usr/local/bin/vim /usr/bin/vim
ln -s ~/.ed-rc/.vimrc ~/.vimrc 
ln -s  ~/.ed-rc/.tmux.conf ~/.tmux.conf

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install fzf 
# TODO non-interactive install
# TODO use fd as default finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf 
yes Y | ~/.fzf/install

# respecting .gitignore
echo 'export FZF_DEFAULT_COMMAND="fd --type file --follow --hidden --exclude .git --color=always"' >> ~/.bashrc
echo 'export FZF_DEFAULT_OPTS="--ansi"' >> ~/.bashrc
echo 'export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"' >> ~/.bashrc

#Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# nvm and node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# source current oh my bash
source ~/.bashrc

nvm install --lts
vim + 'PlugInstall --sync' +qa 


