#!/bin/bash
# Basics Tools (TODO remove deps from ubuntu /susu /apt)
# vim 8.1 for coc.nvim
sudo add-apt-repository ppa:jonathonf/vim
sudo apt-get update 
sudo apt-get install -y zip unzip curl wget tmux vim git \
                        silversearcher-ag global ctags \
                        python3 pip-python3

sudo pip install pygments

# make soft links
ln -s ~/.ed-rc/.vimrc ~/.vimrc 
ln -s  ~/.ed-rc/.tmux.conf ~/.tmux.conf

# Install fzf 
# TODO non-interactive install
# TODO use fd as default finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf 
~/.fzf/install

#Install fd 
wget https://github.com/sharkdp/fd/releases/download/v7.3.0/fd_7.3.0_amd64.deb -O /tmp/fd.deb
sudo dpkg -i /tmp/fd.deb
# respecting .gitignore
echo 'export FZF_DEFAULT_COMMAND="fd --type f"' >> ~/.bashrc

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# nodejs (required for coc.nvim)
curl -sL install-node.now.sh/lts | sudo bash
    # Optional install yarn if you want install extension by CocInstall command
curl --compressed -o- -L https://yarnpkg.com/install.sh | bash

#Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Oh my Bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

