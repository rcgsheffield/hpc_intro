#!/bin/bash
#$ -cwd
#$ -l h_rt=00:05:00
#$ -l rmem=2G
#$ -pe smp 8

module load apps/ansys/18.2

fluent 2d -i aerofoil_model.jou -g -t$NSLOTS -sge -mpi=intel -rsh -sgepe mpi-rsh


