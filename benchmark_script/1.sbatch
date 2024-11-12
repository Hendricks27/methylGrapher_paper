#!/bin/bash -l
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:0:00
#SBATCH --output=/scratch/wzhang/projects/ggWGBS/perf_bench/log/1.%j.out
#SBATCH --error=/scratch/wzhang/projects/ggWGBS/perf_bench/log/1.%j.err
#SBATCH --mem=10G



eval "$(conda shell.bash hook)"
conda activate trimgalore


cd /scratch/wzhang/projects/ggWGBS/perf_bench/data/1.trimming/

echo "start"
date +%s

trim_galore -q 20 --phred33 --fastqc --fastqc_args "-o ./fastqc/ --noextract --nogroup -t 4" --illumina --stringency 1 -e 0.1 --length 20 --clip_R1 10 --clip_R2 15 -o ./out/ -j 4 --paired ./R1.fq.gz ./R2.fq.gz > ./trim.log 2>&1

echo "end"
date +%s



