#Clone repository 
cd ~
git clone https://github.com/Aida-Rezaei/GenomeAnalysisProject.git
cd GenomeAnalysisProject

#Folder outline for the project. -p is used to recursively create parent directories if they don't exist already
mkdir -p data/metadata
mkdir -p data/raw_data
mkdir -p data/trimmed_data
mkdir -p data/reference
mkdir -p analyses/01_fastqc_raw
mkdir -p analyses/02_trimming
mkdir -p analyses/03_fastqc_trimmed
mkdir -p analyses/04_assembly
mkdir -p analyses/05_assembly_qc
mkdir -p analyses/06_annotation
mkdir -p analyses/07_rnaseq_mapping
mkdir -p analyses/08_read_counts
mkdir -p analyses/09_deseq2
mkdir -p analyses/10_synteny
mkdir -p analyses/11_extra_analysis_1
mkdir -p analyses/12_extra_analysis_2
mkdir -p code
mkdir -p results/figures

#README files for each subfolder to describe what belongs where. touch sets the timestamp for when a file is being modified.
touch README.md
touch data/README.md
touch data/metadata/README.md
touch data/raw_data/README.md
touch data/trimmed_data/README.md
touch data/reference/README.md
touch analyses/README.md
touch analyses/01_fastqc_raw/README.md
touch analyses/02_trimming/README.md
touch analyses/03_fastqc_trimmed/README.md
touch analyses/04_assembly/README.md
touch analyses/05_assembly_qc/README.md
touch analyses/06_annotation/README.md
touch analyses/07_rnaseq_mapping/README.md
touch analyses/08_read_counts/README.md
touch analyses/09_deseq2/README.md
touch analyses/10_synteny/README.md
touch analyses/11_extra_analysis_1/README.md
touch analyses/12_extra_analysis_2/README.md
touch code/README.md
touch results/README.md
touch results/figures/README.md
touch results/tables/README.md
touch docs/README.md
touch docs/notes/README.md
touch logs/README.md
mkdir -p results/tables
mkdir -p docs/notes
mkdir -p logs

#The script and code files for each step. touch sets the timestamp for when a file is being modified.
touch code/00_setup.sh
touch code/01_fastqc.sh
touch code/02_trimming.sh
touch code/03_assembly.sh
touch code/04_assembly_qc.sh
touch code/05_annotation.sh
touch code/06_rnaseq_mapping.sh
touch code/07_read_counts.sh
touch code/08_deseq2.R
touch code/09_synteny.sh
touch code/10_extra_analysis_1.R
touch code/11_extra_analysis_2.R

#The shell scripts in the code/ directory were made executable to run them directly as programs using:
chmod +x code/*.sh

#For keeping log files, temporary files, build artifacts, or personal files out away from Github
cat > .gitignore << 'EOF'
# large sequence files
*.fastq
*.fastq.gz
*.fq
*.fq.gz
*.bam
*.sam
*.vcf
*.bcf
*.fa
*.fasta
*.fna
*.gff
*.gtf
*.bed
*.bt2
*.bai
*.idx
*.sai
# compressed outputs
*.zip
*.tar
*.tar.gz
# logs / temp
*.out
*.err
*.log
*.tmp
*.swp
# R stuff
.Rhistory
.RData
.Rproj.user/
# mac/linux junk
.DS_Store
EOF

#Adding a home page README 
cat > README.md << 'EOF'
# GenomeAnalysisProject

## Project title
Re-analysis of *Zhang et al. 2017*: RNA-seq and Tn-seq reveal fitness determinants of vancomycin-resistant *Enterococcus faecium* during growth in human serum

## Student
Aida Rezaei

## Course
Genome Analysis Labs 2026

## Repository purpose
This repository documents my Genome Analysis project, including:
- project planning
- code/scripts
- workflow documentation
- results
- biological interpretation

## Main project goals
- Reproduce key analyses from the paper
- Assemble and annotate the genome
- Analyze RNA-seq data from serum vs rich medium
- Perform differential expression analysis
- Extend the project with extra analyses for Grade 5

## Repository structure

- `data/` → metadata and input file organization
- `analyses/` → outputs from each analysis step
- `code/` → scripts used in the project
- `results/` → final figures and tables
- `docs/` → notes and supporting documentation
- `logs/` → run logs and troubleshooting

## Important note
Large raw/intermediate files are **not uploaded to GitHub**.  
Only scripts, documentation, figures, and small result files are tracked here.

## Wiki
See the GitHub Wiki for:
- Project Plan
- Paper Summary
- Methods
- Results
- Extra analyses
- Daily log
- Troubleshooting
EOF

#README notes for each subfolder
echo "# Data folder" > data/README.md
echo "Contains metadata, raw-data links, trimmed data, and references." >> data/README.md
echo "# Metadata" > data/metadata/README.md
echo "Contains sample metadata tables (CSV/TSV)." >> data/metadata/README.md
echo "# Raw data" > data/raw_data/README.md
echo "Contains symbolic links or notes about original input sequencing files." >> data/raw_data/README.md
echo "# Trimmed data" > data/trimmed_data/README.md
echo "Contains trimmed read files or notes." >> data/trimmed_data/README.md
echo "# Reference data" > data/reference/README.md
echo "Contains reference genomes/ annotation files used in the project." >> data/reference/README.md
echo "# Analyses folder" > analyses/README.md
echo "Contains outputs from each major analysis step." >> analyses/README.md
echo "# Code folder" > code/README.md
echo "Contains all scripts used in this project." >> code/README.md
echo "# Results folder" > results/README.md
echo "Contains final figures and tables for interpretation and presentation." >> results/README.md
echo "# Figures" > results/figures/README.md
echo "Final figures generated during the project." >> results/figures/README.md
echo "# Tables" > results/tables/README.md
echo "Final result tables generated during the project." >> results/tables/README.md
echo "# Docs folder" > docs/README.md
echo "Contains notes, planning, and supporting documentation." >> docs/README.md
echo "# Notes" > docs/notes/README.md
echo "Free-form notes, troubleshooting, and ideas." >> docs/notes/README.md
echo "# Logs folder" > logs/README.md
echo "Contains run logs, sbatch output, and troubleshooting notes." >> logs/README.md

#Save and push everything to Github
git add .
git commit -m "Initial project structure and documentation setup"
git push origin main
