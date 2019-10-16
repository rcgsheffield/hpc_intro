#!/bin/sh

# setting the nodename 
#
#Example of the use of if...then for setting variables


node="no node found"
if test "$#" -gt 0
then

	if test "$1" = "maxima" || test "$1" = "max" || test "$1" = "ln1"
	then
		node="maxima.leeds.ac.uk"
	elif test "$1" = "pascali" || test "$1" = "pas" || test "$1" = "yn1"
	then
		node="pascali.wrg.ac.uk"
	elif test "$1" = "titania" || test "$1" = "titan" || test "$1" = "sn1"
	then
		node="titan00.shef.ac.uk"
	fi
fi

echo $node
