#!/bin/sh

cd /usr/share/alsa/ucm2/USB-Audio
sudo rm /usr/share/alsa/ucm2/USB-Audio/USB-Audio.conf
sudo curl -LO https://raw.githubusercontent.com/alsa-project/alsa-ucm-conf/master/ucm2/USB-Audio/USB-Audio.conf

cd /usr/share/alsa/ucm2/USB-Audio/MOTU
sudo rm /usr/share/alsa/ucm2/USB-Audio/MOTU/M2.conf
#sudo curl -LO https://github.com/kiosion/alsa-motu-m2/blob/main/src/MOTU/M2.conf
#sudo curl -LO https://raw.githubusercontent.com/kiosion/alsa-motu-m2/main/src/MOTU/M2.conf
sudo curl -LO https://raw.githubusercontent.com/alsa-project/alsa-ucm-conf/master/ucm2/USB-Audio/MOTU/M2.conf

sudo rm /usr/share/alsa/ucm2/USB-Audio/MOTU/M2-HiFi.conf
#sudo curl -LO https://github.com/kiosion/alsa-motu-m2/blob/main/src/MOTU/M2-HiFi.conf
#sudo curl -LO https://raw.githubusercontent.com/kiosion/alsa-motu-m2/main/src/MOTU/M2-HiFi.conf
sudo curl -LO https://raw.githubusercontent.com/alsa-project/alsa-ucm-conf/master/ucm2/USB-Audio/MOTU/M2-HiFi.conf
