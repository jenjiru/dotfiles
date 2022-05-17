#!/bin/sh

echo "Updating Login-Manager theme and rebooting"
sudo cp -r ~/umi-tmp/localstorage/ /var/lib/lightdm/.local/share/webkitgtk/
sudo rm /opt/scripts/aether-theme-setup.sh
sed -i '/aether/d' ~/.config/awesome/rc.lua
reboot
