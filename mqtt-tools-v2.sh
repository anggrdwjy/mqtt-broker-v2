#!/bin/bash
#Progammer : Anggarda Saputra Wijaya. https://github.com/anggrdwjy.
again='y'
while [[ $again == 'Y' ]] || [[ $again == 'y' ]];
do
clear
echo " ############################################################";
echo " ##                                                        ##";
echo " ##      █▀▄▀█ █▀█ ▀█▀ ▀█▀     █▄▄ █▀█ █▀█ █▄▀ █▀▀ █▀█     ##";
echo " ##      █░▀░█ ▀▀█ ░█░ ░█░     █▄█ █▀▄ █▄█ █░█ ██▄ █▀▄     ##";
echo " ##                                                        ##";
echo " ##      ▀█▀ █▀█ █▀█ █░░ █▀     █▀ █▀▀ ▀█▀ █░█ █▀█         ##";
echo " ##      ░█░ █▄█ █▄█ █▄▄ ▄█     ▄█ ██▄ ░█░ █▄█ █▀▀         ##";
echo " ##                                                        ##";
echo " ##      Developer : github.com/anggrdwjy                  ##";
echo " ##      Version 1.0.1 | 12/11/2024                        ##";
echo " ##      Support Ubuntu 18.04, 20.04, 22.04, 24.04         ##";
echo " ##                                                        ##";
echo " ############################################################";
echo " ##                                                        ##";
echo " ##      List Menu :                                       ##";
echo " ##      [1] Add EMQX to Repository and Update             ##";
echo " ##      [2] EMQX Install                                  ##";
echo " ##      [3] Start EMQX                                    ##";
echo " ##      [4] Check EMQX Daemon Status                      ##";
echo " ##      [5] Check Port EMQX                               ##";
echo " ##      [6] Custom Port Dashboard EMQX                    ##";
echo " ##      [7] Bandwidth Monitoring Server                   ##";
echo " ##      [8] Monitoring CPU and Memory                     ##";
echo " ##      [9] Reboot Server                                 ##";
echo " ##      [10] Exit                                         ##";
echo " ##                                                        ##";
echo " ############################################################";
echo "                                                           ";
read -p " Select List : " choice;
echo "                                                            ";
case $choice in

1) read -p "Add EMQX to Repository and Update? y/n :" -n 1 -r
   echo  ""
   echo "                                                  ";
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
   echo "                                                  ";
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
   echo "                                                  ";
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
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo systemctl status emqx | more
   echo "                       ";
   echo "EMQX Daemon Status     ";
   echo "                       ";
   fi
   ;;
   
5) echo "                                                  ";
   echo " ############################################################";
   echo " ##                                                        ##";
   echo " ##      MQTT Protocol Port Default : 1883                 ##";
   echo " ##      MQTT Broker Dashboard : http://your-ip/18083      ##";
   echo " ##      Default Login User : Admin | Password : Public    ##";
   echo " ##                                                        ##";
   echo " ############################################################";
   echo "                                                  ";
   read -p "Check TCP Port EMQX? y/n :" -n 1 -r
   echo  ""
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo netstat -tunlp
   echo "                                                  ";
   echo " List Port Protocol TCP and UDP                   ";
   fi
   ;;   

6) echo "                                                  ";
   echo " ############################################################";
   echo " ##                                                        ##";
   echo " ##      Default Port Dashboard EMQX : 18083               ##";
   echo " ##      Search String "bind = 18083"                      ##";
   echo " ##                                                        ##";
   echo " ############################################################";
   echo "                                                  ";
   read -p "Custom Port Dashboard EMQX? y/n :" -n 1 -r
   echo  ""
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo nano /etc/emqx/emqx.conf
   sudo systemctl restart emqx
   echo " Done Custom Port Dashboard                       ";
   fi
   ;;   

7) read -p "Install Bandwidth Monitoring? y/n :" -n 1 -r
   echo  ""
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo apt install iptraf-ng
   fi
   read -p "Check Bandwidth Monitoring? y/n :" -n 1 -r
   echo  ""
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   iptraf-ng
   fi
   ;;
   
8) read -p "Install Monitoring CPU and RAM? y/n :" -n 1 -r
   echo  ""
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo apt install htop
   fi
   read -p "Show Monitoring CPU and RAM? y/n :" -n 1 -r
   echo  ""
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   sudo htop
   fi
   ;;
   
9) read -p "Reboot Your Server? y/n :" -n 1 -r
   echo  ""
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]]
   then
   reboot
   fi
   ;;
   
10) exit
   ;;
*)    echo "Sorry, Menu Not Available"
esac
echo "                                                  ";
echo -n "Back to Menu? [y/n]: ";
echo "                                                  ";
read again;
while [[ $again != 'Y' ]] && [[ $again != 'y' ]] && [[ $again != 'N' ]] && [[ $again != 'n' ]];
do
echo " Variable Not Available in Menu ";
echo "                                                  ";
echo -n "Back to Menu? [y/n]: ";
echo "                                                  ";
read again;
done
done 
