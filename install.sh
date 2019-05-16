#!/bin/bash
# Basics Tools
apt-get update 
apt-get install -y zip unzip curl wget tmux vim git
# Oh my Bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# Install pathogen.vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install syntastic as a Pathogen Bundle
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic

# Install ack.vim
git clone https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack.vim

# Install Ctags
## clone from github
# git clone https://github.com/universal-ctags/ctags ~/.ctags
## build & install
#cd ~/.ctags
#./autogen.sh
#./configure
#make
#sudo make install
#cd -

# Install Tagbar
git clone --depth=1 https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar

# Install ap/vim-buftabline
git clone https://github.com/ap/vim-buftabline.git ~/.vim/bundle/vim-buftabline

#Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# vim-javascript
# it clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript


ln -s ~/.ed-rc/.vimrc ~/.vimrc 
ln -s  ~/.ed-rc/.tmux.conf ~/.tmux.conf

#source ~/.ed-rc/env_rust.sh

