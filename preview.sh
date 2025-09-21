#!/bin/bash

if [ $EUID -ne 0 ]; then
	echo ERROR: You must run this as root
	exit
fi

plymouthd --debug --debug-file=/tmp/plymouth-debug.log
plymouth --show-splash
#plymouth pause-progress
#plymouth message --text="pausing boot - press 'c' or space bar to continue"
#plymouth watch-keystroke --keys="cC " --command="tee /tmp/c_key_pressed"
#plymouth message --text="resuming boot"
#plymouth unpause-progress
plymouth change-mode --updates
sleep 2
plymouth system-update --progress=50
sleep 2
#plymouth change-mode --reboot
sleep ${1:-2}
plymouth quit
