#!/bin/bash
if [ "$FOO" == "1" ] || [ "$BAR" == "5" ]
then
    exit
fi
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
