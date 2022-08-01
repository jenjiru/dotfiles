#!/bin/sh

# Script do torrent the latest arch iso

output=$HOME/music
#echo "$output"

day=$(date +%d)
month=$(date +%m)
year=$(date +%y)

cd $output

day=01
month=07

echo "https://archlinux.org/releng/releases/20$year.$month.$day/torrent/"

#until curl -fs 'https://archlinux.org/releng/releases/20$year.$month.$day/torrent/' -o arch.iso.torrent; do
#  echo "There is no version from the $day/$month/$year"
#  sleep 4
#done


curl -fs 'https://archlinux.org/releng/releases/20$year.$month.$day/torrent/' -o arch.iso.torrent

#curl -fs 'https://archlinux.org/releng/releases/2022.07.01/torrent/' -o arch.iso.torrent
aria2c $output/arch.iso.torrent --seed-time=0.01 -d $output











rm $output/arch.iso.torrent

notify-send "  Arch-iso" "downloaded  " -t 4000 -i /home/$USER/pictures/scripts-pic/notify-arch.png

#kill -25 $PPID
