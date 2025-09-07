#!/bin/bash

<<info
this shell script will take periodic backups

eg.
./backup.sh <source> <dest>

src /home/rachit-thakur/scripts
dest /home/rachit-thakur/backups
info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src
aws s3 sync "$dest" s3://rachitbackups
