#!/bin/bash
# compile mono programs to run on linux without executing
#+in the mono environment

binaryName="$1"
executableFile="$2"

if [ -z "$1" ] || [ -z "$2" ] ; then
	echo "Pass in the name you wish the binary to have as param 1"
	echo "Pass in the path of the executable you wish to compile for Linux"
	exit
else
	echo "Compiling $2 as $1"	
	mkbundle -o "$binaryName" "$executableFile" --deps --cross default
fi
