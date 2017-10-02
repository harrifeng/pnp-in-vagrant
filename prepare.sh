sudo yum install -y epel-release
sudo yum install -y python-devel python-pip gcc git tmux java-1.8.0-openjdk golang nmap-ncat
sudo pip install -U pip -i http://mirrors.aliyun.com/pypi/simple --trusted-host=mirrors.aliyun.com
sudo pip install ansible -i http://mirrors.aliyun.com/pypi/simple --trusted-host=mirrors.aliyun.com
git clone https://github.com/harrifeng/vagrant-dot-ssh /home/vagrant/vagrant-dot-ssh
cp /home/vagrant/vagrant-dot-ssh/id_rs* /home/vagrant/.ssh
chmod 600 /home/vagrant/.ssh/id_rsa
echo "
10.19.19.21 atom
10.19.19.22 e6400
10.19.19.23 e350
" | sudo tee -a /etc/hosts

echo "<----------finishing provision--------------->"
