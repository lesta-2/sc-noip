#!/bin/bash

wget https://raw.githubusercontent.com/lesta-2/sc-noip/main/ohp-db.sh;chmod +x ohp-db.sh;./ohp-db.sh
wget https://raw.githubusercontent.com/lesta-2/sc-noip/main/ohp-ovpn.sh;chmod +x ohp-ovpn.sh;./ohp-ovpn.sh
rm -f /root/ohp-db.sh
rm -f /root/ohp-ovpn.sh
