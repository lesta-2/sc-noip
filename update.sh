#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
clear
echo "Start Update"
# update
apt-get install ruby
gem install lolcat
apt-get install figlet
cd /usr/bin
wget -O menu "https://raw.githubusercontent.com/lesta-2/sc-noip/main/update/menu.sh"
wget -O l2tp "https://raw.githubusercontent.com/lesta-2/sc-noip/main/update/l2tp.sh"
wget -O ssh "https://raw.githubusercontent.com/lesta-2/sc-noip/main/update/ssh.sh"
wget -O ssssr "https://raw.githubusercontent.com/lesta-2/sc-noip/main/update/ssssr.sh"
wget -O sstpp "https://raw.githubusercontent.com/lesta-2/sc-noip/main/update/sstpp.sh"
wget -O trojaan "https://raw.githubusercontent.com/lesta-2/sc-noip/main/update/trojaan.sh"
wget -O v2raay "https://raw.githubusercontent.com/lesta-2/sc-noip/main/update/v2raay.sh"
wget -O wgr "https://raw.githubusercontent.com/lesta-2/sc-noip/main/update/wgr.sh"
wget -O vless "https://raw.githubusercontent.com/lesta-2/sc-noip/main/update/vleess.sh"
wget -O bbr "https://raw.githubusercontent.com/lesta-2/sc-noip/main/update/bbr.sh"
wget -O trojangoo "https://raw.githubusercontent.com/lesta-2/sc-noip/main/update/trojangoo.sh"
wget -O cff "https://raw.githubusercontent.com/lesta-2/sc-noip/main/cff.sh"
wget -O cfd "https://raw.githubusercontent.com/lesta-2/sc-noip/main/cfd.sh"
wget -O cfh "https://raw.githubusercontent.com/lesta-2/sc-noip/main/cfh.sh"
chmod +x menu
chmod +x l2tp
chmod +x ssh
chmod +x ssssr
chmod +x sstpp
chmod +x trojaan
chmod +x v2raay
chmod +x wgr
chmod +x bbr
chmod +x trojangoo
chmod +x cff
chmod +x cfd
chmod +x cfh

echo "0 5 * * * root clear-log && reboot" > /etc/crontab
echo "0 0 * * * root xp" > /etc/crontab
clear
echo " Fix minor Bugs"
echo " Now You Can Change Port Of Some Services"
echo " Reboot 5 Sec"
sleep 5
rm -f update.sh
reboot
