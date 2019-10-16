#!/bin/csh -f
# Program 13. The for loop

foreach i(3 7 11) 
  echo " $i * 5 is `expr $i \* 5`  "
  echo "File $i is "
  ls | sed -n -e "$i p"               #list the ith file in the directory
end

