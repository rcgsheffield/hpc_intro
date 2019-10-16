#!/bin/csh -f
# Program 8. Arithmetic operations on shell variables 

set i1=10
set j1=3
@ k1 = $i1 + $j1  #Note:The space between @ and k1 is important!
echo "The sum of $i1 and $j1 is $k1"

set i2=2
set j2=6
set k2=`expr $i2 - $j2`
echo "The difference of $i2 and $j2 is $k2"

