#!/bin/bash

<<info
this shell script will take periodic backups

eg.
./backup.sh <source> <dest>
info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d')

zip "$dest/backup-$timestamp.zip" $src
