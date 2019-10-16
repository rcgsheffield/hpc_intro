#!/bin/sh

# Example 5: Visual display of a tree file
#

#From
#R.G.Sage
#"Tricks of the UNIX Masters"
#SAMS Publishing 1987

# tree /cs/cs1mkg/temp
#  prints directory output in the format of a tree structure
#  tree uses UNIX sed facility to turn the output of find
#  into visual output


if [ "$#" -gt 1 ]
   then echo "tree: wrong arg count" >&2
        echo "usag: tree [dir]"      >&2
        exit 2
fi

if [ "$#" -eq 1 ]
   then if [ ! -d $1 ]
          then echo "$0: $1 not a directory" >&2
               echo "usage: tree [dir]"      >&2
               exit 2
        fi
fi


find ${1:-.} -print | sort | sed -e "1p" -e "1d"         \
                               -e "s|[^/]*/|     /|g"  \
                               -e "s|^ */|/|"          \
                               -e "s|/\([^/]*\)$|\1|"
			       
			      
                           
