#!/bin/bash
#BSUB -o /scratch/beegfs/monthly/mmeurvi/r2t/strepto/01_first_tree/willem_strain/lsf_output/output_2.txt
#BSUB -e /scratch/beegfs/monthly/mmeurvi/r2t/strepto/01_first_tree/willem_strain/lsf_output/error_2.txt
#BSUB -u marie-piere.meurville@unil.ch
#BSUB -J oma
#BSUB -u marie-piere.meurville@unil.ch
#BSUB -R "rusage[mem=20000]"
#BSUB -M 20000000
#

cd /scratch/beegfs/monthly/mmeurvi/r2t/strepto/01_first_tree/willem_strain/OMA.2.3.0
./bin/oma
