#!/bin/sh
set -e

echo "Setting up folder structure..."

# init folders
mkdir -p ~/repos
mkdir -p ~/bin
mkdir -p ~/go

cp ./src/.vimrc ~/.vimrc
cp ./src/.zshrc ~/.zshrc
cp -r ./src/.config ~/.config
