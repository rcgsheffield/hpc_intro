#!/bin/bash

mypid=$$
echo "mypid is $mypid"
echo
i=0
while [ true ]
do
  i=`expr $i + 1 `
  d=`date '+%H:%M:%S'`
  echo "$i \t $d"
  sleep 2
done
