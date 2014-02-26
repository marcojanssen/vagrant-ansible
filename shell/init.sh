#!/bin/sh
sudo cp /vagrant/files/sources.list /etc/apt/sources.list
sudo cp /vagrant/files/.bashrc dest=/home/vagrant/.bashrc
sudo chown vagrant. /vagrant/files/.bashrc
sudo cp /vagrant/files/.bashrc dest=/root/.bashrc
sudo apt-get update