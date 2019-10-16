#!/bin/sh

# Program 19. A Bourne shell function example
fileexists_fn()
{ 
	if `localfileexists $file`
	then
		result=0
	else
		result=1
	fi
}

if test $# -gt 0
then
	file=$1
	echo file is $file

	fileexists_fn

	if test $result -eq 0
	then
		echo "$file exists"
		exit 0
	else
		echo "$file  does not exist"
		exit 1
	fi
else
	echo "Specify a file on the command line"
fi









