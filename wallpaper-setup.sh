#!/bin/sh

nitrogen --set-zoom-fill --save $HOME/pictures/wallpaper/asian/doge.png

# removing the script
rm $HOME/wallpaper-setup.sh
sed -i '/wallpaper-setup.sh/d' $HOME/.config/awesome/rc.lua
