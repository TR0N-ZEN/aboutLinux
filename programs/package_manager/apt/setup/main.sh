#!/bin/bash

echo "setup_apt.sh"
sudo apt-get update -y && sudo apt-get upgrade -y


sudo apt install \
  vim \
  git \
  jq \
  htop \
  man \
  info \
  curl \
  posgresql-client \
  wget \
  gpg \
  apt-transport-https \
  nwget

sudo apt update

sudo apt install \
  code \
  vlc \
  spotify 

# packages via snap
# sudo snap install --classic code # or code-insiders
# sudo snap install vlc
# sudo snap install spotify
# sudo snap install discord --classic
