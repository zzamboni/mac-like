#!/bin/bash

if [ $EUID -ne 0 ]; then
	echo ERROR: You must run this as root
	exit
fi

plymouthd --debug --debug-file=/tmp/plymouth-debug.log
plymouth --show-splash
sleep 2
plymouth change-mode --updates
sleep 2
plymouth system-update --progress=50
sleep 2
#plymouth change-mode --reboot
sleep ${1:-2}
plymouth quit
