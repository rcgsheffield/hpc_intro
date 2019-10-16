#!/bin/csh 
# 
# This script reads the names of two directories from the command line
# and calculates the total number of files in both directories
# and prints it out.
#  
# We have added tests for ;
#   - At least two parameters
#   - The existence of the directories 
#
# We also give more detailed report of number of files.
#
# D.Savas 17.12.03

if ($#argv < 2 ) then
   echo 'At least two parameters must be specified'
   exit
endif
 
 
 if ( (-d $1) && (-d $2) ) then
   set nfiles1 = `ls $1 | wc -w`
   set nfiles2 = `ls $2 | wc -w`

#V at least one space is needed below ( in column 2 )
@   total= $nfiles1  +  $nfiles2
# spaces are needed ^ around the + sign  
    echo 'Directory:' $1 'contains' $nfiles1 ' files'
    echo 'Directory:' $2 'contains' $nfiles2 ' files'
    echo 'Total number of files are:' $total
  else
     echo ' Both parameters must be directory names '
  endif
  
