#!/bin/bash -l
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=60
#SBATCH --time=100:0:00
#SBATCH --output=/scratch/wzhang/projects/ggWGBS/perf_bench/log/4.%j.out
#SBATCH --error=/scratch/wzhang/projects/ggWGBS/perf_bench/log/4.%j.err
#SBATCH --mem=300G



eval "$(conda shell.bash hook)"
conda activate py39


cd /scratch/wzhang/projects/ggWGBS/perf_bench/data/4.alignment/


echo "start"
date +%s

python3 /scratch/wzhang/bin/MethylGrapher/src/main.py Align -t 20 -work_dir ./ -index_prefix /scratch/wzhang/projects/ggWGBS/perf_bench/data/wgbs_graph2/pan.v1.hg38

echo "end"
date +%s



