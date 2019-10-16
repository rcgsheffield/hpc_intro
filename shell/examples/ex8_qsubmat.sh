#!/bin/sh
#
#  Example 8:Script for submitting batch mode Matlab jobs to the sun grid engine.
#
# 13 May,2003     DS           
#
help()
{
echo ' THIS COMMAND SUBMITS MATLAB JOBS TO THE SUN GRID ENGINE '
echo ' ------------------------------------------------------- '
echo ' Usage:    runmatlab matlab_script_file  -time hh:mm:ss [-nq]'
echo ' Where; '
echo '    matlab_script_file is a file containing a series of Matlab commands.'
echo '    hh:mm:ss is the cpu time needed in hours:minutes:seconds '
echo '    -nq is an optional parameter to submit without confirming ' 
echo '    '
echo ' Example: runmatlab test1.m -time 00:30:00 '
echo '    '
echo ' Matlab_script_files are essentially a sequence of Matlab Commands.'
echo '    '
echo ' You should not attempt to use Matlab commands that result in graphical'
echo ' output to the screen when running in batch mode.'
echo ' If you wish to experiment with Matlab in batch environment you can start'
echo ' it up by typing the command: '
echo ' '
echo '       qrsh matlab -nodisplay '
}
 
# check the matlab script file

if test -z "$1" ; then
	echo ' '
	echo "**the script file containing the Matlab commands was not specified."
	echo ' '
        help
	exit 1
else 
       if test -r "$1" ; then
# debug           echo " Using file '$2' as Matlab commands file"
           matscrpt="$1"
       else
           echo " Specified Matlab Scripts file '$1' does not exist or is not accesible."
           exit 1
       fi
fi

#
# below is a template for accessing the keyword parameters. There is only one 
# now but can increase later.
# 
time="notset"
subnow="0"
while [ $# -gt 0 ]; do
#  echo $1
  case $1 in

     -time|-TIME) time="$2";shift;;
     -nq|-NQ) subnow="1";;
  esac
  shift
done
# debug echo $time
if test "$time" = "notset" ; then
   echo 'Time parameter not specified assuming the default time of 1 hours.'
   echo '                                              i.e. -time 01:00:00 '
   time="01:00:00"
fi

echo '  A Matlab job to execute the Matlab commands in file: ' $matscrpt
echo 'will be submitted.'
 
echo 'Maximum cpu time specified (hh:mm:ss) :' $time 

if test "$subnow" = "0"
 then
    echo ' \n\r Do you wish to submit this job (Yes/No) ? \c' 
    read answ
    if test "$answ" = "Y" -o "$answ" = "y" -o "$answ" = "YES" -o "$answ" = "yes" -o "$answ" = "Yes" -o "$answ" = "ye"   
     then
     subnow="1" 
    fi
fi

if test "$subnow" = "1" 
 then

echo ' \n\r The command used to submit the job is:'
echo ' qsub -S /bin/sh -l h_cpu='$time '-cwd /usr/local/bin/matlabjob ' $matscrpt 
qsub -S /bin/sh -l h_cpu=$time -cwd /usr/local/bin/matlabjob $matscrpt
   echo 'Use the Qstat command to check progress of the job.' 
  else
    echo 'Job Aborted.....'
  fi

