#!/bin/sh
set -e

echo "Setting up zsh..."

brew install zsh \
  tmux

# set zsh as default
chsh -s $(which zsh)

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install starship
sudo /usr/local/bin
brew tap homebrew/cask-fonts && brew install --cask font-3270-nerd-font
curl -sS https://starship.rs/install.sh | sh
