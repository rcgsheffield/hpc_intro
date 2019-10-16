#!/bin/bash


echo "Using sed to replace text in a file

sed -e "s/%testreplace%/replaced/" testsed.txt


read $nextexample

echo "Using sed to print line 5 of output"

ls -l | sed -n -e "5 p"





