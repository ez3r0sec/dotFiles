#!/bin/bash
# requires wget
# Last Edited: 12/15/18 Julian Thies

URL="$1"


echo "[ ===== STARTING DOWNLOAD: $URL ===== ]"
echo

wget -r -np -k $URL

echo
echo "[ ===== COMPLETE ===== ]"
