# -*- mode: ruby -*-
# vi: set ft=ruby : vsa

Vagrant.configure(2) do |config| 
 config.vm.box = "centos/7" 
 config.vm.box_version = "2004.01" 
 config.vm.provider "virtualbox" do |v| 
 v.memory = 1024 
 v.cpus = 1 
 end 
 config.vm.define "web" do |web| 
# web.vm.network "private_network", ip: "192.168.56.10",  virtualbox__intnet: "net1" 
 web.vm.network "private_network", ip: "192.168.56.10",  name: "vboxnet0"
 web.vm.hostname = "web" 
 web.vm.provision "shell", path: "web_script.sh"
 end 
 config.vm.define "log" do |log| 
# log.vm.network "private_network", ip: "192.168.56.11",  virtualbox__intnet: "net1" 
 log.vm.network "private_network", ip: "192.168.56.11",  name: "vboxnet0"
 log.vm.hostname = "log"
 log.vm.provision "shell", path: "log_script.sh" 
 end 
end

  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
#end
