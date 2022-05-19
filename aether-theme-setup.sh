#!/bin/sh

echo "Updating Login-Manager theme and rebooting"

sudo rm /usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/js/Components/Settings/DefaultThemes.js
cd /usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/js/Components/Settings/
sudo curl -LO https://raw.githubusercontent.com/Prihler/dotfiles/main/DefaultThemes.js

#sudo cp -r ~/umi-tmp/localstorage/ /var/lib/lightdm/.local/share/webkitgtk/localstorage/
#sudo touch /var/lib/lightdm/.local/share/webkitgtk/localstorage/file__0.localstorage-wal
sudo rm /opt/scripts/aether-theme-setup.sh
sudo rm -r ~/umi-tmp
sed -i '/aether/d' ~/.config/awesome/rc.lua

reboot
