#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y docker.io
sudo usermod -a -G docker ubuntu
sudo systemctl enable docker
sudo systemctl start docker
sleep 10
cd /home/ubuntu
git clone https://github.com/AshrafElshazly/CI
cd CI
docker build -t node-app .
docker run -d -p 3000:3000 node-app 
