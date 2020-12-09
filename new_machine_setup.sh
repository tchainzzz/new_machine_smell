#!/bin/bash

echo "Python install..."
sudo apt-get update -qq
sudo apt install python3 -qq

echo "Tmux setup..."
cp .tmux.conf ~

echo "Vundle setup..."
cp .vimrc ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo vim +PluginInstall +qall

echo "- YCM engine installing..."
sudo apt install gcc-10 gcc-10-base gcc-10-doc -qq 
sudo apt install libstdc++-10-dev libstdc++-10-doc -qq
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update -qq

sudo apt install build-essential cmake vim-nox python3-dev -qq
sudo apt install mono-complete golang nodejs default-jdk npm -qq
curr_dir=$(pwd)
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
cd "$curr_dir"

echo "Zsh setup"
sudo sed -i "s/required/sufficient/g" /etc/pam.d/chsh
sudo apt install zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"



