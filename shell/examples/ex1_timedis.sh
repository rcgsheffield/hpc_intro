#!/bin/sh
#example 1 simple never ending time display
i=0
while [ true ]
do
  i=`expr $i + 1 `
  d=`date '+%H:%M:%S'`
  echo -e "`whoami` $i \t $d"
  sleep 2
done
