#!/bin/csh
# 
# This script reads the name of two directories from the command line
# and calculates the total number of files in both directories
# and prints it out.
#  
# D.Savas 17.12.03

set nfiles1 = `ls $1 | wc -w`
set nfiles2 = `ls $2 | wc -w`

#V at least one space is needed below ( in column 2 )
@   total= $nfiles1  +  $nfiles2
# spaces are needed ^ around the + sign  

echo 'Total number of files are:' $total
