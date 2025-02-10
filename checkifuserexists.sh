#!/bin/bash

# this script checks if user exists

read -p "enter the username you wish to check" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then
	echo "userdoes not exist"
else
	echo "user exists"
fi
