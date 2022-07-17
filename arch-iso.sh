#!/bin/sh

# Script do torrent the latest arch iso

#day=$(date +%d)
#month=$(date +%m)

cd ~/Downloads

curl -s 'https://archlinux.org/releng/releases/2022.07.01/torrent/' -o arch.iso.torrent
aria2c ~/Downloads/arch.iso.torrent --seed-time=0.01 -d ~/Downloads
rm ~/Downloads/arch.iso.torrent
notify-send "  Arch-iso" "downloaded  " -t 4000 -i ~/Pictures/50x50-arch.png
#kill -25 $PPID
