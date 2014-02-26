# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "debian-wheezy72-x64-vbox43"
  config.vm.box_url = "http://box.puphpet.com/debian-wheezy72-x64-vbox43.box"

  config.vm.network :private_network, ip: "192.168.2.200"

  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, '--chipset', 'ich9'] # solves kernel panic issue on some host machines
    v.customize ["modifyvm", :id, "--name", "localdev-ansible"]
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--memory", 1024] #1024mb memory
    v.customize ["modifyvm", :id, "--ioapic", "on"]
    v.gui = true
  end

  #666 otherwise ansible fails on the host files
  config.vm.synced_folder '.', '/vagrant', mount_options: ["dmode=666","fmode=666"]

  config.vm.provision :shell, :path => "shell/init.sh"
  config.vm.provision :shell, :path => "shell/ansible-install.sh"
  config.vm.provision :shell, :path => "shell/ansible-run.sh"
end
