#!/bin/sh
set -e

echo "Setting up git..."

# setup git (NOTE: manually adding to GitHub is still necessary)
git config --global user.name "Calgary Michael"
git config --global user.email "cseth.michael@gmail.com"
git config --global alias.st status
