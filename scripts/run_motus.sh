#!/bin/bash
#SBATCH --ntasks-per-node=1
#SBATCH --job-name=motus
#SBATCH --partition=short
#SBATCH --time=12:00:00
#SBATCH --mem-per-cpu=64G

module load Miniconda3/23.1.0-1
source activate /data/engs-deep-learning-biosystem/bras5181/envs4conda/motu-env 

#samples="A10 A11 A1 A20 A28"
#for sample in $samples; do
#	eval "motus profile -f CLEAN_READS/${sample}_1.fastq -r CLEAN_READS/${sample}_2.fastq > MOTUS_TAX/${sample}_tax.txt"
#done
#echo "Completed 1!"

#samples="A29 A30 A6 A7 A9"
#for sample in $samples; do
#	eval "motus profile -f CLEAN_READS/${sample}_1.fastq -r CLEAN_READS/${sample}_2.fastq > MOTUS_TAX/${sample}_tax.txt"
#done
#echo "Completed 2!"


#samples="B1 B2 B3 B4 B5"
#for sample in $samples; do
#	eval "motus profile -f CLEAN_READS/${sample}_1.fastq -r CLEAN_READS/${sample}_2.fastq > MOTUS_TAX/${sample}_tax.txt"
#done
#echo "Completed 3!"

#samples="B5 B6 B7 B8 B9 B10"
#for sample in $samples; do
#	eval "motus profile -f CLEAN_READS/${sample}_1.fastq -r CLEAN_READS/${sample}_2.fastq > MOTUS_TAX/${sample}_tax.txt"
#done
#echo "Completed 4!"


source deactivate
