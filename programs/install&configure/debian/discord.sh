#!/bin/bash

sudo mkdir ./discord/
  cd ./discord/ && curl 'https://discord.com/api/download?platform=linux&format=deb' -o discordInstaller.deb
    sudo dpkg -i discordInstaller.deb
    sudo apt-get -f install && sudo dpkg -i discordInstaller.deb
  cd ../
sudo rm -r ./discord/
