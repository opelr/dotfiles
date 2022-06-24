#!/bin/bash

sudo -v

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin main

# Package managers & packages

. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/zsh.sh"

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/runcom/.vimrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.zshrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.zshrc_work" ~
ln -sfv "$DOTFILES_DIR/runcom/.tmux.conf" ~
ln -sfv "$DOTFILES_DIR/runcom/.alacritty.yml" ~
ln -sfv "$DOTFILES_DIR/runcom/.tool-versions" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore" ~

mkdir -p ~/.config
ln -sfv "$DOTFILES_DIR/runcom/starship.toml" ~/.config

# OS X

. "$DOTFILES_DIR/osx/defaults.sh"
. "$DOTFILES_DIR/osx/dock.sh"
