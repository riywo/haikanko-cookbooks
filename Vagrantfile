require 'berkshelf/vagrant'

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
#  config.vm.box = "Berkshelf-CentOS-6.3-x86_64-minimal"
#  config.vm.box_url = "https://dl.dropbox.com/u/31081437/Berkshelf-CentOS-6.3-x86_64-minimal.box"

  config.vm.hostname = "haikanko"
  config.vm.network :private_network, ip: "192.168.39.10"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "512"]
    vb.customize ["modifyvm", :id, "--cpus", 4]
  end

  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "haikanko"
    chef.json = {
      :mysql => {
        :server_root_password => 'rootpass',
        :server_debian_password => 'debpass',
        :server_repl_password => 'replpass'
      }
    }
  end
end
