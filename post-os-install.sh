# First you update your system
sudo apt update && sudo apt-get dist-upgrade

# Terminator
sudo apt-get install terminator
# Gedit
sudo apt install gedit
#Install File Compression Libs
sudo apt-get install rar unrar zip unzip p7zip-full p7zip-rar
# gdebi for easy click-install of *.deb
sudo apt install gdebi
# GIT
sudo apt install git
# Git setup
printf "Enter your git user name: \n"
read username
printf "Enter your git email: \n"
read email
git config --global user.name ${username}
git config --global user.email ${email}

# Properties Commons (to install elementary tweaks)
sudo apt install software-properties-common
# Elementary Tweak
## 1. adding repository
sudo add-apt-repository ppa:philip.scott/elementary-tweaks
## 2. updating apt-get
sudo apt update
## 3. installing tweaks
sudo apt install elementary-tweaks

#Install File Compression Libs
# sudo apt install rar unrar zip unzip p7zip-full p7zip-rar
# essential programs
# sudo apt install g++ libtool automake htop gparted vlc browser-plugin-vlc firefox inkscape shutter steam filezilla k4dirstat speedcrunch
# Java
# sudo apt install openjdk-8-jre openjdk-8-jdk
# Multimedia Codecs
# sudo apt install ubuntu-restricted-extras libavcodec-extra ffmpeg

# Google Chrome
sudo apt install libxss1 libappindicator1 libindicator7
## 1. downloading last stable package
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
## 2. installing package
sudo dpkg -i google-chrome-stable_current_amd64.deb
## 3. fixing broken dependencies
sudo apt install -f
## 4. free up space
rm google-chrome*.deb

# firefox
sudo apt-get install firefox

#Install Spotify
# 1. Add the Spotify repository signing keys to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
# 3. Update list of available packages
sudo apt-get update
# 4. Install Spotify
sudo apt-get install spotify-client

# VirtualBox
## 1. downloading package
#wget http://download.virtualbox.org/virtualbox/5.1.6/VirtualBox-5.1.6-110634-Linux_amd64.run
## 2. installing package into /opt
#sudo sh VirtualBox-5.1.6-110634-Linux_amd64.run
## 3. downloading extension pack
#wget http://download.virtualbox.org/virtualbox/5.1.6/Oracle_VM_VirtualBox_Extension_Pack-5.1.6-110634.vbox-extpack
## 4. install extension pack
#sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.1.6-110634.vbox-extpack
## 5. listing installed extension packs
#sudo VBoxManage list extpacks


# Reduce overheating and improve battery life
## 1. adding repository
sudo add-apt-repository ppa:linrunner/tlp
## 2. updating apt-get
sudo apt-get update
## 3. installing package
sudo apt-get install tlp tlp-rdw
## 4. starting application
#sudo tlp start

# Synapse launcher
sudo apt install synapse

# Gnome system monitor
sudo apt install gnome-system-monitor
# Bleachbit
sudo apt install bleachbit
# Dconf
sudo apt install dconf

# Rhythmbox
## 1. adding repository
sudo add-apt-repository ppa:ubuntuhandbook1/apps
## 2. updating apt-get
sudo apt-get update
## 3. installing package
sudo apt-get install rhythmbox

# Docker
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
sudo apt-get update
sudo apt-get install docker-ce
sudo usermod -a -G docker $USER

# Docker-compose
# 1. Run this command to download the latest version of Docker Compose:
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# 2. Run this command to download the latest version of Docker Compose:
sudo chmod +x /usr/local/bin/docker-compose

cd ~/Downloads;

# Postman
# https://www.getpostman.com/apps
wget https://app.getpostman.com/app/download/linux64?_ga=2.229117084.1404834430.1535957793-2051387000.1535957793

# Phpstorm
# https://www.jetbrains.com/phpstorm/download/#section=linux
wget https://www.jetbrains.com/phpstorm/download/download-thanks.html?platform=linux

# Clean-up System Elementary
sudo apt purge epiphany-browser epiphany-browser-data #browser
sudo apt-get purge noise
sudo apt-get purge scratch-text-editor #text-editor
sudo apt-get purge modemmanager
sudo apt-get purge geary #email
sudo apt-get purge pantheon-mail #email
sudo apt-get purge pantheon-terminal #terminal
sudo apt-get purge audience
sudo apt-get purge maya-calendar #calendar

sudo apt autoremove
sudo apt autoclean
