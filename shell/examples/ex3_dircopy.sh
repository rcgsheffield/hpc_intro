#!/bin/bash
#Example 3 While Directory copy for the bash-shell
    #
    # Example of a shell script to copy all files from one directory 
    # to another. The input directory must not contain any subdirectories, 
    # and it will not copy any so-called (hidden) dot-files.
    #
    ##                 	 check if called properly
    if [[ $# -ne 2 ]] 
    then 
        echo "Usage: $0 dir1 dir2"
        echo "copies all files from one directory to another"
        exit 0
    fi
    ##                  save command line args in variables
    dir1=$1
    dir2=$2
    ##                  check if dir1 indeed is an existing dir
    if [[ ! -d $dir1 ]] 
    then
        echo "$dir1 is not a directory" ; exit 1
    fi 
##                  check if dir2 does not exist
    if [[ -e $dir2 ]] 
    then
        echo "$dir2 already exists" 
	exit 1
    fi 
    ##                  create new dir2
    mkdir $dir2
    if [[ $? != 0 ]]  
     then  
      exit 2
    fi
 
    ##                  loop through all files in dir1
 #   files=`ls $dir1/*`
 #   echo $files
    for file in `ls $dir1/*` 
       do
        if [[ -d $file ]] 
	then
            echo "Skipping $file (is a directory)"
        else
            echo "Copying $file"
            cp $file $dir2
        fi
       done 
     
