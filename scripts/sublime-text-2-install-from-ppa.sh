#!/bin/bash

# Descripiton: Downloads Sublime Text 2 package from PPA and installs package.
# Is cleaner than adding PPA to /etc/apt/sources.list

wget https://launchpad.net/~webupd8team/+archive/ubuntu/sublime-text-2/+files/sublime-text_2.0.2-1~webupd8~3_all.deb
sudo dpkg -i sublime-text_2.0.2-1~webupd8~3_all.deb
rm sublime-text_2.0.2-1~webupd8~3_all.deb

exit 0
