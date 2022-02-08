#!/bin/bash

grn='\033[32m'
ylo='\033[1;33m'
red='\033[31m'

if [[ $UID != 0 ]];
then 
	echo -e "${ylo}[!] Run with sudo privileges."
	exit
fi

if [[ $1 == "--uninstall" ]];
then
	rm -rf /usr/local/bin/info
	echo -e "${red}[!] Uninstalled"
	exit
fi

cp info /usr/local/bin/ > /dev/null 2>&1

if [[ $? == 0 ]];
then
	echo -e "${grn}[*] Installed successfully."
	exit
else
	echo -e "${red}[!] Installation Failed. Check if there is already a named info in /usr/local/bin."
	exit
fi