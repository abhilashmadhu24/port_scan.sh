#!/bin/bash
#Simple script to search available ports on remote server using NMAP tool
#NMAP package needs to be installed on local server.
#Author: Abhilash Madhu


echo "-----------------------------"
read -p "Server IP to scan: " server

echo "-----------------------------"
op=$(nmap -Pn $server | grep "open")
cl=$(nmap -Pn $server | grep "closed")

echo "Opened ports on" $server "are" $op
echo "-----------------------------"
echo "Closed ports on" $server "are" $cl
echo "-----------------------------"                                   
