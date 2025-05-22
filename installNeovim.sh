#!/bin/bash

#Execute with sudo privileges
if [ $EUID != 0 ]; then
    export USER_HOME="$HOME"
    sudo -E "$0" "$@"
    exit $?
fi

#Download and unpack
echo "Downloading and installing neovim..."
if curl -LOs https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
then
    echo "Download successfull"
else
    echo "Error downloading neovim. Exiting..."
    exit $?
fi

sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
#sudo rm nvim-linux-x86_64.tar.gz

#Path stuff for bash
if ! grep -q '/opt/nvim-linux-x86_64/bin' "$USER_HOME/.profile"; then
    echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> "$USER_HOME/.profile"
fi
source "$USER_HOME/.profile"

sudo cp ./nvim-linux-x86_64/share/applications/nvim.desktop /usr/share/applications

echo "Installation successfull"

#Install Telescope dependencie
sudo apt install ripgrep

#Todo:
#Check if ripgrep is already installed
#Install kitty and config files
#   Upload config files to github
#Install 0xProtoNerd font for Kitty
