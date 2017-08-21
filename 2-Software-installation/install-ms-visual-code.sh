#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	ppin
# Website 	: 	http://ppin.xyz
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# Add key and repositery

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get update
sudo apt-get install -y code



echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"