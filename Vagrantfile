Vagrant.configure("2") do |config|
  config.vm.define "salt" do |salt|
    salt.vm.box = "ubuntu/bionic64"
    salt.vm.hostname = "salt"
    salt.vm.network "private_network", ip: "192.168.5.10"
    salt.vm.synced_folder "saltstack/", "/srv"
    salt.vm.provision :shell, path: "provision-scripts/bootstrap-salt.sh"
  end
  config.vm.define "web1" do |web1|
    web1.vm.box = "ubuntu/bionic64"
    web1.vm.hostname = "web1"
    web1.vm.network "private_network", ip: "192.168.5.11"
    web1.vm.provision :shell, path: "provision-scripts/bootstrap-web1.sh"
  end
  config.vm.define "web2" do |web2|
    web2.vm.box = "ubuntu/bionic64"
    web2.vm.hostname = "web2"
    web2.vm.network "private_network", ip: "192.168.5.12"
    web2.vm.provision :shell, path: "provision-scripts/bootstrap-web2.sh"
  end
  config.vm.define "nginx" do |nginx|
    nginx.vm.box = "ubuntu/bionic64"
    nginx.vm.hostname = "nginx"
    nginx.vm.network "private_network", ip: "192.168.5.13"
    nginx.vm.provision :shell, path: "provision-scripts/bootstrap-nginx.sh"
  end
end
