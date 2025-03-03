#!/bin/bash
#SBATCH --ntasks-per-node=2
#SBATCH --job-name=annot_1
#SBATCH --partition=medium
#SBATCH --time=24:00:00
#SBATCH --mem-per-cpu=64G

module load Miniconda3/23.1.0-1
source activate /data/engs-deep-learning-biosystem/bras5181/envs4conda/HUMAnN-3.0

#samples="B1 B2 B3 B4 B5 B6 B7 B8 B9"
#for sample in $samples; do
#	eval "humann --input CLEAN_READS/${sample}_1.fastq.gz --output FUNC_ANNOT/${sample}"
#done

#samples="B10 A7 A9"
#for sample in $samples; do
#	eval "humann --input CLEAN_READS/${sample}_1.fastq.gz --output FUNC_ANNOT/${sample}"
#done

#samples="A29 A30 A6"
#for sample in $samples; do
#	eval "humann --input CLEAN_READS/${sample}_1.fastq.gz --output FUNC_ANNOT/${sample}"
#done

echo "Completed B!"

source deactivate
