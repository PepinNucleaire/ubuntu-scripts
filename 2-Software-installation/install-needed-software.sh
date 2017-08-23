#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Julien Muller
# Website 	: 	http://www.pepin.xyz
##################################################################################################################
##################################################################################################################
#
#   For personal use. Needs a bit of tweaking for working on your own computer
#
##################################################################################################################

# Add external repositories

# Sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# Veracrypt
sudo add-apt-repository ppa:unit193/encryption

# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

###############################################################################################

#software from 'normal' repositories

sudo apt update

sudo apt-get install -y deluge filezilla network-manager-openvpn-gnome vlc 
sudo apt-get install -y audacity smart-notifier gsmartcontrol pelican python3 python3-pip
sudo apt-get install -y gufw unetbootin eom gparted matlab-support curl

sudo apt install sublime-text
sudo apt-get install spotify-client -y
sudo apt install sublime-text
sudo apt install -y veracrypt


###############################################################################################

# installation of zippers and unzippers
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

###############################################################################################

# Python3 by default
alias python="python3"
alias pip="pip3"

###############################################################################################

#ending

sudo apt-get -y update
sudo apt-get -f -y install
sudo apt-get -y upgrade
sudo apt-get -y autoremove
sudo apt-get -y autoclean


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"

