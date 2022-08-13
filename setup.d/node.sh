#!/bin/sh
set -e

brew install nvm

# install node
mkdir -p ~/.nvm
nvm install node
