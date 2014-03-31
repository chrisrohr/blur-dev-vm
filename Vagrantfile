# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box       = "puppetlabs/ubuntu-13.10-x86_64-puppet"
  config.vm.network "forwarded_port", guest: 9000, host: 9001
  config.vm.network "forwarded_port", guest: 8080, host: 9002

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path    = "puppet/modules"
    puppet.manifest_file  = "site.pp"
  end
end
