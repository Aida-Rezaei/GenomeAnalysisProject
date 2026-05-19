#!/bin/bash -l
#SBATCH -A uppmax2026-1-61
#SBATCH -p pelle
#SBATCH -n 2
#SBATCH -t 15:00:00
#SBATCH -J eggnog
#SBATCH --output=%x.%j.out

module load eggnog-mapper/2.1.13-gfbf-2024a

emapper.py \
-i /home/aida82/genome_project/analysis/4_Prokka/prokka_output/E745.faa \
-o E745_eggnog \
--data_dir resources/eggnog-mapper \
--cpu 2
