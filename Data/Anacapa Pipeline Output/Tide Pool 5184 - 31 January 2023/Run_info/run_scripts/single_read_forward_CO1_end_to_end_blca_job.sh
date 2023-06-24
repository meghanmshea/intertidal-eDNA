#!/bin/bash
#SBATCH -p normal --time=10:00:00 --mem=48G
#SBATCH -J BLCA_CO1
#SBATCH -o /scratch/users/mshea/PillarPoint/Run_info/run_logs/blcaCO1.o.%j
#SBATCH -e /scratch/users/mshea/PillarPoint/Run_info/run_logs/blcaCO1.e.%j 

singularity exec anacapa-1.5.0.img /bin/bash /home/users/mshea/anacapa/Anacapa_db/scripts/run_blca.sh -o /scratch/users/mshea/PillarPoint -d /home/users/mshea/anacapa/Anacapa_db -b .95  -l .95 -m CO1 -s /scratch/users/mshea/PillarPoint/CO1/CO1bowtie2_out/single_read_forward_CO1_end_to_end.sam -n 100 -x 1 -f -2.5 -g -2 

