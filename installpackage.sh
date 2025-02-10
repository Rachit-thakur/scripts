#!/bin/bash

<<info
this script will install the package that you want to pass
e.g ./installpackage.sh nginx
info

echo "Installing $1"

sudo apt-get update
sudo apt-get install $1 -y

echo "Installation completed"
