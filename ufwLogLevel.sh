#!/bin/bash

# check UFW logging level

if [ -f /etc/ufw/ufw.conf ] ; then
	echo "$(cat /etc/ufw/ufw.conf | grep "ENABLED") and $(cat /etc/ufw/ufw.conf | grep "LOGLEVEL")"
else
	echo "It does not appear that UFW is installed on this system"
fi
