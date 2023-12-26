#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno24/lab6-singularity/extra
#SBATCH -J lab6_alumno24
#SBATCH --output=slurm-%j.out 
#SBATCH --error=slurm-%j.err
#SBATCH --mail-type=NONE #END/START/NONE
#SBATCH --mail-user=MAIL@um.es
#SBATCH --time=00:30:00

# @author: fjredondo
# @description: 3.3 Running lab6-pi.sif

var=$(date +'%Y/%m/%d %r')
echo "Job start at $var"


module load singularity


singularity run lab6-pi.sif > lab6_run_pi_pacioli-alumno24.out


var=$(date +'%Y/%m/%d %r')
echo "Job has ended at $var"
