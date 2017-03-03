#!/bin/bash 
# Make 100 folders
#For iterator i: 1->100
for i in `seq 1 100`; do 
    #print 'asdf' to a new file
    #echo 'asdf' > $i'.file'; 
    mkdir $i
done
exit

