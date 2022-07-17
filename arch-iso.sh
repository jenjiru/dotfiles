#!/bin/sh

# Script do torrent the latest arch iso

#day=$(date +%d)
#month=$(date +%m)

cd /home/$USER/Downloads

curl -s 'https://archlinux.org/releng/releases/2022.07.01/torrent/' -o arch.iso.torrent
aria2c /home/$USER/Downloads/arch.iso.torrent --seed-time=0.01 -d /home/$USER/Downloads

rm /home/$USER/Downloads/arch.iso.torrent

notify-send "  Arch-iso" "downloaded  " -t 4000 -i /home/$USER/Pictures/50x50-arch.png

kill -25 $PPID
