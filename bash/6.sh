#!/bin/bash
if [ "$FOO" == "1" ]; then
    exit
if [ "$BAR" == "5" ]; then
    exit
DIR=$1
while true
do
FILE=$(find "$DIR" -maxdepth 0)
if [ -f "$FILE" ]
then
    echo "File $FILE created!"
    exit
fi
sleep 1;
done
