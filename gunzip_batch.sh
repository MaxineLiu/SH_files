#! /maxine91/bin/env bash
# This is a script of batch gunzip .gz files
for fastq_gz_file in /project/def-jfu/ambystoma.dir/Sal*gz
do
    gunzip $fastq_gz_file
done
echo "ok!"
