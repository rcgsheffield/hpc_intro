#!/bin/bash
#$ -S /bin/bash
#$ -cwd               # Run job from current directory


module load apps/R/3.4.0/gcc-4.8.5 # Load version 3.4.0 of R

R CMD BATCH readings.R test.R.o$JOB_ID
