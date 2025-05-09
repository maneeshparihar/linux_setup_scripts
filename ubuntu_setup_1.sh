#!/bin/bash 
# updating distro 
sudo apt update && sudo apt upgrade -y
# setting date time zone to Asia/Kolkata, feel free to change it 
sudo timedatectl set-timezone Asia/Kolkata
# installing packages 
sudo apt install zip unzip curl openssh-server -y
# installing docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
# installing nvm and node v 22 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
nvm install 22 
nvm alias default 22 
# installing aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf ./aws
rm -f awscliv2.zip
rm ./get-docker.sh
# -----------------------------------
# pyenv build dependencies 
sudo apt update; sudo apt install build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl git \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
# pyenv install 
curl -fsSL https://pyenv.run | bash
# copy the output into ~/.bashrc at end and restart shell 
# pyenv install python 3.11 
pyenv install 3.11 
pyenv global 3.11 
