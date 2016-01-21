Vagrant.configure("2") do |config|
	config.vm.box = "hashicorp/precise64"
	config.vm.provision "shell", path: "scripts/nginx.sh"
	config.vm.provision "shell", path: "scripts/php.sh"
end
