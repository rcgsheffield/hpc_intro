#!/bin/sh
# Program 14. The while loop


if test "$#" -eq 2
then
  i=$2
  while test "$i" -gt 0 
  do
    echo "$1 $i Sent to printer!"     #Might send the file to a printer
    i=`expr $i - 1`
  done
else
  echo "Please enter 2 arguments where"
  echo "Argument 1 is: filename"
  echo "Argument 2 is number of hard copies required"
fi

