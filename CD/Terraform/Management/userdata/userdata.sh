#!/bin/bash

# Update system packages
sudo apt-get update -y
#install Pip
sudo apt-get install python3-pip -y
# Install Ansible
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get install -y ansible
# Ansible Modules
ansible-galaxy collection install community.docker
ansible-galaxy collection install community.aws
# Install Git  
sudo apt-get install -y git
# Install Docker
sudo apt-get install -y docker.io
sudo usermod -a -G docker ubuntu
newgrp docker
sudo systemctl start docker
# Install Docker Compose 
sudo apt install docker-compose -y
pip3 install docker
# Install unzip
sudo apt-get update
sudo apt-get install -y unzip
# Install Terraform
wget https://releases.hashicorp.com/terraform/1.5.3/terraform_1.5.3_linux_386.zip
unzip terraform_1.5.3_linux_386.zip
sudo mv terraform /usr/local/bin/
terraform version
# Install Java 17
sudo apt-get install -y openjdk-17-jdk
# Install Jenkins
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
# Install awscli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install