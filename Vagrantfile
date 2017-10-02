Vagrant.configure("2") do |config|

  hostnames = ["atom", "e6400", "e350"]

  hostnames.each_with_index do |hostname, i|
    config.vm.define "#{hostname}" do |app|
      app.vm.provider "virtualbox" do |vb|
        vb.gui = false
        vb.memory = "4096"
        vb.cpus = 2
      end
      app.vm.hostname = "#{hostname}"
      app.vm.box = "bento/centos-7.3"
      app.vm.box_check_update = false
      app.ssh.insert_key = false
      app.ssh.private_key_path = ['~/.vagrant.d/insecure_private_key']
      app.vm.network "private_network", ip: "10.19.19.#{21 + i}"
      app.vm.provision "shell", path: "prepare.sh"
    end
  end
end
