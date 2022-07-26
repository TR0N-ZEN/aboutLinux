#!/bin/bash

echo "setup_apt.sh"
sudo apt-get update && sudo apt-get upgrade

# packages via apt
sudo apt install git

sudo apt install vim jq htop man info curl posgresql-client wget
#sudo apt install code
sudo apt-get install wget gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code
sudo apt install vlc spotify 

# packages via snap
# sudo snap install --classic code # or code-insiders
# sudo snap install vlc
# sudo snap install spotify
# sudo snap install discord --classic

## appearance
sudo apt install gnome-tweak-tool
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-circle

