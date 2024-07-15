#!/bin/bash
# curl https://raw.githubusercontent.com/venkatsurya1608/docker-expense/main/install-docker.sh | bash

R="\e[31m"
N="\e[0m"
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user
echo -e "$R logout and login again"