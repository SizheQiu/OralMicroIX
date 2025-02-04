#!/bin/bash
#SBATCH --ntasks-per-node=4
#SBATCH --job-name=binning_A
#SBATCH --partition=medium
#SBATCH --time=24:00:00
#SBATCH --mem-per-cpu=64G

module load Miniconda3/23.1.0-1
source activate /data/engs-deep-learning-biosystem/bras5181/envs4conda/metawrap-env 

#metawrap binning -o INITIAL_BIN/A -t 4 -a ASSEMBLY/A/final_assembly.fasta --metabat2 --maxbin2 --concoct CLEAN_READS/A*fastq
#echo "A binning completed."

#metawrap bin_refinement -o BIN_REFINEMENT/A -t 4 -A INITIAL_BIN/A/metabat2_bins/ -B INITIAL_BIN/A/maxbin2_bins/ -C INITIAL_BIN/A/concoct_bins/ -c 90 -x 5
#echo "A bin refine completed"

#metawrap quant_bins -b BIN_REFINEMENT/A/metawrap_90_5_bins -o QUANT_BINS/A -a ASSEMBLY/A/final_assembly.fasta CLEAN_READS/A*fastq
#echo "A bin quant completed"

metawrap reassemble_bins -o BIN_REASSEMBLY/A -1 CLEAN_READS/ALL_READS/A_1.fastq -2 CLEAN_READS/ALL_READS/A_2.fastq \
	-t 4 -m 64 -c 90 -x 5 -b BIN_REFINEMENT/A/metawrap_90_5_bins
echo "A reass completed."

#metawrap binning -o INITIAL_BIN/B -t 4 -a ASSEMBLY/B/final_assembly.fasta --metabat2 --maxbin2 --concoct CLEAN_READS/B*fastq
#echo "B binning completed."

#metawrap bin_refinement -o BIN_REFINEMENT/B -t 4 -A INITIAL_BIN/B/metabat2_bins/ -B INITIAL_BIN/B/maxbin2_bins/ -C INITIAL_BIN/B/concoct_bins/ -c 90 -x 5
#echo "B bin refine completed"

#metawrap quant_bins -b BIN_REFINEMENT/B/metawrap_90_5_bins -o QUANT_BINS/B -a ASSEMBLY/B/final_assembly.fasta CLEAN_READS/B*fastq
#echo "B bin quant completed"

metawrap reassemble_bins -o BIN_REASSEMBLY/B -1 CLEAN_READS/ALL_READS/B_1.fastq -2 CLEAN_READS/ALL_READS/B_2.fastq \
	-t 4 -m 64 -c 90 -x 5 -b BIN_REFINEMENT/B/metawrap_90_5_bins
echo "B reass completed."

source deactivate

