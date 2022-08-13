#!/bin/sh
set -e

echo "Setting up Homebrew..."

# Install Homebrew
if ! [ -x "$(command -v brew)" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
else
  echo "Homebrew already installed. Skipping..."
fi
