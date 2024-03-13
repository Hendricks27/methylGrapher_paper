#!/bin/bash -l
#SBATCH --job-name=HG03516_2
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=32
#SBATCH --time=100:0:00
#SBATCH --mem=161G

eval "$(conda shell.bash hook)"
conda activate py39

module load bismark
module load bowtie2
module load samtools

mkdir -p /scratch/wzhang/projects/ggWGBS/bismark_hg38_default/HG03516/2
cd /scratch/wzhang/projects/ggWGBS/bismark_hg38_default/HG03516/2
bismark --parallel 2 -p 5  -o /scratch/wzhang/projects/ggWGBS/bismark_hg38_default/HG03516/2 -1 /scratch/wzhang/projects/ggWGBS/bismark_hg38_fu/HG03516/2/R1.fq.gz -2 /scratch/wzhang/projects/ggWGBS/bismark_hg38_fu/HG03516/2/R2.fq.gz /nodestorage/hg38_bismark_index/ > bismark_main.log 2> bismark_main.err
bismark_methylation_extractor --paired-end --no_overlap --comprehensive --merge_non_CpG --report -o /scratch/wzhang/projects/ggWGBS/bismark_hg38_default/HG03516/2 --parallel 15 /scratch/wzhang/projects/ggWGBS/bismark_hg38_default/HG03516/2/R1_bismark_bt2_pe.bam > bismark_me.log 2> bismark_me.err
bismark2bedGraph --dir /scratch/wzhang/projects/ggWGBS/bismark_hg38_default/HG03516/2 --cutoff 1 --buffer_size=60G -o bismark.cov CpG_context_R1_bismark_bt2_pe.txt > bismark_2bg.log 2> bismark_2bg.err
