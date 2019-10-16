#!/bin/csh -f
# Program 15. The c-shell while loop


if( $#argv > 1 ) then
  set i=5
  while($i > 0 ) 
    echo $i Sent to printer!    #Might send the file to a printer
    set i=`expr $i - 1`
  end
else
  echo "Please enter 2 arguments where"
  echo "Argument 1 is: filename"
  echo "Argument 2 is number of hard copies required"
endif
