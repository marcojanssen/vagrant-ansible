#!/bin/sh
sudo apt-get update
sudo apt-get install python-software-properties -y
sudo apt-get install python-pip python-dev -y
sudo pip install ansible
sudo ansible-galaxy install servergrove.symfony2