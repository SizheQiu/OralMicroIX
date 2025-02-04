#!/bin/bash
#SBATCH --ntasks-per-node=4
#SBATCH --job-name=Assembly
#SBATCH --partition=medium
#SBATCH --time=36:00:00
#SBATCH --mem-per-cpu=64G

module load Miniconda3/23.1.0-1
source activate /data/engs-deep-learning-biosystem/bras5181/envs4conda/metawrap-env 

#metawrap assembly -1 CLEAN_READS/ALL_READS/A_1.fastq -2 CLEAN_READS/ALL_READS/A_2.fastq -m 64 -t 4 -o ASSEMBLY/A
#echo "A assembly completed"

#metawrap assembly -1 CLEAN_READS/ALL_READS/B_1.fastq -2 CLEAN_READS/ALL_READS/B_2.fastq -m 64 -t 4 -o ASSEMBLY/B
#echo "B assembly completed"

source deactivate
