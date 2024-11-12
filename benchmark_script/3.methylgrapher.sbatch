#!/bin/bash -l
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:0:00
#SBATCH --output=/scratch/wzhang/projects/ggWGBS/perf_bench/log/3.methylgrapher.%j.out
#SBATCH --error=/scratch/wzhang/projects/ggWGBS/perf_bench/log/3.methylgrapher.%j.err
#SBATCH --mem=100G



eval "$(conda shell.bash hook)"
conda activate py312


cd /scratch/wzhang/projects/ggWGBS/perf_bench/data/3.methylgrapher.alignment/

echo "start"
date +%s

python3 /scratch/wzhang/projects/ggWGBS/mgdev/methylGrapher/src/main.py Align -t 20 -fq1 ./R1.dedup.fq.gz -fq2 ./R2.dedup.fq.gz -work_dir ./out -compress N -index_prefix /scratch/wzhang/ref/graph/wgbs_pan_v1.0_hg38/pan.v1.hg38 -directional Y > align.out 2> align.err

echo "end"
date +%s



