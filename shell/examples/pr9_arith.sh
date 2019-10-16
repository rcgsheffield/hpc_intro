#!/bin/sh
# Program 9. Arithmetic operations on shell variables 

# The @ aperator does not work for te Bourne shell

i1=2
j1=6
k1=`expr $i1 \* $j1`   #Using backslash to take * operator literally
echo "The multiple of $i1 and $j1 is $k1"

i2=2
j2=6
k2=`expr $i2 - $j2`
echo "The difference of $i2 and $j2 is $k2"

