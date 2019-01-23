#!/bin/bash
#
#BSUB -o /scratch/beegfs/monthly/mmeurvi/r2t/strepto/01_first_tree/willem_strain/lsf_output/output.%I
#BSUB -e /scratch/beegfs/monthly/mmeurvi/r2t/strepto/01_first_tree/willem_strain/lsf_output/error.%I
#BSUB -u marie-piere.meurville@unil.ch
#BSUB -J oma[1-100]
#BSUB -R "rusage[mem=2000]"
#BSUB -M 2000000
#BSUB -W 1:00
#BSUB -Q 3
#
export NR_PROCESSES=100
cd /scratch/beegfs/monthly/mmeurvi/r2t/strepto/01_first_tree/willem_strain/OMA.2.3.0
./bin/oma -s -W 3300
