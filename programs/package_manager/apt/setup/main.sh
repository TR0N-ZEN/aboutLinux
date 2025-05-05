#!/bin/bash

function tools_cli {
  echo 'Installing programs for command line interface'
  sudo apt install -y \
    apt-transport-https \
    curl \
    gawk \
    git \
    gnupg \
    gpg \
    htop \
    info \
    iproute2 \
    iputils-ping \
    jq \
    man \
    nano \
    sed \
    ssh \
    tmux \
    tree \
    vim \
    wget \
    yamllint
}

function tools_server {
  tools_cli
  echo 'Installing programs for a computer acting as a server'
  sudo apt install -y \
    fail2ban \
    ufw
}

function tools_desktop {
  tools_cli
  echo 'Installing programs for machine with desktop environment'
  sudo apt install -y \
    vlc
}


function main {
  sudo pwd
  if [ $? -ne 0 ]; then
    cat << EOF
get sudo working
enter the following into your shell
  apt update;
  apt install sudo;
  adduser x;
  usermod -aG sudo x;
  su x;
EOF
# EOF has to be at the beginning of the line
    exit 1
  fi;
  echo "setup_apt.sh"
  sudo apt-get update -y && sudo apt-get upgrade -y
  while getopts ":cds" option; do
    case $option in
      c)
        tools_cli
        exit;;
      d)
        tools_desktop
        exit;;
      s)
        tools_server
        exit;;
      \?)
        echo 'Invalid option!'
        exit;;
    esac
  done
}


# $* is the arguments supplied to the called script
main $*

