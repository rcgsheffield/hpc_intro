#!/bin/bash
# Program 7. Simple bash shell script 
#            for returning the $1th file in a directory.
j=$1
ls -l | sed -n -e "$j p"

#sed notes
# -e option read editor commands form command line
# -n option suppress default output
#
#  sed commands enclosed by ""
#  $j p  print jth line of output
