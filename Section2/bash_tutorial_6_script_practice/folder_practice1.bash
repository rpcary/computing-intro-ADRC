#!/bin/bash
#Print a list of folders with the 'for' loop.

flist=`ls -1d */` #Create a list of folders from you current directory...

for folder in $flist; do
    echo $folder' is a folder...'
done

