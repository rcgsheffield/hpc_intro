#!/bin/bash

# The second example of a shell script.
# User is prompted for his name and greeted
# with the name she/he input.
echo 'Hello World'

# -n means no linefeed at the end
# -e means expand special escape characters i.e. 
echo -en   "\n Who am I talking to? "
read user_name
echo -e "\n\n\n Hello $user_name \n\n\n" 
