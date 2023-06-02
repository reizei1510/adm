#!/bin/bash
VARS=$(printenv | grep 'LC_*')
if [[ $(printf "${VARS[@]}" | sort -u | grep -c -) == 1 ]]
then
  echo "Vars is equal"
else
  echo "Vars is not equal"
fi
