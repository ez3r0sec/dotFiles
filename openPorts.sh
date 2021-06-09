#!/bin/bash
# nmap check for open ports against $1 {IP}

# VARS
TARGET_IP="$1"	# use $1 when calling the script as our IP address/hostname/range

RESULTS_FILE="$(pwd)/$1_openports.txt"	# define a file to write to


echo "Testing for open ports on $TARGET_IP"

# use -Pn to disable checking if host is up, host will be assumed to be up
nmap -Pnvv --open "$TARGET_IP" >> "$RESULTS_FILE"

echo "Results file: $RESULTS_FILE"

