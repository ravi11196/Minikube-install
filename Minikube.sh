#!/bin/bash
echo -e "\e[1;36m #############################INSTALLING THE VIRTUALBOX#####################################\e[0m"
echo

wget https://download.virtualbox.org/virtualbox/6.1.38/virtualbox-6.1_6.1.38-153438~Ubuntu~jammy_amd64.deb
sudo dpkg -i virtualbox-6.1_6.1.38-153438~Ubuntu~jammy_amd64.deb 

echo -e "\e[1;36m #############################INSTALLING THE MINIKUBE#####################################\e[0m"
echo

wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chmod +x /usr/local/bin/minikube

echo -e "\e[1;36m ############################UPDATING AND UPGRADING THE SYSTEM############################\e[0m"
echo
sudo apt update -y > /dev/null
sudo apt upgrade -y /dev/null

echo -e "\e[1;36m ############################INSTALLING THE DEPENDENCIES##############################\e[0m"

sudo apt install -y curl wget apt-transport-https 

echo -e "\e[1;36m ############################INSTALLING THE DEPENDENCIES##############################\e[0m"
echo

sudo wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chmod +x /usr/local/bin/minikube

echo -e "\e[1;36m ############################INSTALLING KUBECTL##############################\e[0m"
echo

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
sudo chmod +x kubectl
sudo mv kubectl /usr/local/bin/

echo -e "\e[1;36m #############################CLEANING UP#####################################\e[0m"

sudo rm ./minikube-linux-amd64 ./kubectl ./virtualbox-6.1_6.1.38-153438~Ubuntu~jammy_amd64.deb ./minikube-linux-amd64.1

echo -e "\e[1;36m Type 'minikube start --driver=virtualbox' to check if the minikube is installed\e[0m"
