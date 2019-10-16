#!/bin/sh
#example2   While loop with input reading for the bourne shell
INPUT_STRING=hello
while test "$INPUT_STRING" != "bye" && test "$INPUT_STRING" != "quit"
do
  echo "Please type something in (bye to quit)"
  read INPUT_STRING
  echo "You typed: $INPUT_STRING"
done
