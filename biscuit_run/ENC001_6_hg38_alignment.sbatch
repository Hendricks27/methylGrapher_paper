#!/bin/bash -l
#SBATCH --partition=general
#SBATCH --job-name=ENC001_6_hg38
#SBATCH --cpus-per-task=20
#SBATCH --mem=170G
#SBATCH --time=144:0:00




eval "$(conda shell.bash hook)"
conda activate py39

module load bismark
module load bowtie2
module load samtools

cd /scratch/wzhang/projects/ggWGBS/entex_dataset/bismark/ENC001/6/hg38/
bismark --parallel 2 -p 5 -o /scratch/wzhang/projects/ggWGBS/entex_dataset/bismark/ENC001/6/hg38/ -1 /scratch/wzhang/projects/ggWGBS/entex_dataset/common/ENC001/6/R1.dedup.fq.gz -2 /scratch/wzhang/projects/ggWGBS/entex_dataset/common/ENC001/6/R2.dedup.fq.gz /scratch/wzhang/ref/linear/hg38/bismark/ > bismark_main.log 2> bismark_main.err




