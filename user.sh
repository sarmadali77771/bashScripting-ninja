#!/bin/bash
#

read -p "Enter username: " username
read -s -p "Enter password: " password

echo 

echo "creating user account"

useradd -m -p "$password" "$username"

echo "$username account is created"

cat /etc/passwd | grep $username

echo "Deleting user"

userdel -r $username

cat /etc/passwd | grep $username
