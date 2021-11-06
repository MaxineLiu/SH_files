#! /maxine91/bin/env bash
# This is a script of batch fastqc files
module load fastqc/0.11.9
for fastq_file in /project/def-jfu/ambystoma.dir/Sal*fq
do
    fastqc -o /project/def-jfu/ambystoma.dir/QC_bf_filter.dir/ -t 12 $fastq_file
done
echo "ok!"
