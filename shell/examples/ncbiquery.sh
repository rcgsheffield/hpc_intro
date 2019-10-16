#!/bin/sh

#Test script to ftp and unzip the 
#ecoli database from NCBI 

#Modify the script so that it will 
#copy the file to your scratch directory

#the first line of the file ncbiftplogin.sh
#contains the username and password
#it is usually in the format
# user username userpassword
ftp -i -n ftp.ncbi.nlm.nih.gov < ncbiftplogin.sh
gunzip ecoli.nt.gz
