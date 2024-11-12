#!/bin/bash -l
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:0:00
#SBATCH --output=/scratch/wzhang/projects/ggWGBS/perf_bench/log/4.biscuit.%j.out
#SBATCH --error=/scratch/wzhang/projects/ggWGBS/perf_bench/log/4.biscuit.%j.err
#SBATCH --mem=100G



eval "$(conda shell.bash hook)"



cd /scratch/wzhang/projects/ggWGBS/perf_bench/data/4.biscuit.mcall

echo "start"
date +%s


rm my_methylation_data.bed
rm my_pileup.*


biscuit pileup -@ 20 -b 1 -m 10 -a 10 -l 10 -5 0 -3 0 -o my_pileup.vcf /scratch/wzhang/ref/linear/hg38/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna alignment.bam
bgzip -@ 20 my_pileup.vcf
tabix -p vcf my_pileup.vcf.gz
biscuit vcf2bed -k 1 -t c my_pileup.vcf.gz > my_methylation_data.bed



echo "end"
date +%s





