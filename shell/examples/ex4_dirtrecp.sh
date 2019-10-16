#!/bin/sh
#Example 4: Directory tree copier


#From
#R.G.Sage
#"Tricks of the UNIX Masters"
#SAMS Publishing 1987


#The following example may be adapted to displaying 
#directory trees on remote nodes

#Environment variables
#   CMD   A command read from the user
#   DEST  The destination directory to copy to
#   OPT   OPTIONS PASSED ON TO CPIO
#   PWD   The current working directory
#   SRC   The source directory to copy from

#sample usage
# cptdir $HOME /bkp
#copies every file from $HOME to directory /bkp


# @(#)  cptdir v1.0 Copy a directory tree

if [ $# -lt 2 -o $# -gt 3 ]
   then echo "cptdir: argument error " >&2
        echo "usage: cptdir [-s] srcdir destdir" >&2
        echo "          -s silent mode" >&2
        exit 1
fi

if [ "$1" = "-s" ]
   then OPT="-pd"
       shift
   else OPT="-pdv"
fi

SRC=$1
DEST=$2
umask 0

if [ -d $DEST ]
   then echo "\"$DEST\" already exists. Remove it? (y/n): \c"
        read CMD
        if [ "$CMD" = "y" ]
          then rm -rf $DEST
               mkdir $DEST
        fi
    else mkdir $DEST
fi

if [ "`echo $DEST|cut -c1`" = "/" ]
   then cd $SRC
       find . -print | sort | cpio $OPT $DEST
   else PWD=`pwd`
        cd $SRC
        find . -print | sort | cpio $OPT $PWD/$DEST
fi


