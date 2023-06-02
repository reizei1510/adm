#!/bin/bash
LOGFILE=$1
TIME=$2
while [[ $TIME > 0 ]]
do
  echo $(date '+[%d.%m](http://%d.%m/).%y %H:%M') = $(</proc/loadavg) >> $LOGFILE
  TIME=$(( $TIME-1 ))
  sleep 1 
done
