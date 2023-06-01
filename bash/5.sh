#!/bin/bash
FILES=$(find /var/log/ -name '*.log' 2>&1 | grep -v 'Permission denied')
for FILE in $FILES
do
  LASTLOG=$(tail -1 $FILE 2>&1)
  if [[ ! "$LASTLOG" == 'Permission denied' ]]
  then
    echo $LASTLOG >> logs.log
  fi
done
