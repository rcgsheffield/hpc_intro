#!/bin/csh -f
# Program 5. Defining and assigning variables.

set maximum=20
set a=hello
set b="Hello World"
set c=(This has five elements) #Method for defining an array using the c shell
echo "maximum is $maximum"
echo "a is $a"
echo "b is $b"
echo $#argv
echo $0
echo $argv[1]
echo $1
echo $c[4] #Display 4th element of the array
