#!/bin/bash

figlet Joker Sniffer
ifconfig
echo "Enter ip Address in x.x.x.x form one by on"
read ip1
read ip2
read ip3
sudo timeout -s TERM 5s netdiscover -r $ip1.$ip2.$ip3.1/24
echo "Enter your target Ip"
read ip
nmap -v -Pn $ip

