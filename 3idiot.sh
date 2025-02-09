#!/bin/bash

#user defined variables

hero="rancho"
villain="virus"

echo "3 idiot ka hero hai $hero"

echo "3 idiot ka villain hai $villain"


# shell / environment variables bhi hote hai (pre defined)

echo "current logged in user $USER"
# user input

read -p "rancho ka poora naam kya tha" fullname

echo "rancho ka poora naam $fullname thi"

# arguments

# ./3idiot.sh raju farhan rancho

echo "movie ka naam: $0"

echo "first idiot: $1"

echo "second idiot: $2"

echo "third idiot: $3"

echo "the total number of idiots: $#"

echo "hence the 3 idiots are $@"
