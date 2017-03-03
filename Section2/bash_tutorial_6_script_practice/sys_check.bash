#!/bin/bash -x

echo 'workingdir:'$PWD

if [ $OS == 'Linux' ] ; then
	echo "You're on a Linux machine!"
elif [ $OS == 'Darwin' ] ; then
	echo "You're on a Mac!"
else
	echo "System unknown"
fi
