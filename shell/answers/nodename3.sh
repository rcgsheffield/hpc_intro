#!/bin/sh

#p2_3
#p3_switch.sh
#Example of the use of the switch


node="no node found"
if test "$#" -gt 0
then
 case "$1" in
  	"maxima"|"max"|"ln1") node="maxima.leeds.ac.uk" ;;
 	"pascali"|"pas"|"yn1") node="pascali.wrg.york.ac.uk" ;;
 	"titania"|"titan"|"sn1") node="titna00.shef.ac.uk" ;;		
  esac
fi

echo $node
