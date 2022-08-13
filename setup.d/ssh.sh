#!/bin/sh
set -e

echo "Setting up ssh..."

ssh-keygen -t ed25519 -C "cseth.michael@gmail.com"
eval "$(ssh-agent -s)"
cp ./src/ssh-config ~/.ssh/config
ssh-add -K ~/.ssh/id_ed25519
