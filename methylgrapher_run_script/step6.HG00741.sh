#!/bin/bash



cd HG00741
mkdir BRep1
fastqc -o ./fastqc/dedup/BRep1.R1 -t 1 ./BRep1.R1.dedup.fastq &
fastqc -o ./fastqc/dedup/BRep1.R2 -t 1 ./BRep1.R2.dedup.fastq &
python3 /storage1/fs1/hprc/Active/wenjin/bin/mg/main.py PrepareLibrary -fq1 ./BRep1.R1.dedup.fastq -fq2 ./BRep1.R2.dedup.fastq -work_dir ./BRep1 -t 20


mkdir BRep2
fastqc -o ./fastqc/dedup/BRep2.R1 -t 1 ./BRep2.R1.dedup.fastq &
fastqc -o ./fastqc/dedup/BRep2.R2 -t 1 ./BRep2.R2.dedup.fastq &
python3 /storage1/fs1/hprc/Active/wenjin/bin/mg/main.py PrepareLibrary -fq1 ./BRep2.R1.dedup.fastq -fq2 ./BRep2.R2.dedup.fastq -work_dir ./BRep2 -t 20


