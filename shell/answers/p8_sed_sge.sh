#!/bin/sh

#
#$ -l h_cpu=00:10:00
#$ -m be
#$ -M your_own_address@sheffield.ac.uk
#$ -cwd




#Problem 8
#Execute the benchtest program several times
#and edit the file of input parameters
#using sed


sed -e "s/STEPS/1000000/g" benchtest.in > bt1.in
./benchtest bt1.in
rm bt1.in


sed -e "s/STEPS/2000000/g" benchtest.in > bt1.in
./benchtest bt1.in
rm bt1.in
 
sed -e "s/STEPS/4000000/g" benchtest.in > bt1.in
./benchtest bt1.in
rm bt1.in
 

sed -e "s/STEPS/8000000/g" benchtest.in > bt1.in
./benchtest bt1.in
rm bt1.in
 
sed -e "s/STEPS/10000000/g" benchtest.in > bt1.in
./benchtest bt1.in
rm bt1.in
echo " Job terminated normally . " 




