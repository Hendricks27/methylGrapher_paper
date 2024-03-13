#!/bin/bash -l
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:0:00
#SBATCH --output=/scratch/wzhang/projects/ggWGBS/perf_bench/log/3.%j.out
#SBATCH --error=/scratch/wzhang/projects/ggWGBS/perf_bench/log/3.%j.err
#SBATCH --mem=200G



eval "$(conda shell.bash hook)"
conda activate py39


cd /scratch/wzhang/projects/ggWGBS/perf_bench/data/3.conversion/

echo "start"
date +%s

python3 /scratch/wzhang/bin/MethylGrapher/src/main.py PrepareLibrary -fq1 ./R1.dedup.fq.gz -fq2 ./R2.dedup.fq.gz -work_dir ./out -compress N


echo "end"
date +%s



