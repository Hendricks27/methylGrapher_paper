#!/bin/bash -l
#SBATCH --partition=general
#SBATCH --job-name=ENC001_2_hg38
#SBATCH --cpus-per-task=20
#SBATCH --mem=30G
#SBATCH --time=144:0:00




eval "$(conda shell.bash hook)"
conda activate py39

module load bismark
module load bowtie2
module load samtools

cd /scratch/wzhang/projects/ggWGBS/entex_dataset/bismark/ENC001/2/hg38/
bismark_methylation_extractor --paired-end --no_overlap --comprehensive --merge_non_CpG --report -o /scratch/wzhang/projects/ggWGBS/entex_dataset/bismark/ENC001/2/hg38/ --parallel 20 /scratch/wzhang/projects/ggWGBS/entex_dataset/bismark/ENC001/2/hg38/R1.dedup_bismark_bt2_pe.bam > bismark_me.log 2> bismark_me.err
bismark2bedGraph --dir /scratch/wzhang/projects/ggWGBS/entex_dataset/bismark/ENC001/2/hg38/ --cutoff 1 --buffer_size=30G -o bismark.cov CpG_context_R1.dedup_bismark_bt2_pe.txt > bismark_2bg.log 2> bismark_2bg.err
python3 /scratch/wzhang/scripts/bismark2tracks.py -cov /scratch/wzhang/projects/ggWGBS/entex_dataset/bismark/ENC001/2/hg38/bismark.cov.gz.bismark.cov.gz -fasta /scratch/wzhang/ref/linear/hg38/hg38.fa -o /scratch/wzhang/projects/ggWGBS/entex_dataset/bismark/ENC001/2/hg38/




