#!/bin/bash
# Program 10. if then else Control Structures for the bourne shell

# The if then else operation

if [ $(( $1 % 5 )) -eq 0 ] && [ $(( $1 % 3 )) -eq 0 ]
then
   echo "You entered a multiple of 3 and 5!"
elif [ $(( $1 % 5 )) -eq 0 ]
then
   echo "You entered a multiple of 5!"
elif [ $(( $1 % 3 )) -eq 0 ]
then
   echo "You entered a multiple of 3!"
else
   echo "Not divisible by 3 or 5";
fi

if [ $# -gt 1  ]  #Check that a file argument exists
then
 if [ -f "$2" ]
 then 
   echo file exists;
   cat $2
 fi
fi
