#!/bin/bash
download="/home/web1/Documents/script/html"
fichier="download*"

#connection en SSH
ssh web2@192.168.178.135 << EOF

# download et dezzipage fichier necessaire pour ssh
figlet "Ark Corporation"
cd /home/web2/Documents/script/
mkdir html
cd /home/web2/Documents/script/html/
wget https://html5up.net/massively/download
sleep 3s
figlet "DEZIPPAGE"
unzip $fichier
sleep 5s
sudo apt get
sudo apt install apache2 -y

