#!/bin/sh
set -e

echo "Setting up python..."

if [ -x "$(which python3.8)" ]; then
  echo "Python 3.8 already installed. Skipping..."
  exit 0
fi

# install python
curl https://www.python.org/ftp/python/3.8.4/python-3.8.4-macosx10.9.pkg -o ~/Downloads/python-3.8.4.pkg
sudo -S installer -pkg ~/Downloads/python-3.8.4.pkg -target /Applications
rm ~/Downloads/python-3.8.4.pkg

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
/Library/Frameworks/Python.framework/Versions/3.8/bin/python3.8 get-pip.py
rm get-pip.py

sudo /Library/Frameworks/Python.framework/Versions/3.8/bin/pip3 install virtualenvwrapper
