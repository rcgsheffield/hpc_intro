#!/bin/csh
# 
# This script reads the name of two directories from the command line
# and calculates the total number of files in both directories
# and prints it out.
# This is probably the shortest script possible.
# Therefore it is rather cryptic. 
#
# D.Savas 17.12.03

@ total=`ls ${1} | wc -w` + `ls ${2} | wc -w`
echo 'Total number of files are:' $total
