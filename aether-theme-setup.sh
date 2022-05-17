#!/bin/sh

echo "Updating Login-Manager theme and rebooting"
sudo cp -r ~/umi-tmp/localstorage/ /var/lib/lightdm/.local/share/webkitgtk/
sudo rm /opt/scripts/aether-theme-setup
sed -i '/awful.spawn.with_shell("alacritty -e /opt/scripts/aether-theme-setup.sh")/d' ~/.config/awesome/rc.lua
reboot
