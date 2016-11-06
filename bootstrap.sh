#!/bin/sh

#Install ansible
sudo easy_install pip
sudo pip install ansible

#run playbook

ansible-playbook -vvv main.yml --ask-vault-pass
