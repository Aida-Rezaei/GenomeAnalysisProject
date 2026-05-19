#!/bin/bash -l
#SBATCH -A uppmax2026-1-61
#SBATCH -p pelle
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J quast
#SBATCH --output=%x.%j.out

module load QUAST

quast \
/home/aida82/genome_project/analysis/2_Canu_GenomeAssembly_PacBio/E745.contigs.fasta \
-o quast_output
