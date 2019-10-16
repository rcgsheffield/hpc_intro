#!/bin/sh

#Problem 6
#awk example
#column 1 of qstat output is the node
#column 3 of qstat output is the load

# $1 and $3 in the awk command are used to select the
# first and third columns respectively

echo "Sun Grid Engine status for $1 queue on $HOST"
qstat -f | grep $1 | awk '{ print "node " $1 " usage " $3}'

