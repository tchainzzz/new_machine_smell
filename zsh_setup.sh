#!/bin/bash
cp .zshrc ~
source ~/.zshrc
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i "s/robbyrussell/powerlevel10k\/powerlevel10k/g" ~/.zshrc
sed -i "s/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-z)/g" ~/.zshrc

source ~/.zshrc 
# automaically calls p10k configure
