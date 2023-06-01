#!/bin/bash
IFS=':' read -ra PTHS <<< "$PATH"
for PTH in "${PTHS[@]}"
do
  echo $PTH': ' $(find $PTH -type f | wc -l)
done
