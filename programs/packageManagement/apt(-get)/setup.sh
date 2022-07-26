#!/bin/bash

echo "setup_apt.sh"
sudo apt-get update && sudo apt-get upgrade

# packages via apt
sudo apt install git
git --version
git config --global user.name "Theo"
git config --global user.email "theo.reichert7@gmail.com"
git config --global core.autocrlf true
#git config --list

sudo apt install vim jq htop man info curl posgresql-client wget
#sudo apt install code
sudo apt-get install wget gpg
wget -qO- 'https://packages.microsoft.com/keys/microsoft.asc' | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code
sudo apt install vlc spotify 
#sudo apt install discord -classic
sudo mkdir tmp
  cd ./tmp/
  sudo mkdir ./discord/
    cd ./discord/ && curl 'https://discord.com/api/download?platform=linux&format=deb' -o discordInstaller.deb
      sudo dpkg -i discordInstaller.deb
      sudo apt-get -f install && sudo dpkg -i discordInstaller.deb
    cd ../
  sudo rm -r ./discord/
  sudo mkdir ./steam/
    cd ./steam/ && curl 'https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb' -o steamInstaller.deb
      sudo dpkg -i steamInstaller.deb
      sudo apt-get -f install && sudo dpkg -i steamInstaller.deb
    cd ../
  sudo rm -r ./steam/
  # printer
  # https://www.canon.de/support/consumer_products/products/fax__multifunctionals/inkjet/pixma_tr_series/pixma-tr4550.html?type=drivers&language=de&os=linux%20(64-bit)
  sudo mkdir ./printer/
    cd ./printer/ && \
      curl 'https://gdlp01.c-wss.com/gds/8/0100009928/01/cnijfilter2-5.70-1-deb.tar.gz' -o - -s | tar xz - && . './cnijfilter2-5.70-1-deb/install.sh' && sudo rm -r './cnijfilter2-5.70-1-deb'
      curl 'https://gdlp01.c-wss.com/gds/1/0100009931/01/scangearmp2-3.70-1-deb.tar.gz' -o - -s | tar xz - && . './scangearmp2-3.70-1-deb/install.sh' && sudo rm -r './scangearmp2-3.70-1-deb'
    cd ../
  sudo rm -r ./printer/
cd ../ && sudo rm -r ./tmp/

export NVS_HOME="$HOME/.nvs"
git clone https://github.com/jasongin/nvs "$NVS_HOME"
. "$NVS_HOME/nvs.sh" install
nvs add lts
nvs use lts
nvs link lts


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

## additional
  # Firefox Tweaks:
    # about:config
        # layers.acceleration.force-enabled
        # gfx.webrender.all
        # dom.webgpu.enabled