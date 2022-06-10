Vagrant.configure("2") do |config|

  config.vm.define "web" do |subconfig|
    subconfig.vm.box = "ubuntu/focal64"
    subconfig.vm.network "private_network", ip: "192.168.56.105", name: "vboxnet0"
    subconfig.vm.network "forwarded_port", id: "http",host: 80, guest_ip: "192.168.56.105", guest: 80
    subconfig.vm.network "forwarded_port", id: "jenkins", host: 8081, guest_ip: "192.168.56.105", guest: 8080
    subconfig.vm.network "forwarded_port", id: "jenkins2", host: 50010, guest_ip: "192.168.56.105", guest: 50000
    subconfig.vm.network "forwarded_port", id: "ssh", host: 3737, guest: 22
    subconfig.disksize.size = '100GB'
    subconfig.vm.provider "virtualbox" do |v|
      v.name = "web"
      v.customize ["modifyvm", :id, "--memory", "16384"]
      v.customize ["modifyvm", :id, "--cpus", "4"]
    end
  end

  config.vm.define "jenkins" do |subconfig|
    subconfig.vm.box = "ubuntu/focal64"
    subconfig.vm.hostname = "jenkins"
    subconfig.vm.network "private_network", ip: "192.168.56.106", name: "vboxnet0"
    subconfig.vm.network "forwarded_port", id: "ssh", host: 3738, guest: 22
    subconfig.vm.network "forwarded_port", id: "jenkins", host: 8080, guest_ip: "192.168.56.106", guest: 8080
    subconfig.vm.network "forwarded_port", id: "jenkins2", host: 50000, guest_ip: "192.168.56.106", guest: 50000
    subconfig.disksize.size = '100GB'
    subconfig.vm.provider "virtualbox" do |v|
      v.name = "jenkins"
      v.customize ["modifyvm", :id, "--memory", "16384"]
      v.customize ["modifyvm", :id, "--cpus", "4"]
    end
  end

  config.vm.define "jenkins2" do |subconfig|
    subconfig.vm.box = "ubuntu/focal64"
    subconfig.vm.hostname = "jenkins2"
    subconfig.vm.network "private_network", ip: "192.168.56.107", name: "vboxnet0"
    subconfig.vm.network "forwarded_port", id: "ssh", host: 3739, guest: 22
    subconfig.vm.network "forwarded_port", id: "jenkins", host: 8082, guest_ip: "192.168.56.107", guest: 8080
    subconfig.vm.network "forwarded_port", id: "jenkins2", host: 50002, guest_ip: "192.168.56.107", guest: 50000
    subconfig.disksize.size = '100GB'
    subconfig.vm.provider "virtualbox" do |v|
      v.name = "jenkins2"
      v.customize ["modifyvm", :id, "--memory", "16384"]
      v.customize ["modifyvm", :id, "--cpus", "4"]
    end
  end

  config.vm.provision "shell" do |s|
    ssh_pub_key = File.readlines("#{Dir.home}/.ssh/id_rsa.pub").first.strip
    s.inline = <<-SHELL
    echo {ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
    echo {ssh_pub_key} >> /root/.ssh/authorized_keys
    SHELL
  end
end
  # config.vm.provision "ansible" do |ansible|
  #   ansible.verbose = "v"
  #   # ansible.playbook = "ans-install-docker.yaml"
  #   # ansible.playbook = "ans-inst-webserver.yaml"   # 1. inventory file - и по нему установка
  #   # ansible.playbook = "ans-inst-jenkins.yaml"     # 2. через Vagrant и Dockerfile/docker-compose.yml
  #   # ansible.playbook = "ans-inst-jenkins2.yaml"
  # end



