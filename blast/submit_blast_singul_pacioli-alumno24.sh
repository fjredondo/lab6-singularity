#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno24/lab6-singularity/blast
#SBATCH -J lab6_alumno24
#SBATCH --output=slurm-%j.out 
#SBATCH --error=slurm-%j.err
#SBATCH --mail-type=NONE #END/START/NONE
#SBATCH --mail-user=MAIL@um.es
#SBATCH --time=00:30:00

# @author: fjredondo
# @description: 3.2 Ejecutar Blast

var=$(date +'%Y/%m/%d %r')
echo "Job start at $var"


module load singularity


singularity exec /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif makeblastdb -in zebrafish.1.protein.faa -dbtype prot

singularity exec /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif blastp -query P04156.fasta -db zebrafish.1.protein.faa -out results-blast.txt


var=$(date +'%Y/%m/%d %r')
echo "Job has ended at $var"
