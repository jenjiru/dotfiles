#!/bin/sh

# Script do torrent the latest arch iso

day=$(date +%d)
month=$(date +%m)
sleep 2
cd ~/Downloads
curl -s 'https://archlinux.org/releng/releases/2022.07.01/torrent/' -o arch.iso.torrent
sleep 10
rm ~/Downloads/arch.iso.torrent
notify-send "Arch iso downlaod is done." -t 4000
echo "it is the $day.$month"
#date +%d 
#date +%m
