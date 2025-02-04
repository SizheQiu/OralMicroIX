#!/bin/bash
#SBATCH --ntasks-per-node=1
#SBATCH --job-name=classify
#SBATCH --partition=medium
#SBATCH --time=24:00:00
#SBATCH --mem-per-cpu=128G

module load Miniconda3/23.1.0-1
source activate /data/engs-deep-learning-biosystem/bras5181/envs4conda/gtdbtk-2.1.1 

#gtdbtk classify_wf --genome_dir BIN_REFINEMENT/A/metawrap_90_5_bins --out_dir CLASSIFICATION/A -x fa
#echo "A classification!"

gtdbtk classify_wf --genome_dir BIN_REFINEMENT/B/metawrap_90_5_bins --out_dir CLASSIFICATION/B -x fa
echo "B classification!"
source deactivate
