#!/bin/bash
COUNT=1
for FILE in "$@"
do
    if [ -f "$FILE" ]
    then
        echo $(wc -l $FILE) 
    else
        echo "$FILE does not exist"
    fi
    COUNT=$(( $COUNT + 1 ))
done
