#!/bin/sh

#Problem 5.c
#Backquote example
t1=`whoami`
t1=`finger -s $t1` 
name=echo $t1 | cut -f 10 
echo "Hello $name  
