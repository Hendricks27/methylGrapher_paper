#!/bin/bash -l
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:0:00
#SBATCH --output=/scratch/wzhang/projects/ggWGBS/perf_bench/log/7.%j.out
#SBATCH --error=/scratch/wzhang/projects/ggWGBS/perf_bench/log/7.%j.err
#SBATCH --mem=450G



eval "$(conda shell.bash hook)"
conda activate py39

module load bowtie2
module load bismark


cd /scratch/wzhang/projects/ggWGBS/perf_bench/data/6.bismark/

echo "start"
date +%s


# bismark_methylation_extractor --paired-end --no_overlap --comprehensive --merge_non_CpG --report --bedgraph --cytosine_report -o bmeout --multicore 20 --genome_folder /scratch/wzhang/projects/ggWGBS/perf_bench/data/hg38_bismark R1_bismark_bt2_pe.bam > run2.out 2> run2.err



bismark_methylation_extractor --paired-end --no_overlap --comprehensive --merge_non_CpG --report -o ./ --parallel 20 --genome_folder /scratch/wzhang/projects/ggWGBS/perf_bench/data/hg38_bismark ./R1_bismark_bt2_pe.bam > run2.out 2> run2.err


bismark2bedGraph --dir ./ --cutoff 1 --buffer_size=60G -o bismark.cov CpG_context_R1_bismark_bt2_pe.txt > run3.out 2> run3.err
bismark2bedGraph --dir ./ --cutoff 1 --buffer_size=60G -o bismark.other.cov Non_CpG_context_R1_bismark_bt2_pe.txt > run3.out 2> run3.err

echo "end"
date +%s





