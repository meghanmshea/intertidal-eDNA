#!/bin/bash
#SBATCH -p normal --time=10:00:00 --mem=48G
#SBATCH -J unpaired_R_dada2
#SBATCH -o /scratch/users/mshea/PillarPoint/Run_info/run_logs/unpaired_R.o.%j
#SBATCH -e /scratch/users/mshea/PillarPoint/Run_info/run_logs/unpaired_R.e.%j

echo _BEGIN_ [run_dada2_bowtie2_unpaired_R.sh]: Mon Jan 30 20:22:33 PST 2023

singularity exec anacapa-1.5.0.img /bin/bash /home/users/mshea/anacapa/Anacapa_db/scripts/run_dada2.sh  -o /scratch/users/mshea/PillarPoint -d /home/users/mshea/anacapa/Anacapa_db -m CO1 -t reverse -e /home/users/mshea/anacapa/Anacapa_db/metabarcode_loci_min_merge_length.txt -b 0 

echo _END_ [run_dada2_unpaired_R.sh]