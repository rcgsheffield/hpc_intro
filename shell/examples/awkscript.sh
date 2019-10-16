#!/bin/sh
qstat -f | grep $1 | awk '{print $1 " "  $4}'
