#!/bin/bash
#$ -N beatres
#$ -j y
#$ -l mem=16G
#$ -t 1-5:1
#$ -l h_rt=01:00:00


module load apps/matlab/2016a/binary

matlab -nosplash -nodisplay -r beats

