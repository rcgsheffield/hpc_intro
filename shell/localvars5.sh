#!/bin/bash

# This script creates some local variables as well as 
# modifying a global variable. 
# run this in two ways  (1)./localvars5   (2) source localvars
#  and observe the difference of its effect 
 
case "$-" in
*i*)	echo This shell is interactive ;;
*)	echo This shell is not interactive ;;
esac
 
today='Todays date is:'`date`
echo $today
echo "We are in shell level=$SHLVL" 
SHLVL=2
echo "We have reset it to $SHLVL"
export PATH=${PATH}":/usr/local/new" 
echo "path is set to: $PATH"

myname='tom'
# notice the -e parameter to echo that expands special characters 
#  such as \n=newline \t=tab. Also \v=vertical tab \b=backspace  \r=return
echo  -e " \n \n \t variable myname is set to ${myname}  \n"
