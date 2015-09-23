Vagrant.configure("2") do |config|

  config.vm.define "saltmaster" do |saltmaster|
    saltmaster.vm.box = "ubuntu/trusty64"
    saltmaster.vm.hostname = "saltmaster"
    saltmaster.vm.network "private_network", ip: "192.168.1.2"
    saltmaster.vm.provision "shell", path: "salt_master.sh"
    saltmaster.vm.synced_folder "srv", "/srv/"

  end

  config.vm.define "saltminion1" do |saltminion1|
    saltminion1.vm.box = "ubuntu/trusty64"
    saltminion1.vm.hostname = "saltminion1"
    saltminion1.vm.network "private_network", ip: "192.168.1.3"
    saltminion1.vm.provision "shell", path: "salt_minion.sh"
  end
end
