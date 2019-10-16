#!/bin/sh
# Program 12. The for loop

for i in 3 7 
do
  echo " $i * 5 is `expr $i \* 5`  "
  echo "File $i is "
  ls | sed -n -e "$i p"               #list the ith file in the directory
done

