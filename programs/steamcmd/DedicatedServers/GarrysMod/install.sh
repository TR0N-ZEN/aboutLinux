#!/bin/bash

# if errors uccur involving uninstalled packages like the following uncomment the following lines
#sudo apt-get install libc6-i386 lib32stdc++6 lib32gcc1 libncurses5 lib32z1

steamcmd +force_install_dir ~/GarrysModDS +login anonymous +app_update 4020 validate +quit

sudo cp ./GarrysModDS.service /etc/systemd/system/
sudo cp ./start.sh ~/GarrysModDS/
sudo chmod +x ~/GarrysModDS/start.sh

