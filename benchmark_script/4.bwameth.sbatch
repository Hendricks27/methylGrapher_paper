#!/bin/bash -l
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:0:00
#SBATCH --output=/scratch/wzhang/projects/ggWGBS/perf_bench/log/4.bwameth.%j.out
#SBATCH --error=/scratch/wzhang/projects/ggWGBS/perf_bench/log/4.bwameth.%j.err
#SBATCH --mem=100G



eval "$(conda shell.bash hook)"
conda activate methyldackel


cd /scratch/wzhang/projects/ggWGBS/perf_bench/data/4.bwameth.mcall

echo "start"
date +%s

rm alignment_C*

MethylDackel extract -@ 20 -q 10 -p 1 --CHG --CHH --keepSingleton /scratch/wzhang/ref/linear/hg38/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna ./alignment.bam > extract.log 2> extract.err


echo "end"
date +%s





