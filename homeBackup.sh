#!/bin/bash
# backup home directory to an external HDD

currentUser="$(id -un)"
srcBase="/home/$(id -un)"
dest="/run/media/$(id -un)/$1"

if [ -z "$1" ] ; then
	echo "Pass in the destination directory (from root of mounted volume, ie. /EXTHD/backups/mybackupdir) as param 1"
	exit
else
	ls -1 "$srcBase" >> "/tmp/backupDirs.txt"

	if [ -e $dest ] ; then
		echo "Copying data to $dest..."
		cat "/tmp/backupDirs.txt" | while read line
		do
		    rsync -var "$srcBase/$line" "$dest"
		done
	else
		echo "Make sure destination directory ($1) exists!"	
	fi
	# clean up
	rm "/tmp/backupDirs.txt"
fi

echo "Complete!"