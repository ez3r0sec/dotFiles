#!/bin/bash
# strings for IP addresses

if [ -z "$1" ] ; then
	echo "Pass in a file to analyze as param 1"
	exit
else
	strings "$1" | grep -w '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' | sort | uniq -u
fi