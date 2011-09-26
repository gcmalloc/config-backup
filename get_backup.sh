#!/bin/sh
BACKUPDIR="$HOME"/myfiles/config
BACKUPFILE=$BACKUPDIR/bak.tar
if [ ! -f "$BACKUPFILE"]; then 
	echo "backup file does not exist" >&2
	exit 2
fi
echo "moving file at startup"
tar -xzvf "$BACKUPFILE" -C $HOME 
