# new_machine_smell

Don't you love the smell of a fresh Linux install? Or the smell of starting up a new AWS/GCP instance? Yes, but if only I could have access to the same shell, `vim`, and `tmux` configurations I have on my good old local machine!

This repo is an attempt to mitigate this pain point. Instead of wading through 12039847102389710235 `sudo apt install` commands and wondering which dependency goes where, and Googling the proper Github repos/commands for my installing my favorite `oh-my-zsh` plugins and themes, this set of scripts encapsulates everything that I usually install when I go on a new machine. 

This also includes my personal `.zshrc`, `.tmux.conf`, and `.vimrc` files, if you're interested.

Tested on Ubuntu 18.04 Deep Learning AMI and Linux AMI, Amazon AWS EC2.

## Dependencies
These should come with most modern Ubuntu installations.

* wget 
* git 
* tmux >= 2.1

**Installed using these scripts:**
* Python
* Vim 8.1.2269
* gcc/g++ 10
* clang 8
* zsh

## Scripts

* `conda_time.sh` - pull and install [Miniconda](https://docs.conda.io/en/latest/miniconda.html#linux-installers).
* `github_setup.sh` - copy SSH keys from `.ssh` folder of this repo, set permissions, and add identity. Does **not** take care of key creation, which is covered [here](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent). DO NOT COMMIT YOUR SSH KEYS PUBLICLY, PLEASE. I stored my keys in a folder on my private EFS.
* `new_machine_setup.sh` - installs a bunch of Vim plugins, sets Vim and Tmux configuration, and installs `zsh` and `oh-my-zsh`.
* `zsh_setup.sh` - installs [Powerlevel10K](https://github.com/romkatv/powerlevel10k) theme, as well as the [zsh-z](https://github.com/agkozak/zsh-z) and [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) plugins.
* `zsh_setup_with_conda.sh` - same as above, but also links to an existing [Conda](https://docs.conda.io/en/latest/index.html) installation. Useful if you are using EFS or some persistent file storage service.

## Files
* `.gitignore` -  to prevent you from accidentally committing your SSH keys, if you put them in this repo to run `github_setup.sh`.
* `.zshrc` - My `zsh` configuration. I use `xterm-256color`; see above for `oh-my-zsh` theme and plugin info.
* `.vimrc` - My Vim configuration. Includes plugins (via [Vundle](https://github.com/VundleVim/Vundle.vim)) like [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe), [Airline](https://github.com/vim-airline/vim-airline) (+ [themes](https://github.com/vim-airline/vim-airline-themes)), among others; auto-indent, and mouse bindings.
* `.tmux.conf` - My Tmux configuration. Includes mouse bindings.

Feel free to repurpose these for your own use. These aren't the cleanest scripts and don't always work perfectly -- but it makes my setup much much faster than before.
