#!/bin/bash

# user defined variables

hero="rancho"
villain="virus"


echo "3 idiot ka hero hai $hero"
echo "3 idiot ka vllain hai $villain"

# take arguments from user

read -p "rancho ka poora naam kya tha" fullname

read -p "rancho ka poora naam $fullname tha"

# arguments

# ./3idiot.sh raju farhan rancho

echo "movie ka naam: $0"

echo "first idiot: $1"

echo "second idiot: $2"

echo "third idiot: $3"

echo "hence the idiots are $@"
