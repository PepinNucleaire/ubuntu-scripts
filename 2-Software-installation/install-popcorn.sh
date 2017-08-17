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


rm /tmp/popcorn-time_0.3.10-dabf8a1cd_amd64.deb

wget https://ci.popcorntime.sh/view/All/job/Popcorn-Time-Desktop/lastSuccessfulBuild/artifact/build/popcorn-time_0.3.10-dabf8a1cd_amd64.deb -O /tmp/popcorn-time_0.3.10-dabf8a1cd_amd64.deb
sudo dpkg -i /tmp/popcorn-time_0.3.10-dabf8a1cd_amd64.deb

rm /tmp/popcorn-time_0.3.10-dabf8a1cd_amd64.deb



echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"