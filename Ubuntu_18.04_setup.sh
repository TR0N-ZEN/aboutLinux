#! /bin/bash
echo "I will setup your OS with some apps"
sudo apt-get update
sudo apt-get upgrade
sudo snap install --classic code # or code-insiders
sudo apt install git
git --version
git config --global user.name "Theo"
git config --global user.email "theo.reichert7@gmail.com"
git config --list
sudo snap install spotify
sudo snap install discord --classic