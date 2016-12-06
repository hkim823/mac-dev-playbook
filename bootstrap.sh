#!/bin/sh

#Install Command Line Tools, thanks to https://github.com/rtrouton and https://github.com/Homebrew/install

sudo touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
sudo softwareupdate -i -a
sudo rm -f /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress

#Install ansible

sudo easy_install pip
sudo pip install ansible

#run playbook

ansible-pull -vvv -U https://github.com/hkim823/mac-dev-playbook main.yml

#exit gracefully

exit 0
