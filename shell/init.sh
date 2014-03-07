#!/bin/sh
sudo cp /vagrant/files/sources.list /etc/apt/sources.list
sudo cp /vagrant/files/.bashrc /home/vagrant/.bashrc
sudo chown vagrant. /home/vagrant/.bashrc
sudo cp /vagrant/files/.bashrc /root/.bashrc
sudo apt-get update