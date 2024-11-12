#!/bin/bash -l
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:0:00
#SBATCH --output=/scratch/wzhang/projects/ggWGBS/perf_bench/log/2.%j.out
#SBATCH --error=/scratch/wzhang/projects/ggWGBS/perf_bench/log/2.%j.err
#SBATCH --mem=150G



eval "$(conda shell.bash hook)"
conda activate py312



cd /scratch/wzhang/projects/ggWGBS/perf_bench/data/2.fastuniq/


echo "start"
date +%s

fastuniq -i list.txt -o R1.fastuniq.fastq -p R2.fastuniq.fastq


echo "end"
date +%s



