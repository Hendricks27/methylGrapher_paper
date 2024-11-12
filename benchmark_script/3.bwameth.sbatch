#!/bin/bash -l
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:0:00
#SBATCH --output=/scratch/wzhang/projects/ggWGBS/perf_bench/log/3.bwameth.%j.out
#SBATCH --error=/scratch/wzhang/projects/ggWGBS/perf_bench/log/3.bwameth.%j.err
#SBATCH --mem=100G



eval "$(conda shell.bash hook)"
conda activate bwameth

cd /scratch/wzhang/projects/ggWGBS/perf_bench/data/3.bwameth.alignment/

echo "start"
date +%s


rm my_output.*
bwameth.py --threads 20 --reference /scratch/wzhang/ref/linear/hg38/bwameth/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna R1.dedup.fq.gz R2.dedup.fq.gz | samtools sort -@ 20 -o my_output.bam -O BAM -
samtools index ./my_output.bam



echo "end"
date +%s



