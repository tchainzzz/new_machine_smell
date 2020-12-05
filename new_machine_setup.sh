#!/bin/bash

echo "Setting up Github SSH key..."

if [ ! -d ".ssh" ]; then
    echo "No directory .ssh -- please make your own or copy from your local filesystem, as committing those to a repo is considered a very silly idea."
    exit 1
fi

cp -r .ssh ~
chmod 600 ~/.ssh/id_rsa
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
ssh-add -l -E sha256



echo "Python install..."
sudo apt-get update -y
sudo apt install python3

echo "Tmux setup..."
cp .tmux.conf ~

echo "Vundle setup..."
cp .vimrc ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo vim +PluginInstall +qall

echo "- YCM engine installing..."
sudo apt install gcc-10 gcc-10-base gcc-10-doc 
sudo apt install libstdc++-10-dev libstdc++-10-doc 
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update

sudo apt install build-essential cmake vim-nox python3-dev
sudo apt install mono-complete golang nodejs default-jdk npm
curr_dir=$(pwd)
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
cd "$curr_dir"

echo "Zsh setup"
sudo sed -i "s/required/sufficient/g" /etc/pam.d/chsh
sudo apt install zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"



