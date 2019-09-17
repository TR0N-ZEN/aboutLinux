#! /bin/bash
echo "I will setup your OS with some apps"
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
sudo add-apt-repository "deb http://repository.spotify.com stable non-free"
sudo apt-get update
sudo apt-get upgrade
sudo snap install --classic code # or code-insiders
sudo apt install git
git --version
git config --global user.name "Theo"
git config --global user.email "theo.reichert7@gmail.com"
git config --list
sudo apt-get install spotify-client
sudo snap install discord --classic