#!/bin/bash

PATH=$1

if [ ! -d "$PATH" ]
then
    echo "$path does not exist"
    exit
fi

SUBDIRS=$(echo $(basename -a $PATH/*/ | paste -d ' ' -s -))
read -ra SUBDIRSLIST <<< "$SUBDIRS"
for SUBDIR in "${SUBDIRSLIST[@]}"
do
    echo $(ls $PATH/$SUBDIR | wc -l) >> "$SUBDIR"
done
