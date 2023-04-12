#!/bin/bash
######################################################################################
## Command=wget https://raw.githubusercontent.com/tarekzoka/oscam-nacam/main/oscam-os.sh -O - | /bin/sh
###########################################
###########################################
#!/bin/sh
#
wget -O /tmp/enigma2-plugin-softcams-oscam_11718-emu-r798_all.deb "https://github.com/tarekzoka/oscam-nacam/blob/main/enigma2-plugin-softcams-oscam_11718-emu-r798_all.deb?raw=true"
wait
apt-get update ; dpkg -i /tmp/*.deb ; apt-get -y -f install
wait
dpkg -i --force-overwrite /tmp/*.deb
wait
sleep 2;
#########################################################
#########################################################
#########################################################
MY_MAIN_URL="https://raw.githubusercontent.com/tarekzoka/"
MY_URL=$MY_MAIN_URL$PACKAGE_DIR'/'$MY_FILE
MY_TMP_FILE="/tmp/"$MY_FILE

rm -f $MY_TMP_FILE > /dev/null 2>&1

MY_SEP='============================================================='
echo $MY_SEP
echo 'Downloading '$MY_FILE' ...'
echo $MY_SEP
echo ''
wget -T 2 $MY_URL -P "/tmp/"

if [ -f $MY_TMP_FILE ]; then

	echo ''
	echo $MY_SEP
	echo 'Extracting ...'
	echo $MY_SEP
	echo ''
	tar -xf $MY_TMP_FILE -C /
	MY_RESULT=$?

	rm -f $MY_TMP_FILE > /dev/null 2>&1

	echo ''
	echo ''
	if [ $MY_RESULT -eq 0 ]; then
        echo "#########################################################"
        echo "#  ###################### Skin $version INSTALLED SUCCESSFULLY      #"
        echo "#                BY TAREK_TT - support on                   #"
        echo "#   .................................................      #"
        echo "#########################################################"
        echo "#           your Device will RESTART Now                #"
        echo "#########################################################"
wait
sleep 2;
exit 0




