#!/bin/sh
set -e

echo "Setting up system packages..."

# Install various packages
brew tap mongodb/brew
brew tap dbcli/tap
brew install golang \
    postgresql \
    pgcli \
    mongodb-community
brew install --cask docker
