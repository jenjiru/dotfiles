#!/bin/sh

# Script to torrent the latest arch iso

output=$HOME/downloads

day=$(date +%d)
month=$(date +%m)
year=$(date +%y)

cd $output

until curl -fs "https://archlinux.org/releng/releases/20$year.$month.$day/torrent/" -o arch.iso.torrent; do
  if [ $day -eq 1 ]
  then
	  day=31
	  month=`expr $month - 1`
	  if [ $month -eq 0 ]
	  then
		  month=12
		  year=`expr $year - 1`
	  fi
  else
	  day=`expr $day - 1`
  fi

  if [ ${#day} -eq 1 ]; then
	  day=0$day
  fi
  if [ ${#month} -eq 1 ]; then
	  month=0$month
  fi
done

aria2c $output/arch.iso.torrent --seed-time=0.01 -d $output

rm $output/arch.iso.torrent
notify-send "  Arch-iso" "downloaded  " -t 4000 -i /home/$USER/pictures/scripts-pic/notify-arch.png
kill -25 $PPID
