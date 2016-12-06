#!/bin/sh

#Install Command Line Tools, thanks to https://github.com/rtrouton and https://github.com/Homebrew/install

sudo /usr/bin/touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
sudo /usr/sbin/softwareupdate -i -a
sudo /bin/rm -f /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress

#Install ansible

sudo /usr/bin/easy_install pip
sudo /usr/local/bin/pip install ansible

#run playbook

/usr/local/bin/ansible-pull -v -U https://github.com/hkim823/mac-dev-playbook main.yml

#exit gracefully

exit 0
