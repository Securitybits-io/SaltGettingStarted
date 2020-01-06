Vagrant.configure("2") do |config|
  config.vm.define "salt" do |salt|
    salt.vm.box = "ubuntu/bionic64"
    salt.vm.hostname = "salt"
    salt.vm.network "private_network", ip: "192.168.5.10"
    salt.vm.synced_folder "saltstack/", "/srv"
    salt.vm.provision :shell, path: "provision-scripts/bootstrap-salt.sh"
  end
  config.vm.define "devminion" do |devminion|
    devminion.vm.box = "ubuntu/bionic64"
    devminion.vm.hostname = "devminion"
    devminion.vm.network "private_network", ip: "192.168.5.11"
    devminion.vm.provision :shell, path: "provision-scripts/bootstrap-devminion.sh"
  end
  config.vm.define "prodminion" do |prodminion|
    prodminion.vm.box = "ubuntu/bionic64"
    prodminion.vm.hostname = "prodminion"
    prodminion.vm.network "private_network", ip: "192.168.5.12"
    prodminion.vm.provision :shell, path: "provision-scripts/bootstrap-prodminion.sh"
  end
  config.vm.define "unsalted" do |unsalted|
    unsalted.vm.box = "ubuntu/bionic64"
    unsalted.vm.hostname = "unsalted"
    unsalted.vm.network "private_network", ip: "192.168.5.13"
    unsalted.vm.provision :shell, path: "provision-scripts/bootstrap-unsalted.sh"
  end
end
