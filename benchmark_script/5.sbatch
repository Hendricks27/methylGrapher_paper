#!/bin/bash -l
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:0:00
#SBATCH --output=/scratch/wzhang/projects/ggWGBS/perf_bench/log/5.%j.out
#SBATCH --error=/scratch/wzhang/projects/ggWGBS/perf_bench/log/5.%j.err
#SBATCH --mem=200G



eval "$(conda shell.bash hook)"
conda activate py312


cd /scratch/wzhang/projects/ggWGBS/perf_bench/data/5.mcall/


echo "start"
date +%s

methylGrapher MethylCall -work_dir ./ -index_prefix /scratch/wzhang/projects/ggWGBS/perf_bench/data/wgbs_graph2/pan.v1.hg38 -t 16


echo "end"
date +%s



