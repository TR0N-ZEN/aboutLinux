#/bin/bash  

sudo mkdir ./steam/
  cd ./steam/ && curl 'https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb' -o steamInstaller.deb
    sudo dpkg -i steamInstaller.deb
    sudo apt-get -f install && sudo dpkg -i steamInstaller.deb
  cd ../
sudo rm -r ./steam/
