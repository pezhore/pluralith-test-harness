Vagrant.configure("2") do |config|
    if Vagrant.has_plugin?("vagrant-vbguest") then
        config.vbguest.auto_update = false
    end

    config.vm.provider "virtualbox" do |vb|
        vb.gui = true
        vb.memory = 2048
        vb.customize ["storageattach", :id, 
                      "--storagectl", "IDE Controller", 
                      "--port", "0", "--device", "1", 
                      "--type", "dvddrive", 
                      "--medium", "emptydrive"]
    end
    config.vm.define "ub2004" do |ubuntu|
        ubuntu.vm.box = "bento/ubuntu-20.04"
        ubuntu.vm.hostname = "ub2004"
        ubuntu.vm.provision :shell, path: "ubuntu-bootstrap.sh"
    end

    config.vm.define "ub2110" do |ubuntu|
        ubuntu.vm.box = "bento/ubuntu-21.10"
        ubuntu.vm.hostname = "ub2110"
        ubuntu.vm.provision :shell, path: "ubuntu-bootstrap.sh"
    end

    config.vm.define "cos85" do |centos|
        centos.vm.box = "bento/centos-8.5"
        centos.vm.hostname = "cos85"
        centos.vm.provision :shell, path: "centos-bootstrap.sh"
    end
  end