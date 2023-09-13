Vagrant.configure("2") do |config|
  config.vm.define "vm1" do |vm1|
    vm1.vm.box = "centos/7"
    vm1.vm.network "private_network", type: "static", ip: "192.168.56.10"
  end

  config.vm.define "vm2" do |vm2|
    vm2.vm.box = "generic/ubuntu2004"
    vm2.vm.network "private_network", type: "static", ip: "192.168.56.11"
  end

  config.vm.provision "shell" do |s|
    ssh_pub_key = File.readlines("./id_rsa.pub").first.strip
    s.inline = <<-SHELL
    echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
    SHELL
    end
end