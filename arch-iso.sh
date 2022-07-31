#!/bin/sh

# Script do torrent the latest arch iso

#day=$(date +%d)
#month=$(date +%m)
#year=$(date +%y)


cd /home/$USER/downloads

curl -s 'https://archlinux.org/releng/releases/2022.07.01/torrent/' -o arch.iso.torrent
aria2c /home/$USER/downloads/arch.iso.torrent --seed-time=0.01 -d /home/$USER/downloads

rm /home/$USER/downloads/arch.iso.torrent

notify-send "  Arch-iso" "downloaded  " -t 4000 -i /home/$USER/pictures/scripts-pic/notify-arch.png

kill -25 $PPID
