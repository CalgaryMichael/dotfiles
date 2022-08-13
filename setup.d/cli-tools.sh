#!/bin/sh
set -e

echo "Setting up xcode CLI tools..."

# install cli tools
if ! [ -x "$(command -v xcode-select)" ]; then
  xcode-select --install
else
  echo "xcode CLI already installed. Skipping..."
fi
