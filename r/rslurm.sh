#!/bin/bash



module load apps/R/3.6.1 # Load version 3.6.1 of R

R CMD BATCH readings.R test.R.o$SLURM_JOB_ID
