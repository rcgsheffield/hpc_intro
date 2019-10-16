#!/bin/sh

#From
#R.G.Sage
#"Tricks of the UNIX Masters"
#SAMS Publishing 1987

# Example 9: tgrep v1.0 Search for strings in a tree
# sample usage
# tgrep "profanity" /
# Find profanity anywhere in the system...
# (root on the warpath!)

#Environment variables
# FILE holds each filename
# OPT  holds special options for find
# STRING  Temp variable to hold the search string





OPT=""

for ARG in $@
do
	if [ "`echo $ARG | cut c1`" = "-" ]
	  then case $ARG in
	       -c) OPT="-name \"*.c\""
	           shift;;
	       -h) OPT="-name \"*.h\""
	           shift;;
	        *) echo "$0: incorrect argument"		>&2
		   echo "usage: $0 [-c|-h string [file ...]"	>&2
		   exit 1;;
	        esac	
	fi
done

case $# in
0)	echo "$0: argument error"			>&2
	echo "usage: $0 [-c|-h] string [dir ...]"	>&2
	exit 2
	;;
1)	while read FILE
	do
		grep -y "$1" $FILE /dev/null
	done
	;;
*)	STRING=$1; shift
	eval find "$@" -type f $OPT -print | sort | while read FILE
	do
	   grep -y "$STRING" $FILE /dev/null
	done
	;;
esac
