#!/bin/sh

# Checklist post-installation of Ubuntu gnome 16.04
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

# update everything
sudo apt update
sudo apt upgrade -y

# Modify and mount 2nd HDD
sudo mkdir /mnt/data
sudo echo "/dev/sda1 /mnt/data ntfs defaults 0 0" >> /etc/fstab
sudo umount/dev/sda1
sudo mount /dev/sda1

# Restore personal folders that are in 2nd HDD
sudo rm -r Documents Images Musique Téléchargements Vidéos
sudo ln -s /mnt/data/ppin/Documents /home/ppin/Documents
sudo ln -s /mnt/data/ppin/Images /home/ppin/Images
sudo ln -s /mnt/data/ppin/Musique /home/ppin/Musique
sudo ln -s /mnt/data/ppin/Téléchargements /home/ppin/Téléchargements
sudo ln -s /mnt/data/ppin/Vidéos /home/ppin/Vidéos
sudo ln -s /mnt/data/ppin/Drive /home/ppin/Drive
sudo ln -s /mnt/data/ppin /home/ppin/perso


# Remove autocache by apt
sudo sh -c "echo 'Dir::Cache \"\";\nDir::Cache::archives \"\";' >> /etc/apt/apt.conf.d/02nocache"

# Remove useless softwares
sudo apt remove -y empathy evolution cheese gnome-mines gnome-sudoku gnome-calculator gnome-calendar gnome-mahjongg gnome-maps gnome-music gnome-photos gnome-sushi gnome-weather gnome-video-effects rhythmbox brasero xdiagnose transmission-* gnome-documents gnome-contacts

## Change number of line within terminal life
sudo sh -c "echo '\nHISTFILESIZE=20000\nHISTSIZE=20000\nHISTCONTROL=ignoredups' >> /etc/environment"

# Installation of veraencrypt
sudo add-apt-repository ppa:unit193/encryption

sudo apt-get update
sudo apt-get install -y veracrypt sublime-text spotify-client deluge filezilla network-manager-openvpn-gnome vlc audacity smart-notifier gsmartcontrol p7zip-full rar arj gufw unetbootin eom gparted matlab-support steam

# Change default terminal color
echo "PS1='\n\[\e[1;48;5;31m\] \u \[\e[48;5;240m\] \W \[\e[0m\] '" >> ~/.bashrc
sudo echo "PS1='\n\[\e[1;48;5;196m\] \u \[\e[48;5;240m\] \w \[\e[0m\] '" >> /root/.bashrc
