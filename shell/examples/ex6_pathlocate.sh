#!/bin/sh
# Example 6: Path locator with special options

#From
#R.G.Sage
#"Tricks of the UNIX Masters"
#SAMS Publishing 1987


#Prints the directory location of a file, a long
#listing of the file, or looks for setuid bit
#files in directories on the specified path

#sample call
# paths -l ed ex vi
#
# print a long listing of the editors ed, ex and vi

#Environment variables
# ARG Holds each command line argument path
# DIR The directory element in PATH
# FILE Holds each file from the command line
# FORMAT The type of output desired
# IFS    Shell environment variable, interfield separator
# PATH   Shell environment variable, paths of the executable directories

FORMAT="path"

for ARG in $@
do
	if [ "`echo $ARG | cut -c1`" = "-" ]
	  then case $ARG in
	  	-l) FORMAT="ls"
		    shift;;
		-s) FORMAT="set"
		    set "1";;
		*)  echo "$0: arg error"	>&2		
		    echo "usage: $0 [-l] [-s] file [file ...]"	>&2
		    exit 1;;
	       esac	  
	fi
done

IFS="${IFS}:"


for FILE in $@
do
	for DIR in $PATH
	do
		case $FORMAT in 
		path) if [ -f $DIR/$FILE ]
		        then echo $DIR/$FILE
		      fi;;
		ls)   if [ -f $DIR/$FILE ]
		        then ls -l $DIR/$FILE
		      fi;;
		set)  echo "\n:::::::::::::::::::::::"
		      echo "$DIR"
		      echo ":::::::::::::::::::::::::"
		      ls -al $DIR | grep "^[^ ]*s[^ ]*";;	
		esac
	done
done

