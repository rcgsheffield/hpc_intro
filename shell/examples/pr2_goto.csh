#!/bin/csh -f
# Program 2.  Shell script illustrating the use of 
#             labels and the goto statement.

echo "Hello World! "         #  characters taken literally except $, ` 
echo "My name is  `whoami`"  # `` backquotes enclose executable statements 

goto label1

echo "Before label1"   #This line is never reached and is never echoed

label1:
  echo "After label1"
