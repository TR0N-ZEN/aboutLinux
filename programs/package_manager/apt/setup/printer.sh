#!/bin/bash

# printer
# https://www.canon.de/support/consumer_products/products/fax__multifunctionals/inkjet/pixma_tr_series/pixma-tr4550.html?type=drivers&language=de&os=linux%20(64-bit)
sudo mkdir ./printer/
  cd ./printer/ && \
    curl 'https://gdlp01.c-wss.com/gds/8/0100009928/01/cnijfilter2-5.70-1-deb.tar.gz' -o - -s | tar xz - && . './cnijfilter2-5.70-1-deb/install.sh' && sudo rm -r './cnijfilter2-5.70-1-deb'
    curl 'https://gdlp01.c-wss.com/gds/1/0100009931/01/scangearmp2-3.70-1-deb.tar.gz' -o - -s | tar xz - && . './scangearmp2-3.70-1-deb/install.sh' && sudo rm -r './scangearmp2-3.70-1-deb'
  cd ../
sudo rm -r ./printer/
  