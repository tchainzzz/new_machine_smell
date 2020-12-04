#!/bin/bash
if [[ -z "$1" ]]; then
    echo "You must pass a string for environment variable \$CONDA_HOME as the first argument of this script."
    exit 1 
fi

export CONDA_HOME=$1
if [[-d "$CONDA_HOME"]]; then
    echo "Invalid directory passed as \$CONDA_HOME: $CONDA_HOME does not exist."
    unset CONDA_HOME
    exit 1
fi

cp .zshrc ~
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i "s/robbyrussell/powerlevel10k\/powerlevel10k/g" ~/.zshrc
sed -i "s/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-z)/g" ~/.zshrc


echo "# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
export CONDA_HOME=$CONDA_HOME
__conda_setup=\"\$('\$CONDA_HOME/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)\"
if [ \$? -eq 0 ]; then
    eval \"\$__conda_setup\"
else
    if [ -f \"\$CONDA_HOME/miniconda3/etc/profile.d/conda.sh\" ]; then
        . \"\$CONDA_HOME/miniconda3/etc/profile.d/conda.sh\"
    else
        export PATH=\"\$CONDA_HOME/miniconda3/bin:\$PATH\"
    fi
fi
unset __conda_setup
# <<< conda initialize <" >> ~/.zshrc

source ~/.zshrc

