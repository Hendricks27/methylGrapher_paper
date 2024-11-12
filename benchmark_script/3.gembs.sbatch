#!/bin/bash -l
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:0:00
#SBATCH --output=/scratch/wzhang/projects/ggWGBS/perf_bench/log/3.gembs.%j.out
#SBATCH --error=/scratch/wzhang/projects/ggWGBS/perf_bench/log/3.gembs.%j.err
#SBATCH --mem=100G



eval "$(conda shell.bash hook)"

cd /scratch/wzhang/projects/ggWGBS/perf_bench/data/3.gembs.alignment/

echo "start"
date +%s


rm -rf .gemBS/
rm -rf 1mapping/
rm -rf 2calls/
rm -rf 3extract/
rm -rf 9report/

gemBS prepare -c gembs.conf -t run.csv
gemBS map


echo "end"
date +%s



