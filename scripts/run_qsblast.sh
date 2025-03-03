#!/bin/bash
#SBATCH --ntasks-per-node=1
#SBATCH --job-name=prodigal
#SBATCH --partition=short
#SBATCH --time=12:00:00
#SBATCH --mem-per-cpu=64G

module load BLAST+/2.7.1-foss-2018b

for F in GenePredict/*.faa; do
	BASE=${F##*/}
	name=${BASE%.faa}
	eval "blastp -query QS_blast/qs_proteins.fasta -subject ${F} -evalue 1e-6 -outfmt 7 -out QS_blast/${name}.QS.txt"
done
