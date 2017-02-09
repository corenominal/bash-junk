#!/bin/bash

FLAG=false

echo "font configuration"
echo "=================="

# Create font config files
#=========================
if [ ! -d ~/.config/fontconfig ]; then
    mkdir -p ~/.config/fontconfig
fi

if [ ! -f ~/.config/fontconfig/fonts.conf ]; then
    echo "* Creating fonts.conf file"
    wget https://raw.githubusercontent.com/corenominal/bash-junk/master/assets/fonts.conf -O fonts.conf
    mv fonts.conf ~/.config/fontconfig/fonts.conf
    echo "  Done."
    FLAG=true
fi

if [ ! -f ~/.Xresources ]; then
    echo "* Creating .Xresources file"
    wget https://raw.githubusercontent.com/corenominal/bash-junk/master/assets/.Xresources -O .Xresources
    mv .Xresources ~/.Xresources
    echo "  Done."
    FLAG=true
fi

if [ "${FLAG}" = false ]; then
    echo "Font config files already exist! Nothing to do."
fi

echo "For more details about font configuration, see: "
echo "https://wiki.archlinux.org/index.php/Font_configuration"

exit 0
