#!/bin/sh

#
#$ -l h_cpu=01:00:00
#Add your own email address. E.g.        #$ -M m.griffiths@sheffield.ac.uk
#Also add this to indicate when to email #$ -m be
#$ -cwd




#Problem 8
#Execute the benchtest program several times
#and edit the file of input parameters
#using sed


sed -e "s/STEPS/1000000/g ; s/PRECISION/float/g" benchtest2.in > bt4.in
./benchtest bt4.in
 
rm bt4.in
 
sed -e "s/STEPS/2500000/g ; s/PRECISION/float/g " benchtest2.in > bt4.in
./benchtest bt4.in
 
rm bt4.in
 

 
sed -e "s/STEPS/5000000/g ; s/PRECISION/double/g " benchtest2.in > bt4.in
./benchtest bt4.in
 
rm bt4.in
 
 
sed -e "s/STEPS/1000000/g ; s/PRECISION/double/g " benchtest2.in > bt4.in
./benchtest bt4.in
 
rm bt4.in
 


