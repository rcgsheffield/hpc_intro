#!/bin/csh -f
# Program 17. Case script for the c shell


if ( $#argv ==  0) then
   echo "Please enter an argument"
   exit 1
else 
if ( $#argv >= 2 ) then
   echo "Please enter only one argument"
   exit 1
else 
  if ( -f "$1" ) then
     switch($1)
     case *".txt":
         ls "$1" && cp "$1" txt && echo "$1 moved to txt directory"
	 breaksw
     case *".tmp":
         ls "$1" && cp "$1" tmp && echo "$1 moved to tmp directory"
	 breaksw
     endsw
  else
     echo "The argument entered is not a file!"
endif

