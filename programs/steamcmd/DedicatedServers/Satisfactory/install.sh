#!/bin/bash

steamcmd +force_install_dir ~/SatisfactoryDedicatedServer +login anonymous +app_update 1690800 validate +quit

sudo cp ./SatisfactoryDS.service /etc/systemd/system/
sudo cp ./start.sh ~/SatisfactoryDedicatedServer/
sudo chmod +x ~/SatisfactoryDedicatedServer/start.sh

sudo touch /var/log/satisfactory.log
sudo touch /var/log/satisfactory.err
