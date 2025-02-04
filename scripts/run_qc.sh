#!/bin/bash
#SBATCH --ntasks-per-node=1
#SBATCH --job-name=QC
#SBATCH --partition=short
#SBATCH --time=12:00:00
#SBATCH --mem-per-cpu=64G

module load Miniconda3/23.1.0-1
source activate /data/engs-deep-learning-biosystem/bras5181/envs4conda/metawrap-env 

#for F in RAW_READS/*_1.fastq; do
#	R=${F%_*}_2.fastq
#	BASE=${F##*/}
#	SAMPLE=${BASE%_*}
#	eval "metawrap read_qc -1 ${F} -2 ${R} -o READ_QC/${SAMPLE}"
#done

#samples="A28 A29 A30 A6"
#for sample in $samples; do
#	eval "metawrap read_qc -1 RAW_READS/${sample}_1.fastq -2 RAW_READS/${sample}_2.fastq -o READ_QC/${sample}"
#done

#samples="A7 A9 B1 B2"
#for sample in $samples; do
#	eval "metawrap read_qc -1 RAW_READS/${sample}_1.fastq -2 RAW_READS/${sample}_2.fastq -o READ_QC/${sample}"
#done

#samples="B3 B4 B5 B6"
#for sample in $samples; do
#	eval "metawrap read_qc -1 RAW_READS/${sample}_1.fastq -2 RAW_READS/${sample}_2.fastq -o READ_QC/${sample}"
#done

#samples="B7 B8 B9 B10"
#for sample in $samples; do
#	eval "metawrap read_qc -1 RAW_READS/${sample}_1.fastq -2 RAW_READS/${sample}_2.fastq -o READ_QC/${sample}"
#done

#for i in READ_QC/*; do
#	b=${i#*/}
#	mv ${i}/final_pure_reads_1.fastq CLEAN_READS/${b}_1.fastq
#	mv ${i}/final_pure_reads_2.fastq CLEAN_READS/${b}_2.fastq
#done

#cat CLEAN_READS/A*_1.fastq > CLEAN_READS/ALL_READS/A_1.fastq
#cat CLEAN_READS/A*_2.fastq > CLEAN_READS/ALL_READS/A_2.fastq

#cat CLEAN_READS/B*_1.fastq > CLEAN_READS/ALL_READS/B_1.fastq
#cat CLEAN_READS/B*_2.fastq > CLEAN_READS/ALL_READS/B_2.fastq

echo "Completed!"

source deactivate
