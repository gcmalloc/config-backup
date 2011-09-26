#!/bin/sh
BACKUPDIR="$HOME"/myfiles/config
BACKUPFILE=$BACKUPDIR/bak.tar
if [ ! -d "$BACKUPDIR" ]; then
	mkdir "$BACKUPDIR" -p
fi
echo "Performing backup"
cd $HOME
tar -zcvf $BACKUPFILE .??*
 
