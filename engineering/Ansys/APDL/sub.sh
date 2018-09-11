#!/usr/bin/env bash
#$ -j y
#$ -m bea
#$ -l h_rt=00:30:00
#$ -M user@shef.ac.uk
#$ -pe smp 16
#$ -l rmem=8G
#$ -P insigneo-imsb
#$ -q insigneo-imsb.q

module load apps/ansys/19.0/binary


export PATH="${ANSYSROOT}/ansys/bin:${PATH}"

/usr/local/packages/apps/ansys/19.0/binary/v190/ansys/bin/ansys190 -np $NSLOTS -b < V19sp-3.dat > Solution.out -j FILE