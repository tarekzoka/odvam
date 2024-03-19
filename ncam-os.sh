#!/bin/sh
#
wget -O /tmp/ncam_V14.6-r0_all.deb "https://raw.githubusercontent.com/tarekzoka/oscam-nacam/main/enigma2-plugin-softcams-ncam_V14.6-r0_all.deb"

wait

apt-get update ; dpkg -i /tmp/*.deb 

wait

killall -9 enigma2

exit 0


