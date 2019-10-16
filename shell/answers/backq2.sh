#!/bin/bash

# Example of using backquotes to assign the output of a command to a variable.
#Backquote example

today=`date`
echo "Hello `whoami` Today is $today"
