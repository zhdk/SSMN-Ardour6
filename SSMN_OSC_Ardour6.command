#!/bin/bash
reset
#########################################################################################################################
# 																																																											#
# The SSMN_OSC_Ardour6.command 																																									 	  		#					 
# The The 'SSMN_OSC_Ardour6.command' opens all preconfigured tools for your work with SSMN. 										        #
#																																																												#
# © 2021 Johannes Schuett @ Zurich University of the Arts																				                        #
# 																																																									    #
#########################################################################################################################

echo -e "\033[1;32m The 'SSMN_OSC_Ardour6.command' opens all preconfigured tools for your work with SSMN.\033[0m" 
echo -e "\033[1;32m Detailed information can be found here: \033[0m" 
echo -e "\033[1;34m   https://ssmn.postach.io/page/01-about \033[0m" 
echo "©2021 Johannes Schuett @ Zurich University of the Arts"
echo "------------------------------------------------------------"

echo -e "\033[1;31m'The 'SSMN_OSC_Ardour6.command' executes and supports the following steps: \033[0m"
echo -e "\033[1;32m [1/1] Opening QJackCtrl. (jack2).\033[0m" 
echo -e "\033[1;32m [1/2] Opening the ‘SSMN-Musescore’ to create the SSMN-Ambisonics-Score’.\033[0m"
echo -e "\033[1;32m [1/3] Opening in Musescore the ambi-default score.\033[0m" 
echo -e "\033[1;32m [1/4] Opening the Digital Audio Workstation ‘Ardour6’ from ‘Applications' \033[0m"
echo -e "\033[1;31m [1/5] Select your Ardour session or one of the preconfigured Ardour templates.\033[0m. \033[0m"
echo "------------------------------------------------------------"

while true; do
    read -p "Do you wish to start the QJackCtrl.app? [y/n] " answer
    [[ $answer == "y" || $answer == "Y" || $answer == "" ]] && break
    [[ $answer == "n" || $answer == "N" ]] && exit 0
done
echo -e "\033[1;31m [1/1] First, the script Opening QJackCtrl. (jack2). \033[0m"
open /Applications/QjackCtl.app
echo -e "\033[1;33m When QJackCtrl.is open, press'start . \033[0m"
while true; do
    read -p "The QJackCtrl.app is running?  [y/n] " answer
    [[ $answer == "y" || $answer == "Y" || $answer == "" ]] && break
    [[ $answer == "n" || $answer == "N" ]] && exit 0
done
echo -e "\033[1;31m [1/2]Opening the ‘SSMN-Musescore’ to create the SSMN-Ambisonics-Score’.\033[0m"
open /Applications/MuseScoreSSMN\ 3.app/Contents/MacOS/mscore 
while true; do
    read -p "Has the ‘MuseScoreSSMN\ 3.app’ opened?  [y/n] " answer
    [[ $answer == "y" || $answer == "Y" || $answer == "" ]] && break
    [[ $answer == "n" || $answer == "N" ]] && exit 0
done
echo -e "\033[1;31m [1/3] Opening in Musescore the ambi-default score.\033[0m. \033[0m"
while true; do
    read -p "Do you open your SSMN Score or the ambi-default? [y/n] " answer
    [[ $answer == "y" || $answer == "Y" || $answer == "" ]] && break
    [[ $answer == "n" || $answer == "N" ]] && exit 0
done
echo -e "\033[1;31m [1/4] The script now opens the ‘Ardour6.app’.\033[0m"
open /Applications/Ardour6.app
while true; do
    read -p "Has the ‘Ardour6.app’ opened?  [y/n] " answer
    [[ $answer == "y" || $answer == "Y" || $answer == "" ]] && break
    [[ $answer == "n" || $answer == "N" ]] && exit 0
done
echo -e "\033[1;31m [1/5] Select your Ardour session or one of the preconfigured Ardour templates.\033[0m. \033[0m"
echo -e "\033[1;32m To open a new session, press command & o and select a session from the folder ‘ardour-templates’, \033[0m"
echo -e "\033[1;32mor press ‘Open…’ in Ardour’s ‘Session’ menu. '\033[0m"
echo "---------------------------------------------------------------------------"
echo "Goodbye" 
	 
sleep 2
osascript -e 'tell application "Terminal" to close first window' & exit	 
	