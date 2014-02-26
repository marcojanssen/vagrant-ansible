#!/bin/sh
cd /vagrant/ansible
sudo ansible-playbook -i hosts/development site.yml

#ansible-playbook -K -i hosts/production common.yml

