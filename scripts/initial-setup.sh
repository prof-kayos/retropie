#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install vim git unattended-upgrades ssh-import-id ssh

sudo systemctl enable ssh.service

ssh-import-id-gh prof-kayos

sed -i 's/#PasswordAuthentication.*/PasswordAuthentication no/' /etc/ssh/sshd_config

sudo systemctl restart sshd.service

ip addr | grep 'inet '

sudo apt install git lsb-release

cd $HOME
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git

cd RetroPie-Setup

sudo raspi-config
