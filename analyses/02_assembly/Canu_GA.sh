#!/bin/bash -l
#SBATCH -A uppmax2026-1-61
#SBATCH -p pelle
#SBATCH -n 4
#SBATCH -t 03:00:00
#SBATCH -J Canu_GA
#SBATCH --mail-type=ALL
#SBATCH --output=%x.%j.out

#modules
module load canu
module load SAMtools/1.22.1-GCC-13.3.0

#commands
canu \
   -p E745 \
   genomeSize=2.77m \
   useGrid=false \
   gridEngine=slurm \
   maxThreads=4 \
   corMhapSensitivity=low \
   corOutCoverage=40 \
   -pacbio /home/aida82/genome_project/1_Zhang_2017/genomics_data/PacBio/*.fastq.gz
