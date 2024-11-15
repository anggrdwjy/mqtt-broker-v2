root@ubut:~/mqtt-tools-v2# more mqtt-tools-v2.sh 
#!/bin/bash
#################################################################
# Script Name   : mqtt-tools-v2                                 #
# Description   : Script Auto Install MQTT Broker               #
# Author        : Anggarda Saputra Wijaya                       #
# Email         : aw0x0410@gmail.com                            #
# Github        : https://github.com/anggrdwjy.                 #
#################################################################
again='y'
while [[ $again == 'Y' ]] || [[ $again == 'y' ]];
do
clear
echo "                                                                     ";
echo "                                                                     ";
echo "       __  _______  ____________   ____             __               ";
echo "      /  |/  / __ \/_  __/_  __/  / __ )_________  / /_____  _____   ";
echo "     / /|_/ / / / / / /   / /    / __  / ___/ __ \/ //_/ _ \/ ___/   ";
echo "    / /  / / /_/ / / /   / /    / /_/ / /  / /_/ / ,< /  __/ /       ";
echo "   /_/  /_/\___\_\/_/   /_/    /_____/_/   \____/_/|_|\___/_/        ";
echo "                                                                     ";
echo "    ______          __      ____    __                   ___         ";
echo "   /_  __/__  ___  / /__   / __/__ / /___ _____    _  __|_  |        ";
echo "    / / / _ \/ _ \/ (_-<  _\ \/ -_) __/ // / _ \  | |/ / __/         ";
echo "   /_/  \___/\___/_/___/ /___/\__/\__/\_,_/ .__/  |___/____/         ";
echo "                                         /_/                         ";
echo "   Version: 1.0.3 - 15/11/2024                       By Anggrdwjy    ";
echo "   Support OS: Ubuntu 18.04, 20.04, 22.04, 24.04        ";
echo "                                                        ";
echo "   __________________________________________     ";
echo "                                                  ";
echo "   Options List :                                 ";
echo "   1) Add EMQX to Repository and Update           ";
echo "   2) MQTT Broker Server Install                  ";
echo "   3) Start MQTT Broker Server                    ";
echo "   4) Check MQTT Broker Server Status             ";
echo "   5) Check Port MQTT Broker Server               ";
echo "   6) Custom Port Dashboard MQTT Broker           ";
echo "   7) Bandwidth Monitoring Server                 ";
echo "   8) Monitoring CPU and Memory                   ";
echo "   9) Reboot Server                               ";
echo "   10) Exit                                       ";
echo "   __________________________________________     ";
echo "                                                        ";
read -p "   Enter a Number The Options Listed: " choice;
echo "                                                        ";
case $choice in

1) read -p "   Add MQTT to Repository and Update? y/n :" -n 1 -r
   echo "                                                  ";
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo curl -s https://assets.emqx.com/scripts/install-emqx-deb.sh | sudo bash
   echo "                                                  ";
   echo "======== Add to Repository Done ========";
   echo "                                                  ";
   fi
   ;;

2) read -p "   MQTT Broker Server Install? y/n :" -n 1 -r
   echo "                                                  ";
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo apt-get install emqx
   echo "                                                  ";
   echo "======== MQTT Broker Server Installed ========";
   echo "                                                  ";
   fi
   ;;

3) read -p "   Start MQTT Broker Server? y/n :" -n 1 -r
   echo "                                                  ";
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo systemctl start emqx
   echo "                                                  ";
   echo "======== MQTT Broker Server Started ========";
   echo "                                                  ";
   fi
   ;;

4) read -p "   Check MQTT Broker Status? y/n :" -n 1 -r
   echo "                                                  ";
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo systemctl status emqx | more
   echo "                                                  ";
   echo "======== MQTT Broker Server Status ========";
   echo "                                                  ";
   fi
   ;;
   
5) echo "                                                  ";
   echo "                                                  ";
   echo " |----------------------------------------------------------|";
   echo " |      MQTT Protocol Port Default : 1883                   |";
   echo " |      MQTT Broker Dashboard : http://your-ip/18083        |";
   echo " |      Default Login User : Admin | Password : Public      |";
   echo " |----------------------------------------------------------|";
   echo "                                                  ";
   read -p "   Check Port MQTT Broker Server? y/n :" -n 1 -r
   echo  ""
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo netstat -tunlp
   echo "                                                  ";
   echo "======== Port MQTT Broker Server List ========";
   echo "                                                  ";
   fi
   ;;   

6) echo "                                                  ";
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
   echo "======== Custom Port MQTT Broker Done ========";
   echo "                                                  ";
   fi
   ;;   

7) read -p "   Install Bandwidth Monitoring? y/n :" -n 1 -r
   echo "                                                  ";
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo apt install iptraf-ng
   fi
   read -p "   Check Bandwidth Monitoring? y/n :" -n 1 -r
   echo "                                                  ";
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   iptraf-ng
   fi
   ;;
   
8) read -p "   Install Monitoring CPU and RAM? y/n :" -n 1 -r
   echo "                                                  ";
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo apt install htop
   fi
   read -p "   Show Monitoring CPU and RAM? y/n :" -n 1 -r
   echo "                                                  ";
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo htop
   fi
   ;;
   
9) read -p "   Reboot Your Server? y/n :" -n 1 -r
   echo "                                                  ";
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   reboot
   fi
   ;;
   
10) exit
   ;;
*)    echo "Sorry, Options List Not Available"
esac
echo "                                                  ";
echo -n "   Back to Options List? [y/n]: ";
echo "                                                  ";
read again;
while [[ $again != 'Y' ]] && [[ $again != 'y' ]] && [[ $again != 'N' ]] && [[ $again != 'n' ]];
do
echo "   Sorry, Options List Not Available";
echo "                                                  ";
echo -n "   Back to Options List? [y/n]: ";
echo "                                                  ";
read again;
done
done 
