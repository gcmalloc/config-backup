#!/bin/sh

BACKUPDIR="$HOME"/myfiles/config
BACKUPFILE=$BACKUPDIR/backup.tar

if [ -f "$BACKUPFILE" ]; then
	#get the backup
	if [ ! -f "$BACKUPFILE" ]; then 
		echo "backup file does not exist" >&2
		exit 2
	fi
	echo "moving file in your home"
	tar -xf "$BACKUPFILE" -C $HOME
	if [ $? -eq 0 ]; then
		rm "$BACKUPFILE"
	fi
else
	#set the backup
	if [ ! -d "$BACKUPDIR" ]; then
		mkdir "$BACKUPDIR" -p
	fi
	echo "Performing backup"
	cd $HOME
	tar -cf "$BACKUPFILE" .??*
	chmod 1000 "$BACKUPFILE" 
fi
