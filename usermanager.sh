#!/bin/bash

# This is the user management script


read -p "enter the username you wish to check" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then
	        echo "userdoes not exist"
	else
		        echo "user exists"
fi
echo "====== Creation of user ====="

read -p "enter the username:" username

read -p "enter the password:" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "===== Creation of user completed ====="

sudo userdel $username

echo "===== Deletion of user completed ====="

if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then

	        echo "as wc is 0 the user is deleted"
	else
		        echo "the user was not deleted"
fi
