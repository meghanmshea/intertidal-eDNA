#!/bin/bash
#SBATCH -p normal --time=10:00:00 --mem=48G
#SBATCH -J bowtie2_blca
#SBATCH -o /scratch/users/mshea/PillarPoint/Run_info/run_logs/bowtie2_blca.o.%j 
#SBATCH -e /scratch/users/mshea/PillarPoint/Run_info/run_logs/bowtie2_blca.alignment_stats.e.%j 

echo _BEGIN_ [run_bowtie2_blca_paired.sh]: Tue Jan 31 18:18:35 PST 2023

 singularity exec anacapa-1.5.0.img /bin/bash /home/users/mshea/anacapa/Anacapa_db/scripts/run_bowtie2_blca.sh -o /scratch/users/mshea/PillarPoint -d /home/users/mshea/anacapa/Anacapa_db -m CO1 -u mshea -b .95 -p .95 -c /home/users/mshea/anacapa/Anacapa_db/scripts/BCC_default_cut_off.sh -n 100 -x 1 -f -2.5 -g -2 -k /home/users/mshea/anacapa/Anacapa_db/scripts/Hoffman2_HPC_header.sh

echo _END_ [run_bowtie2_blca.sh]