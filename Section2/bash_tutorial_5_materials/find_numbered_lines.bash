#!/bin/bash 
#Find all lines in file with numeric values
#Expects at least one argument in the form of the file you wish to search
usage() {
    echo 'Find all lines with numeric values in a given text file'
    echo 'find_numbered_lines.bash textfile.txt'
    exit
}
echo 'nargs: '$#
if [ $# -lt 1 ] ; then
    usage
fi
grep [0-9] $1
exit 
