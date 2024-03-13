#!/bin/bash -l
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:0:00
#SBATCH --output=/scratch/wzhang/projects/ggWGBS/perf_bench/log/6.%j.out
#SBATCH --error=/scratch/wzhang/projects/ggWGBS/perf_bench/log/6.%j.err
#SBATCH --mem=450G



eval "$(conda shell.bash hook)"
conda activate py39

module load bowtie2
module load bismark


cd /scratch/wzhang/projects/ggWGBS/perf_bench/data/6.bismark/

echo "start"
date +%s


bismark --parallel 20 --bowtie2 /scratch/wzhang/projects/ggWGBS/perf_bench/data/hg38_bismark/ -1 R1.fq.gz -2 R2.fq.gz > run.log 2>&1


echo "end"
date +%s



