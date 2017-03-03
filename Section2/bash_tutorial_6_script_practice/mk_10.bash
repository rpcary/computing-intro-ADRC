#!/bin/bash 
# Make 10 files
#For iterator i: 1->10
for i in {1..10}; do 
    touch $i'.file'
done
exit

