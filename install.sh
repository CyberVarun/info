#!/bin/bash

if [[ $? != 0 ]];
then
	echo "This must be run with root/sudo privileges"
	echo "Try again"
	exit
fi

if [[ $1 == "--uninstall" ]];
then
	rm -rf /usr/local/bin/info
	echo "Removed previous files"
	exit
fi

cp info /usr/local/bin/
echo "Installed successfully."