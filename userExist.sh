#!/bin/bash
#
#


path=/etc/passwd
read -p "Enter username: " username

if id "$username"
then
	echo "$username user exist"
else
	echo "creating user"
	useradd -m $username
	echo "$username user created"
	id $username
fi

