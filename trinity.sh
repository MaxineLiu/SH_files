#!/bin/bash
#SBATCH --time=8:00:00
#SBATCH --job-name="trinity.sh"
#SBATCH --mem=52000 # 52000M
#SBATCH --account=def-jfu
#SBATCH --cpus-per-task=10
module load StdEnv/2020
module load gcc/9.3.0
module load openmpi/4.0.3
module load scipy-stack/2021a
module load samtools/1.13
module load jellyfish/2.3.0
module load salmon/1.4.0
module load trinity/2.12.0
Trinity --seqType fq --max_memory 50G --left /project/def-jfu/ambystoma.dir/Sal_D498-T01_good_1.fq  --right /project/def-jfu/ambystoma.dir/Sal_D498-T01_good_2.fq --CPU 10 --output /scratch/maxine91/T01_trinity.dir
echo "Task complete!"
