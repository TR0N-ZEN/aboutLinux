#!/bin/bash

# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
# source ~/.bashrc
# #command -v nvm
# nvm install 16.13.0
# sudo apt install npm

# git config --global user.name "Theo"
# git config --global user.email "theo.reichert7@gmail.com"

cd /home/zettiserver
git clone https://github.com/TR0N-ZEN/Zetti.git
cd Zetti/javascript/server/
npm install

# tmux <create session>
# tmux send-keys <make windows, panes and execute commands in each terminal>
# tmux send-keys <node server.js>
