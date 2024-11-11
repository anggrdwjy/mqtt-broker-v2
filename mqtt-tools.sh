#!/bin/bash
#Progammer : Anggarda. https://github.com/anggrdwjy.
again='y'
while [[ $again == 'Y' ]] || [[ $again == 'y' ]];
do
clear
echo "  ________________________________________________________";
echo " |                                                          |";
echo " |      █▀▄▀█ █▀█ ▀█▀ ▀█▀     ▀█▀ █▀█ █▀█ █░░ █▀    |";
echo " |      █░▀░█ ▀▀█ ░█░ ░█░     ░█░ █▄█ █▄█ █▄▄ ▄█    |";
echo " |________________________________________________________|";
echo " |                                                        |";
echo " | MQTT Broker Tools Setup                                |";
echo " | Developer : Anggarda. https://github.com/anggrdwjy     |";
echo " | Version 1.0.0 | 11/11/2024                             |";
echo " | This Tools Support Ubuntu System Only.                   |";
echo " | Ubuntu 18.04, 20.04, 22.04, 24.04                      |";
echo " |________________________________________________________|";
echo " |                                                        |";
echo " | List Menu :                                            |";
echo " | [1] Add EMQX to Repository                             |";
echo " | [2] EMQX Install                                       |";
echo " | [3] Start EMQX                                         |";
echo " | [4] Check EMQX Daemon Status                           |";
echo " | [5] Check Port EMQX                                    |";
echo " | [6] Exit                                               |";
echo " |________________________________________________________|";
echo "                                                           ";
read -p " Select List : " choice;
echo "";
case $choice in

1) read -p "Add EMQX to Repository? y/n :" -n 1 -r
   echo  ""
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo curl -s https://assets.emqx.com/scripts/install-emqx-deb.sh | sudo bash
   echo "                               ";
   echo "Add EMQX to Repository Done!!! ";
   echo "                               ";
   fi
   ;;

2) read -p "EMQX Install Now? y/n :" -n 1 -r
   echo  ""
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo apt-get install emqx
   echo "                       ";
   echo "EMQX Installed Done!!! ";
   echo "                       ";
   fi
   ;;

3) read -p "Start EMQX Now? y/n :" -n 1 -r
   echo  ""
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo systemctl start emqx
   echo "                       ";
   echo "EMQX Activate Now      ";
   echo "                       ";
   fi
   ;;

4) read -p "Check EMQX Status? y/n :" -n 1 -r
   echo  ""
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo systemctl status emqx | more
   echo "                       ";
   echo "EMQX Daemon Status     ";
   echo "                       ";
   fi
   ;;
   
5) read -p "Check TCP Port EMQX? y/n :" -n 1 -r
   echo  ""
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo netstat -tunlp
   echo "  _______________________________________________ ";
   echo " |                                                |";
   echo " | MQTT Protocol Port Default : 1883              |";
   echo " | MQTT Broker Dashboard : http://your-ip/18083   |";
   echo " |_______________________________________________ |";
   echo "                                                  ";
   fi
   ;;   
   
6) exit
   ;;
*)    echo "Sorry, Menu Not Available"
esac
echo -n "Back to Menu? [y/n]: ";
read again;
while [[ $again != 'Y' ]] && [[ $again != 'y' ]] && [[ $again != 'N' ]] && [[ $again != 'n' ]];
do
echo "Variable Not Available in Menu";
echo -n "Back to Menu? [y/n]: ";
read again;
done
done 
