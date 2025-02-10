#!/bin/bash

check_username_exists() {
	    if id "$1" &>/dev/null; then
	       return 0  # Username exists
            else
               return 1  # Username doesn't exist
            fi
	                }

create_user() {
    local username="$1"
    local password="$2"

if check_username_exists "$username"; then
            echo "Error: Username '$username' already exists."
            exit 1
    fi

sudo useradd "$username"  # Create the user
    echo "$username:$password" | sudo chpasswd

 echo "User account '$username' created successfully!"
} 
