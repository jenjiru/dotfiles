#!/bin/sh

sudo timeshift-gtk
sudo timeshift --check

echo 'awful.spawn.with_shell("alacritty -e sudo timeshift --check")' >> $HOME/.config/awesome/rc.lua

# removing the script
sed -i "/timeshift-setup.sh/d" ~/.config/awesome/rc.lua
sudo rm /opt/timeshift-setup.sh
