#!/usr/bin/python
# getPermOctal.py
# check the permission bits of a file
# Last Edited: 12/6/18 Julian Thies

### IMPORTS
import os
import sys

### VARIABLES
arg = sys.argv[1]

### FUNCTIONS
def checkOctal(file):
	if os.path.exists(file):
		permissions = oct(os.stat(file)[0])[-3:]
		print(str(permissions))
	else:
		print("[!] File not found")
		
### SCRIPT
checkOctal(arg)