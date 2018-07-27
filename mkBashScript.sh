#!/bin/bash
# mkBashScript.sh
# set up a bash script using a standard format
# Last Edited: 7/27/18 Julian Thies

if [ -z "$1" ] ; then
	echo "No script name passed in"
	exit
else
	echo "Building framework for script $1 in $(pwd)"
fi

echo "#!/bin/bash" > "$1"
echo "# $1" >> "$1"
echo "# " >> "$1"
echo "# Last Edited: $(date +%m/%d/%y)" >> "$1"
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
