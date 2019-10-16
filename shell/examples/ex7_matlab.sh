#!/bin/sh
#
#
#Example 7: Run matlab in non-interactive mode
help()
{
  echo 'Usage:  matlabjob matlab_commands_file [ output_file ] '
  echo ' '
  echo '  This command runs a set of Matlab commands' 
  echo '  in non-interactive, non-graphical mode.'
  echo ' ' 
  echo '   If the output_file is not specified, o/p is directed to stdout.'
  echo ' '
}
if test -z "$1" 
then 
    help
    exit 1
 else 
   if test -f "$1" 
   then 
     if test -z "$2" 
     then
#  matlab -nodisplay < "$1" > "$1".out # uncomment this line to o/p to .out
        matlab -nodisplay < "$1" 	
     else  
       matlab -nodisplay < "$1" > "$2"
     fi
   else
      echo "$1" "is not a file"
   fi  
 fi
