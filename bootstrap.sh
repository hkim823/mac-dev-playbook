#!/bin/sh

#Install Command Line Tools, thanks to https://github.com/rtrouton
./install_xcode_command_line_tools.sh

#Install ansible
sudo easy_install pip
sudo pip install ansible

#run playbook

ansible-playbook -vvv main.yml --ask-vault-pass
