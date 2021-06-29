#!/bin/bash

if [ "$(whoami)" != "root" ] ; then
	echo "Must be run with root privileges"
	exit
fi

ifconfig wlo1 down

sleep 2

ifconfig wlo1 up
