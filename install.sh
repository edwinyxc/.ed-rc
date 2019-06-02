#!/bin/bash
# Basics Tools (TODO remove deps from ubuntu /susu /apt)
sudo apt-get update 
sudo apt-get install -y zip unzip curl wget tmux vim git \
                        silversearcher-ag \
                        python3 pip-python3

# Oh my Bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

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

#Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
