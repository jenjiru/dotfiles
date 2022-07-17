#!/bin/sh

# Script do torrent the latest arch iso

day=$(date +%d)
month=$(date +%m)

cd ~/Downloads
sleep 2
rm ~/Downloads/arch.iso.torrent
sleep 5
curl 'https://archlinux.org/releng/releases/2022.07.01/torrent/' -o arch.iso.torrent

echo "it is the $day.$month"
#date +%d 
#date +%m
