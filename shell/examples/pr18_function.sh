#!/bin/sh
#program18
#Function usage with shell scripts

#Declare functions that will be used
#Provides example of passing variables into a function

help()
{
	echo "This program determines the sum of two numbers"
        echo "Enter the two numbers on the command line"

	echo "param1 is $1"
        echo "param2 is $2"

	exit 0
}

calculate()
{
	echo "The sum of $1 and $2 is:"

	#Note spaces between + sign and variables
	result=`expr $1 + $2`
}



#The main body of the shell scripts starts here

if test $# -lt 2
then
	help param1 param2
else
	calculate $1 $2
fi

echo result is $result







