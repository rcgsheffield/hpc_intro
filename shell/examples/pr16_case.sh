#!/bin/sh
# Program 16. Case script for the Bourne shell


if test "$#" -eq  0
then
   echo "Please enter an argument"
   exit 1
elif test "$#" -ge 2
then
   echo "Please enter only one argument"
   exit 1
elif test -f "$1"
then
   case "$1" in
       *".txt") ls "$1" && cp "$1" txt && echo "$1 moved to txt directory";;
       *".tmp") ls "$1" && cp "$1" tmp && echo "$1 moved to tmp directory";;
   esac
else
  echo "The argument entered is not a file!"
fi

