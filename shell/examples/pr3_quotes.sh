#!/bin/sh
# Program 3. Shell script illustrating the use of quotation marks.

echo "Hello World! "         #  characters taken literally except $, ` and \
echo "$SHELL"
echo "\$SHELL"               #  \ removes special meaning
echo "My name is  `whoami`"  # `` backquotes enclose executable statements 
ls  '>file>'                 #  '' take enclosed characters literally

