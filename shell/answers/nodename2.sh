#!/bin/sh
# A Bourne Shell script using if statements.
# 
# This script checks if there is at least one command line parameter. 
# If there isn't it asks the user to enter it. 
# D.Savas 17.12.03
#
if [ $# -gt 0 ] 
 then
    nam=$1
else
  echo 'Enter White Rose Grid Node Name:' 
  read nam
fi

 node="none" 
 if [ "$nam" = "max" -o "$nam" = "maxima" -o "$nam" = "ln1"  ]
  then 
     node="maxima.leeds.ac.uk"
  elif [  "$nam" = "titan" -o "$nam" = "titan00" -o "$nam" = "sn1" ]
  then
    node="titan-00.shef.ac.uk"
  elif [ "$nam" = "pascali" -o "$nam" = "pasc" -o "$nam" = "yn1" ]
    then   
    node="pascali.wrg.york.ac.uk" 
  elif [ "$nam" = "sno" -o "$nam" = "snowdon" -o "$nam" = "ln2" ]
    then 
    node="snowdon.leeds.ac.uk"
  fi
  
  if  [[ "$node" = "none" ]]
   then
    echo '**** Node can not be recognised!'
  else
    echo 'Selected Node:' $node 
  fi
