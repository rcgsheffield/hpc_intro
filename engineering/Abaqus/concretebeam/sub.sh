#!/bin/bash
#$ -cwd
#$ -l h_rt=00:01:00
#$ -l rmem=4G
#$ -pe openmp 4
#$ -j yes
#$ -N abaqus_bench
#$ -m bea
#$ -M username@sheffield.ac.uk


module load apps/abaqus/2017/binary


abaqus job=Beam-mesh input=beam-job.inp scratch=$TMPDIR memory="16gb" interactive mp_mode=threads cpus=$NSLOTS