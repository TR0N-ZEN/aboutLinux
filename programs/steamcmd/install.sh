#!/bin/bash

#sudo adduser steam

mkdir /home/steam/steamcmd/
cd /home/steam/steamcmd
curl http://media.steampowered.com/installer/steamcmd_linux.tar.gz | tar -xzf -
echo "alias steamcmd='/home/steam/steamcmd/steamcmd.sh'" >> /home/steam/.bashrc
source /home/steam/.bashrc # not sure if necessary or just open new shell
sudo apt-get install lib32gcc1
steamcmd
