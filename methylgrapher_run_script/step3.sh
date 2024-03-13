#!/bin/bash



trim_galore -q 20 --phred33 --fastqc --fastqc_args "-o ./HG00621/fastqc/trim/BRep1 --noextract --nogroup -t 4" --illumina --stringency 1 -e 0.1 --length 20 --clip_R1 10 --clip_R2 15 -o ./HG00621/ -j 4 --paired ./HG00621/BRep1.R1.fastq.gz ./HG00621/BRep1.R2.fastq.gz > ./HG00621/BRep1.trim.log

trim_galore -q 20 --phred33 --fastqc --fastqc_args "-o ./HG00621/fastqc/trim/BRep2 --noextract --nogroup -t 4" --illumina --stringency 1 -e 0.1 --length 20 --clip_R1 10 --clip_R2 15 -o ./HG00621/ -j 4 --paired ./HG00621/BRep2.R1.fastq.gz ./HG00621/BRep2.R2.fastq.gz > ./HG00621/BRep2.trim.log

trim_galore -q 20 --phred33 --fastqc --fastqc_args "-o ./HG00741/fastqc/trim/BRep1 --noextract --nogroup -t 4" --illumina --stringency 1 -e 0.1 --length 20 --clip_R1 10 --clip_R2 15 -o ./HG00741/ -j 4 --paired ./HG00741/BRep1.R1.fastq.gz ./HG00741/BRep1.R2.fastq.gz > ./HG00741/BRep1.trim.log

trim_galore -q 20 --phred33 --fastqc --fastqc_args "-o ./HG00741/fastqc/trim/BRep2 --noextract --nogroup -t 4" --illumina --stringency 1 -e 0.1 --length 20 --clip_R1 10 --clip_R2 15 -o ./HG00741/ -j 4 --paired ./HG00741/BRep2.R1.fastq.gz ./HG00741/BRep2.R2.fastq.gz > ./HG00741/BRep2.trim.log

trim_galore -q 20 --phred33 --fastqc --fastqc_args "-o ./HG01952/fastqc/trim/BRep1 --noextract --nogroup -t 4" --illumina --stringency 1 -e 0.1 --length 20 --clip_R1 10 --clip_R2 15 -o ./HG01952/ -j 4 --paired ./HG01952/BRep1.R1.fastq.gz ./HG01952/BRep1.R2.fastq.gz > ./HG01952/BRep1.trim.log

trim_galore -q 20 --phred33 --fastqc --fastqc_args "-o ./HG01952/fastqc/trim/BRep2 --noextract --nogroup -t 4" --illumina --stringency 1 -e 0.1 --length 20 --clip_R1 10 --clip_R2 15 -o ./HG01952/ -j 4 --paired ./HG01952/BRep2.R1.fastq.gz ./HG01952/BRep2.R2.fastq.gz > ./HG01952/BRep2.trim.log

trim_galore -q 20 --phred33 --fastqc --fastqc_args "-o ./HG01978/fastqc/trim/BRep1 --noextract --nogroup -t 4" --illumina --stringency 1 -e 0.1 --length 20 --clip_R1 10 --clip_R2 15 -o ./HG01978/ -j 4 --paired ./HG01978/BRep1.R1.fastq.gz ./HG01978/BRep1.R2.fastq.gz > ./HG01978/BRep1.trim.log

trim_galore -q 20 --phred33 --fastqc --fastqc_args "-o ./HG01978/fastqc/trim/BRep2 --noextract --nogroup -t 4" --illumina --stringency 1 -e 0.1 --length 20 --clip_R1 10 --clip_R2 15 -o ./HG01978/ -j 4 --paired ./HG01978/BRep2.R1.fastq.gz ./HG01978/BRep2.R2.fastq.gz > ./HG01978/BRep2.trim.log

trim_galore -q 20 --phred33 --fastqc --fastqc_args "-o ./HG03516/fastqc/trim/BRep1 --noextract --nogroup -t 4" --illumina --stringency 1 -e 0.1 --length 20 --clip_R1 10 --clip_R2 15 -o ./HG03516/ -j 4 --paired ./HG03516/BRep1.R1.fastq.gz ./HG03516/BRep1.R2.fastq.gz > ./HG03516/BRep1.trim.log

trim_galore -q 20 --phred33 --fastqc --fastqc_args "-o ./HG03516/fastqc/trim/BRep2 --noextract --nogroup -t 4" --illumina --stringency 1 -e 0.1 --length 20 --clip_R1 10 --clip_R2 15 -o ./HG03516/ -j 4 --paired ./HG03516/BRep2.R1.fastq.gz ./HG03516/BRep2.R2.fastq.gz > ./HG03516/BRep2.trim.log











