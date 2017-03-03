#!/bin/bash
#Print a formatted list of folder 'items' using a 'for' loop.

echo "Items	Folder"

flist=`ls -1d */` #Create a list of folders from you current directory...

for folder in $flist; do
    fc=`ls -1 $folder/* | wc -l`
    echo $fc'	'$folder
done
