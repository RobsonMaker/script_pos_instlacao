#!/bin/bash

# Atualizar lista de pacotes
sudo apt update

# Instalar MariaDB
sudo apt install mariadb-server

# Instalar MySQL Workbench
sudo apt install mysql-workbench

# Instalar Visual Studio Code
sudo snap install --classic code

# Instalar NetBeans
sudo snap install netbeans --classic

# Instalar Java JDK
sudo apt install default-jdk

# Instalar GRASS GIS
sudo apt install grass

# Instalar PyCharm Professional
sudo snap install pycharm-professional --classic

# Instalar Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Instalar Microsoft Edge
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" | sudo tee /etc/apt/sources.list.d/microsoft-edge-dev.list
sudo rm microsoft.gpg
sudo apt update
sudo apt install microsoft-edge-dev

# Instalar GParted
sudo apt install gparted

# Instalar VIM
sudo apt install vim

# Instalar Git
sudo apt install git

# Instalar Gnome Software
sudo apt install gnome-software gnome-software-plugin-flatpak gnome-software-plugin-snap

# Instalar KDE Connect
sudo apt install kdeconnect

# Instalar OpenSSH
sudo apt install openssh-server

# Verificar status do serviço SSH
sudo systemctl status ssh

# Iniciar o serviço SSH se necessário
sudo systemctl start ssh

# Habilitar o SSH para iniciar automaticamente com o sistema
sudo systemctl enable ssh
