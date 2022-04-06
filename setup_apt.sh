#!/bin/bash
echo "setup_apt.sh"
sudo apt-get update && sudo apt-get upgrade

# packages via apt
sudo apt install git
git --version
git config --global user.name "Theo"
git config --global user.email "theo.reichert7@gmail.com"
#git config --list

sudo apt install vim
sudo apt install code
sudo apt install vlc spotify 
sudo apt install discord -classic
sudo apt install posgresql-client
sudo apt install jq htop man info

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
#command -v nvm
nvm install 16.13.0
#sudo apt install npm

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