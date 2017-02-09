#!/bin/bash

echo "git setup"
echo "========="

# Install git
#============
sudo apt-get install git

# Do basic git set-up
#====================
if [ -x "/usr/bin/git" ]; then
    git config --global user.name "Philip Newborough"
    git config --global user.email "corenominal@corenominal.org"
    git config --global user.name
    git config --global user.email
fi

exit 0
