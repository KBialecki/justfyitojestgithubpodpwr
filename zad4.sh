#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Wrong number of parameters"
elif [ ! -d $1 ]; then
	echo "Parameter not a directory"
else
	# 1
	find -P $1 -type l -xtype f -print

	# 3
	find $1 -type f -size +99c \( ! -perm -100 -or -writable \) -delete
fi