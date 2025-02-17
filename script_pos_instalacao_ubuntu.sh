#!/bin/bash

# Atualizar lista de pacotes
sudo apt update -y

# Instalar MariaDB
sudo apt install mariadb-server -y

# Instalar MySQL Workbench
sudo apt install mysql-workbench -y

# Instalar Visual Studio Code
sudo snap install --classic code -y

# Instalar NetBeans
sudo snap install netbeans --classic -y

# Instalar Java JDK
sudo apt install default-jdk -y

# Instalar GRASS GIS
sudo apt install grass -y

# Instalar PyCharm Professional
sudo snap install pycharm-professional --classic -y

# Instalar Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y

# Instalar Microsoft Edge
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" | sudo tee /etc/apt/sources.list.d/microsoft-edge-dev.list
sudo rm microsoft.gpg
sudo apt update -y
sudo apt install microsoft-edge-dev -y

# Instalar GParted
sudo apt install gparted -y

# Instalar VIM
sudo apt install vim -y

# Instalar Git
sudo apt install git -y

# Configuração do Git
git config --global user.name "Seu Nome"
git config --global user.email "seu_email@example.com"
git config --list

# Instalar Gnome Software
sudo apt install gnome-software gnome-software-plugin-flatpak gnome-software-plugin-snap -y

# Instalar KDE Connect
sudo apt install kdeconnect -y

# Instalar OpenSSH
sudo apt install openssh-server -y

# Gerar chave SSH
ssh-keygen -t rsa -b 4096 -C "seu_email@example.com" -f ~/.ssh/id_rsa -N ""

# Verificar status do serviço SSH
sudo systemctl status ssh

# Iniciar o serviço SSH se necessário
sudo systemctl start ssh

# Habilitar o SSH para iniciar automaticamente com o sistema
sudo systemctl enable ssh

# Instalar DuckDuckGo Privacy Essentials no Google Chrome
google-chrome-stable --install-extension=duckduckgo

# Instalar DuckDuckGo Privacy Essentials no Mozilla Firefox
firefox -install-global-extension https://addons.mozilla.org/firefox/downloads/file/3555357/duckduckgo_privacy_essentials-2022.10.3-an+fx.xpi

