Vagrant.configure("2") do |config|
	config.vm.box = "hashicorp/precise64"
	config.vm.network :private_network, ip: "10.55.55.105"
	config.vm.provision "shell", path: "scripts/ubuntu.sh"
	config.vm.provision "shell", path: "scripts/nginx.sh"
	config.vm.provision "shell", path: "scripts/php.sh"
	config.vm.provision "shell", path: "scripts/java.sh"
	config.vm.provision "shell", path: "scripts/elasticsearch.sh"
end
