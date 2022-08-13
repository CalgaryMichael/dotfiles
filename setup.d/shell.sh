#!/bin/sh
set -e

echo "Setting up zsh..."

brew install zsh

# set zsh as default
chsh -s $(which zsh)

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
