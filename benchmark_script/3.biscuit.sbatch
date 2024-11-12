#!/bin/bash -l
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:0:00
#SBATCH --output=/scratch/wzhang/projects/ggWGBS/perf_bench/log/3.biscuit.%j.out
#SBATCH --error=/scratch/wzhang/projects/ggWGBS/perf_bench/log/3.biscuit.%j.err
#SBATCH --mem=100G



eval "$(conda shell.bash hook)"



cd /scratch/wzhang/projects/ggWGBS/perf_bench/data/3.biscuit.alignment/


echo "start"
date +%s


rm my_output.*

biscuit align -@ 20 -b 1 /scratch/wzhang/ref/linear/hg38/biscuit/index R1.dedup.fq.gz R2.dedup.fq.gz | samtools sort -@ 20 -o my_output.bam -O BAM -
samtools index my_output.bam


echo "end"
date +%s



