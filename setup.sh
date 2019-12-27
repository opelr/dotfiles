#!/bin/bash

sudo -v

# Install packages via apt
sudo apt install $(cat apt-pkgs.txt)

# Install VSCode
sudo snap install --classic code

# Install global Python packages
python3 -m pip install pipenv black flake8 mypy

# Configure zsh
sh ./zsh/zsh_setup.sh

# Link dotfiles (.tmux, .vim, .zshrc, etc.)
ln -s $(pwd)/.gitconfig ~
ln -s $(pwd)/.gitignore ~
ln -s $(pwd)/.tmux.conf ~
ln -s $(pwd)/.vimrc ~
ln -s $(pwd)/.zshrc ~
