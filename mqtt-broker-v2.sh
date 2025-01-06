#!/bin/bash
#===============================================================#
# Script Name   : mqtt-broker-v2                                #
# Description   : Script Setup MQTT Broker Server               #
# Author        : Anggarda Saputra Wijaya                       #
# Github        : https://github.com/anggrdwjy.                 #
#===============================================================#
again='y'
while [[ $again == 'Y' ]] || [[ $again == 'y' ]] ; do
clear
echo "                                                                     ";
echo "          __  _______  ____________  ___           __                   ";
echo "         /  |/  / __ \/_  __/_  __/ / _ )_______  / /_____ ____         ";
echo "        / /|_/ / /_/ / / /   / /   / _  / __/ _ \/   _/ -_) __/         ";
echo "       /_/  /_/\___\_\/_/   /_/   /____/_/  \___/_/\_\\__/_/            ";                                              
echo "       ______          __      ____    __                   ___         ";
echo "      /_  __/__  ___  / /__   / __/__ / /___ _____    _  __|_  |        ";
echo "       / / / _ \/ _ \/ (_-<  _\ \/ -_) __/ // / _ \  | |/ / __/         ";
echo "      /_/  \___/\___/_/___/ /___/\__/\__/\_,_/ .__/  |___/____/         ";
echo "                                            /_/                         ";
echo "      Version: 2.0.4 - 6/1/2025                          ";
echo "      Developer: https://github.com/anggrdwjy              ";
echo "      Support OS: Ubuntu 18.04, 20.04, 22.04, 24.04        ";
echo "   __________________________________________________   ";
echo "                                                  ";
echo "      Options List :                                 ";
echo "      1) Install MQTT Broker EMQX                    ";
echo "      2) Custom Port Dashboard MQTT Broker           ";
echo "      3) Custom Port MQTT Client Listener            ";
echo "      5) Reboot Server                              ";
echo "      5) Exit                                       ";
echo "   __________________________________________________   ";
echo "                                                        ";
read -p "   Enter a number the options listed: " choice;
echo "                                                        ";
case $choice in

1) read -p "   Install MQTT Broker EMQX ? y/n :" -n 1 -r
   echo "                                                  ";
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]] 
   then
   sudo curl -s https://assets.emqx.com/scripts/install-emqx-deb.sh | sudo bash
   sudo apt-get install emqx
   sudo systemctl --now enable emqx
   sudo systemctl status emqx | more
   echo " |----------------------------------------------------------|";
   echo " |      MQTT Protocol Port Default : 1883                   |";
   echo " |      MQTT Broker Dashboard : http://your-ip/18083        |";
   echo " |      Default Login User : Admin | Password : Public      |";
   echo " |----------------------------------------------------------|";
   fi
   ;;

2) echo "                                                  ";
   echo "                                                  ";
   echo " |----------------------------------------------------------|";
   echo " |      Default Port Dashboard EMQX : 18083                 |";
   echo " |      Search String "bind = 18083"                        |";
   echo " |----------------------------------------------------------|";
   echo "                                                  ";
   read -p "   Custom Port Dashboard MQTT Broker? y/n :" -n 1 -r
   echo  ""
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]] 
   then
   sudo nano /etc/emqx/emqx.conf
   sudo systemctl restart emqx
   echo "                                                  ";
   echo "   ======== Custom Port MQTT Broker Done ========";
   echo "                                                  ";
   fi
   ;;   

3) echo "                                                  ";
   echo "                                                  ";
   echo " |-------------------------------------------------------|";
   echo " |      Default Port MQTT Client Listener : 1883         |";
   echo " |      Add This Script and Configure TCP Listener       |";
   echo " |      Directory  -->  /etc/emqx/emqx.conf              |";
   echo " |                                                       |";
   echo " |      ---- Copy and Paste Script in Below ----         |";
   echo " |-------------------------------------------------------|";
   echo "                                                          ";
   echo "       listeners.tcp.default {                            ";
   echo "         bind = "0.0.0.0:1883"                            ";
   echo "         max_connections = 1024000                        ";
   echo "       }                                                  ";
   echo "                                                          ";
   echo "                                                  ";
   read -p "   Custom Port MQTT Client Listener? y/n :" -n 1 -r
   echo  ""
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]] 
   then
   sudo nano /etc/emqx/emqx.conf
   sudo systemctl restart emqx
   echo "                                                  ";
   echo "   ======== Custom Port MQTT Client Listener Done ========";
   echo "                                                  ";
   fi
   ;;  
   
4) read -p "   Reboot Your Server? y/n :" -n 1 -r
   echo "                                                  ";
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]] 
   then
   reboot
   fi
   ;;
   
5) exit
   ;;
*)    echo "   Sorry, options list not available"
esac
echo "                                                  ";
echo -n "   Back to options list? [y/n]: ";
read again;
while [[ $again != 'Y' ]] && [[ $again != 'y' ]] && [[ $again != 'N' ]] && [[ $again != 'n' ]] ; do
echo "                                                  ";
echo "   Sorry, options list not available";
echo "                                                  ";
echo -n "   Back to options list? [y/n]: ";
read again;
done
done 
