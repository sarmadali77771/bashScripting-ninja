#!/bin/bash
#


for file in /etc/*
do 
	if [[ -f $file ]];
	then
		echo "$file is file"

	elif [[ -d $file ]]
	then
		echo "$file is directory"
	else
		echo "Other file type"
	fi
done
