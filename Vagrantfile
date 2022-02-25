Vagrant.configure("2") do |config|

    # Setup allow Virtualbox Guest Addons to auto update if the Vagrant plugin is installed
    if Vagrant.has_plugin?("vagrant-vbguest") then
        config.vbguest.auto_update = false
    end

    # Sync the root folder with /vagrant in the guest VM
    config.vm.synced_folder "./", "/vagrant"

    # Set some virtualbox config
    config.vm.provider "virtualbox" do |vb|

        # This launches the Virtualbox GUI to allow for UI interaction
        vb.gui = true

        # Override the default guest memory, setting it to 4GB
        vb.memory = 4096

        # Configure an optical drive on each box
        vb.customize ["storageattach", :id, 
                      "--storagectl", "IDE Controller", 
                      "--port", "0", "--device", "1", 
                      "--type", "dvddrive", 
                      "--medium", "emptydrive"]

        # Configure Video RAM to allow for dynamic resizing
        vb.customize ["modifyvm", :id, "--vram", "128"]
    end

    # Ubuntu 20.04
    config.vm.define "ub2004" do |ubuntu|
        ubuntu.vm.box = "bento/ubuntu-20.04"
        ubuntu.vm.hostname = "ub2004"
        ubuntu.vm.provision :shell, path: "ubuntu-bootstrap.sh"
    end

    # Ubuntu 21.10
    config.vm.define "ub2110" do |ubuntu|
        ubuntu.vm.box = "bento/ubuntu-21.10"
        ubuntu.vm.hostname = "ub2110"
        ubuntu.vm.provision :shell, path: "ubuntu-bootstrap.sh"
    end

    # CentOS 8.5
    config.vm.define "cos85" do |centos|
        centos.vm.box = "bento/centos-8.5"
        centos.vm.hostname = "cos85"
        centos.vm.provision :shell, path: "centos-bootstrap.sh"
    end
  end