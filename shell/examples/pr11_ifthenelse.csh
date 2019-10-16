#!/bin/csh -f
# Program 11. If then else Control Structures for the c shell

# The if then else operation

echo "Enter a filename"
set ifile = $<

#Check if the input file exists
#if it does edit it otherwise echo a warning
if( -e $ifile) then
   nedit $ifile
else
  echo The file $ifile does not exist!
endif

#Note the syntax and be sure to get it correct
#if in doubt compare with existing shell scripts
if ( ( ($1 % 5) == 0) && ( ($1 % 3) == 0) ) then
  echo You entered a multiple of 3 and 5!
else
 if( ( $1 % 5) == 0)then
   echo You entered a multiple of 5!
 else
  if ( ($1 % 3)== 0) then
   echo You entered a multiple of 3!
  else
   echo Not divisible by 3 or 5
  endif
 endif
endif


