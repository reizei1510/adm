#!/bin/bash
PTH=$1
if [ ! -d "$PTH" ]
then
    echo "$path does not exist"
    exit
fi
SUBDIRS=$(echo $(basename -a $PTH/*/ | paste -d ' ' -s -))
read -ra SUBDIRSLIST <<< "$SUBDIRS"
for SUBDIR in "${SUBDIRSLIST[@]}"
do
    echo $(ls $PTH/$SUBDIR | wc -l) >> "$SUBDIR"
done
