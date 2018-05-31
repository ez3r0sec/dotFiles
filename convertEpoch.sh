#!/bin/bash
# convertEpoch.sh
# convert UNIX Epoch Time to human readable

epochTime="$1"

if [ -z "$1" ] ; then
	echo "Pass in an epoch time as param 1"
	exit
else
	convert="$(date -d @$epochTime)"
	echo "$convert"
fi