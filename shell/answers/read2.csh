#!/bin/csh
#
# An example csh script which reads two variables 
#  as input from the keyboard and uses them .
#  Note that the bang line is specifying csh as the shell .
 

 echo 'Enter grid node name:' 
#
set grid_node=$< 

  echo 'Enter path to the executable:'  
#
set exefil=$<
 
#  
  echo 'Execute:' ${exefil} 'at' ${grid_node} 
 
 
