#!/bin/bash
#SBATCH --ntasks-per-node=1
#SBATCH --job-name=prodigal
#SBATCH --partition=short
#SBATCH --time=12:00:00
#SBATCH --mem-per-cpu=64G

module load prodigal/2.6.3-GCCcore-9.3.0

#for F in BIN_REFINEMENT/A/metawrap_90_5_bins/*.fa; do
#	BASE=${F##*/}
#	Sample="${BASE%.fa}"
#	eval "prodigal -i ${F} -a GenePredict/A_${Sample}.faa -d GenePredict/A_${Sample}.fna -f gff -o GenePredict/A_${Sample}.gff -p meta"
#done
#echo "A prodigal completed."


for F in BIN_REFINEMENT/B/metawrap_90_5_bins/*.fa; do
	BASE=${F##*/}
	Sample="${BASE%.fa}"
	eval "prodigal -i ${F} -a GenePredict/B_${Sample}.faa -d GenePredict/B_${Sample}.fna -f gff -o GenePredict/B_${Sample}.gff -p meta"
done
echo "B prodigal completed."
