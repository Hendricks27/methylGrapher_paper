#!/bin/bash -l
#SBATCH --job-name=gb
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=50
#SBATCH --time=144:0:00
#SBATCH --mem=100G



eval "$(conda shell.bash hook)"



echo "Started Mapping: $(date)"
gemBS map
echo "Finished Mapping: $(date)"

echo "\n"

echo "Started Calling: $(date)"
gemBS call
echo "Finished Calling: $(date)"

echo "\n"

echo "Started Extract: $(date)"
gemBS extract
echo "Finished Extract: $(date)"

echo " "

# generates the necessary report for mapped reads, convertion rate, etc.
echo "Started Map-report: $(date)"
gemBS map-report
echo "Finished Map-report: $(date)"

echo "\n"

echo "Started call-report: $(date)"
gemBS call-report
echo "Finished call-report: $(date)"







