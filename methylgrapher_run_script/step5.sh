#!/bin/bash



cat ./HG00621/BRep1.R1_val_1.fq.gz | gunzip > ./HG00621/BRep1.R1.trimmed.fastq &
cat ./HG00621/BRep1.R2_val_2.fq.gz | gunzip > ./HG00621/BRep1.R2.trimmed.fastq &
echo -e "./HG00621/BRep1.R1.trimmed.fastq\n./HG00621/BRep1.R2.trimmed.fastq\n" > ./HG00621/BRep1.list.txt


cat ./HG00621/BRep2.R1_val_1.fq.gz | gunzip > ./HG00621/BRep2.R1.trimmed.fastq &
cat ./HG00621/BRep2.R2_val_2.fq.gz | gunzip > ./HG00621/BRep2.R2.trimmed.fastq &
echo -e "./HG00621/BRep2.R1.trimmed.fastq\n./HG00621/BRep2.R2.trimmed.fastq\n" > ./HG00621/BRep2.list.txt


cat ./HG00741/BRep1.R1_val_1.fq.gz | gunzip > ./HG00741/BRep1.R1.trimmed.fastq &
cat ./HG00741/BRep1.R2_val_2.fq.gz | gunzip > ./HG00741/BRep1.R2.trimmed.fastq &
echo -e "./HG00741/BRep1.R1.trimmed.fastq\n./HG00741/BRep1.R2.trimmed.fastq\n" > ./HG00741/BRep1.list.txt


cat ./HG00741/BRep2.R1_val_1.fq.gz | gunzip > ./HG00741/BRep2.R1.trimmed.fastq &
cat ./HG00741/BRep2.R2_val_2.fq.gz | gunzip > ./HG00741/BRep2.R2.trimmed.fastq &
echo -e "./HG00741/BRep2.R1.trimmed.fastq\n./HG00741/BRep2.R2.trimmed.fastq\n" > ./HG00741/BRep2.list.txt


cat ./HG01952/BRep1.R1_val_1.fq.gz | gunzip > ./HG01952/BRep1.R1.trimmed.fastq
cat ./HG01952/BRep1.R2_val_2.fq.gz | gunzip > ./HG01952/BRep1.R2.trimmed.fastq
echo -e "./HG01952/BRep1.R1.trimmed.fastq\n./HG01952/BRep1.R2.trimmed.fastq\n" > ./HG01952/BRep1.list.txt


cat ./HG01952/BRep2.R1_val_1.fq.gz | gunzip > ./HG01952/BRep2.R1.trimmed.fastq
cat ./HG01952/BRep2.R2_val_2.fq.gz | gunzip > ./HG01952/BRep2.R2.trimmed.fastq
echo -e "./HG01952/BRep2.R1.trimmed.fastq\n./HG01952/BRep2.R2.trimmed.fastq\n" > ./HG01952/BRep2.list.txt


cat ./HG01978/BRep1.R1_val_1.fq.gz | gunzip > ./HG01978/BRep1.R1.trimmed.fastq
cat ./HG01978/BRep1.R2_val_2.fq.gz | gunzip > ./HG01978/BRep1.R2.trimmed.fastq
echo -e "./HG01978/BRep1.R1.trimmed.fastq\n./HG01978/BRep1.R2.trimmed.fastq\n" > ./HG01978/BRep1.list.txt


cat ./HG01978/BRep2.R1_val_1.fq.gz | gunzip > ./HG01978/BRep2.R1.trimmed.fastq
cat ./HG01978/BRep2.R2_val_2.fq.gz | gunzip > ./HG01978/BRep2.R2.trimmed.fastq
echo -e "./HG01978/BRep2.R1.trimmed.fastq\n./HG01978/BRep2.R2.trimmed.fastq\n" > ./HG01978/BRep2.list.txt


cat ./HG03516/BRep1.R1_val_1.fq.gz | gunzip > ./HG03516/BRep1.R1.trimmed.fastq
cat ./HG03516/BRep1.R2_val_2.fq.gz | gunzip > ./HG03516/BRep1.R2.trimmed.fastq
echo -e "./HG03516/BRep1.R1.trimmed.fastq\n./HG03516/BRep1.R2.trimmed.fastq\n" > ./HG03516/BRep1.list.txt


cat ./HG03516/BRep2.R1_val_1.fq.gz | gunzip > ./HG03516/BRep2.R1.trimmed.fastq
cat ./HG03516/BRep2.R2_val_2.fq.gz | gunzip > ./HG03516/BRep2.R2.trimmed.fastq 
echo -e "./HG03516/BRep2.R1.trimmed.fastq\n./HG03516/BRep2.R2.trimmed.fastq\n" > ./HG03516/BRep2.list.txt



