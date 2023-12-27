#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno10/lab4
#SBATCH -J github
#SBATCH --cpus-per-task=1
#SBATCH --nodes=1
#SBATCH --ntasks=4

srun -n 4 file-cut.sh Sample1.fastq 
srun -n 4 file-cut.sh Sample2.fastq 
srun -n 4 file-cut.sh Sample3.fastq 
srun -n 4 file-cut.sh Sample4.fastq 

wait

mv "Sample1_cut.fastq" "Sample1.fastq"
mv "Sample2_cut.fastq" "Sample2.fastq"
mv "Sample3_cut.fastq" "Sample3.fastq"
mv "Sample4_cut.fastq" "Sample4.fastq"

