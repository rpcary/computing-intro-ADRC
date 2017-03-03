#!/bin/bash
#This script will change the extention on a list of files, after checking
# with the user. The script expects two arguments.
#Argument format expected as 'txt', 'mat', etc.
#This script is not ideal when re-naming hundreds, or especially thousands
# of files, as the user is prompted to review the full list of unchanged and
# changed files.

## usage ##
usage() {
    echo "Usage: "
    echo "This script will change the extention on a list of files, after checking with the user. The script expects two arguments."
    echo "Argument format expected as '.txt', '.mat', etc."
    echo "Example Usage: Change all files from .file to .txt"
    echo "[]$ ch_exts_prompt.bash .file .txt"
    echo ""

}
#Test if you have the apropriate number of arguments, and provide usage info
# if not. 
if [ $# -lt 2 ]; then 
    usage
    exit 1 #This exits the script here, and prevents the rest from running
# with too few arguments. 
fi

## Making the prompt ##
FILE_LIST=$(ls ./*"$1") #Make the list of files to be edited. 

echo "Do you wish to rename the following files?"
echo "$FILE_LIST"
echo "to"
echo "${FILE_LIST//$1/$2}" #Use variable substitution, specifically global
# replacement '${var//match/replace}', to show how the files will end up.

#The 'read' command takes user input and stores it in a variable. 
read -p "y/n[ENTER]" test1 #We'll store the user intput in $test1

## Testing Input and Making a Choice ##

#Test whether the variable $test1 is set to 'y'
if [ $test1 == 'y' ]; then
#If it is set to 'y', then...
    echo "Renaming..."
    for f in $FILE_LIST; do
#   ...loop through the file list and rename the files.
        mv $f ${f/$1/$2}
    done
    echo "Complete."
#If $test1 is not set to 'y'....exit.
else
    echo "Exiting without renaming..."
    exit 0
fi
