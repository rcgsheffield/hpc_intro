#! /bin/csh -f
#Example 3 While Directory copy for the C-shell
    #
    # Example of a shell script to copy all files from one directory 
    # to another. The input directory must not contain any subdirectories, 
    # and it will not copy any so-called (hidden) dot-files.
    #
    ##                 	 check if called properly
    if ($#argv != 2) then
        echo "Usage: $0 dir1 dir2"
        echo "copies all files from one directory to another"
        goto done
    endif
    ##                  save command line args in variables
    set dir1=$1
    set dir2=$2
    ##                  check if dir1 indeed is an existing dir
    if (! -d $dir1) then
        echo "$dir1 is not a directory" ; exit 1
    endif
##                  check if dir2 does not exist
    if (-e $dir2) then
        echo "$dir2 already exists" ; exit 1
    endif
    ##                  create new dir2
    mkdir $dir2
    if ($status != 0) goto error
    ##                  loop through all files in dir1
    foreach file ($dir1/*)
        if (-d $file) then
            echo "Skipping $file (is a directory)"
        else
            echo "Copying $file"
            cp $file $dir2
        endif
    end
    ##           Labels to jump to exit OK (done) or not OK (error)
    done:
     exit 0
    error:
     exit 1

