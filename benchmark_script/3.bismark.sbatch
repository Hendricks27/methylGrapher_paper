#!/bin/bash -l
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:0:00
#SBATCH --output=/scratch/wzhang/projects/ggWGBS/perf_bench/log/3.bismark.%j.out
#SBATCH --error=/scratch/wzhang/projects/ggWGBS/perf_bench/log/3.bismark.%j.err
#SBATCH --mem=300G



eval "$(conda shell.bash hook)"
conda activate py312

module load bowtie2
module load bismark


cd /scratch/wzhang/projects/ggWGBS/perf_bench/data/3.bismark.alignment/

echo "start"
date +%s


bismark --parallel 20 --bowtie2 /scratch/wzhang/projects/ggWGBS/perf_bench/data/hg38_bismark/ -1 R1.fq.gz -2 R2.fq.gz > run.log 2>&1


echo "end"
date +%s



