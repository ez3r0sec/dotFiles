#!/bin/bash
# mkPyScript.sh
# set up a python script using a standard format
# Last Edited: 7/27/18 Julian Thies

if [ -z "$1" ] ; then
	echo "No script name passed in"
	exit
else
	echo "Building framework for script $1 in $(pwd)"
fi

echo "#!/usr/bin/python" > "$1"
echo "# $1" >> "$1"
echo "# " >> "$1"
echo "$ Last Edited: $(date +%m/%d/%y)" >> "$1"
echo >> "$1"
echo "### IMPORTS" >> "$1"
echo >> "$1"
echo >> "$1"
echo "### VARIABLES" >> "$1"
echo >> "$1"
echo >> "$1"
echo "### FUNCTIONS" >> "$1"
echo >> "$1"
echo >> "$1"
echo "### SCRIPT" >> "$1"
echo >> "$1"
echo >> "$1"

echo "Script initialized"