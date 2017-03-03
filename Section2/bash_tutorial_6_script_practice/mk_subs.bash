#!/bin/bash 
# Make files based on some input list to $1.
for i in $(<$1); do 
    touch $i'.file'
done
exit

