# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.provision "shell", path: "app/config/provisioning/provision-ubuntu.sh"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end
end
