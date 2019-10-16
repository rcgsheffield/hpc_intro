#!/bin/csh
#Program 1. Sample.cshrc file
#
#         .cshrc file
#
#         initial setup file for both interactive and 
#         noninteractive C-Shells.
#
#################################################################
#
#         First execute the Titania cshrc script.
#
#################################################################

source /local/shef/cshrc
 
#################################################################
#         
#         Do not delete any of the lines above.
#         Add any extra cshell initialisation commands 
#         after this comment.
#################################################################


echo "Finished setting up local cshrc settings"

setenv PATH $PATH":/sw/local/courses/bin"

setenv LD_LIBRARY_PATH "/sw/local/courses/sunworkshop/lib:"$LD_LIBRARY_PATH



alias hi 'history'
alias max 'ssh maxima.leeds.ac.uk -l wrsmyinitials'
alias pas 'ssh wrg.pascali.york.ac.uk -l wrsmyinitials1'
alias titan 'ssh titan00.shef.ac.uk -l myusername'
alias sno 'ssh snowdon.leeds.ac.uk -l wrsmyinitials'

alias sftl 'sftp wrsmyinitials@maxima.leeds.ac.uk'
alias sfty 'sftp wrsmyinitials1@wrg.pascali.york.ac.uk'


alias lsx509 'ls -l /tmp/x509* | grep `whoami`'

set name=`whoami | cut -f1 -d' '`
set today=`date | cut -f1 -d' '`
set time=`date | tr -s '\t' ' ' | cut -f4 -d' '` hour=`echo $time | cut -f1 -d':'`
set min=`echo $time | cut -f2 -d':'`

#C-shell script to set propmpt according to day of
#week and time of day
switch($today)
	case "Mon":
		if( $hour < 12 )then
			echo "It's Monday morning. Things can only get better..."
			echo
		else
			echo "It's Monday afternoon. Things are looking better."
			echo
		endif
		set prompt="`uname -n`{${USER}}\!:-( "
	breaksw
	case "Tue":
		if( $hour < 12 )then
			echo "It's Tuesday morning. We're getting closer to the middle of the week."
			echo
		else
			echo "It's Tuesday afternoon. Things are definitely looking better."
			echo
		endif
		set prompt="`uname -n`{${USER}}\!:-| "
	breaksw
	case "Wed":
		if( $hour < 12 )then
			echo "It's Wednesday morning. It's the middle of the week."
			echo
		else
			echo "It's Wednesday afternoon. It's plane sailing from here."
			echo
		endif
	set prompt="`uname -n`{${USER}}\!:-) "
	breaksw
	case "Thu":
		if( $hour < 12 )then
			echo "It's Thursday morning. It's almost the weekend."
			echo
		else
			echo "It's Thursday afternoon. There's just one day left."
			echo
		endif
	set prompt="`uname -n`{${USER}}\!:-} "
	breaksw
	case "Fri":
		if( $hour < 12 )then
			echo "It's Friday morning. Yippee! Just a few more hours." 

			echo
		else
			echo "It's Friday afternoon. It's that Friday feeling."
			echo
		endif
	set prompt="`uname -n`{${USER}}\!:-{) "
	breaksw
	case "Sat":
		if( $hour < 12 )then
			echo "It's Saturday morning. What are you doing here!?"
			echo
		else
			echo "It's Saturday afternoon. This is really not on!"
			echo
		endif
	set prompt="`uname -n`{${USER}}\!:-{ "
	breaksw
	case "Sun":
		if( $hour < 12 )then
			echo "It's Sunday morning. You really shouldn't be here!" 

			echo
		else
			echo "It's Sunday afternoon. Go home!!!"
			echo
		endif
	set prompt="`uname -n`{${USER}}\!:-< "
	breaksw
	case * :
	breaksw
endsw		
