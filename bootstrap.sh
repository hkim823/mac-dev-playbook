#!/bin/sh

#Install Command Line Tools, thanks to https://github.com/rtrouton and https://github.com/Homebrew/install
sudo touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
sudo softwareupdate -i "`softwareupdate -l | grep -B 1 -E "Command Line (Developer|Tools)" | awk -F"*" '/^ +\\*/ {print $2}' | sed 's/^ *//' | tail -n1`"
sudo rm -f /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress

#Install ansible
sudo easy_install pip
sudo pip install ansible

#run playbook

ansible-playbook -vvv main.yml
