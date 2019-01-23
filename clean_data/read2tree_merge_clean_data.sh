#!/bin/bash
#
#BSUB -o /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/lsf_output/merge/merge.o%J
#BSUB -e /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/lsf_output/merge/merge.e%J
#BSUB -u marie-pierre.meurville@unil.ch
#BSUB -J merge
#BSUB -n 1
#BSUB -R "span[ptile=1]"
#BSUB -R "rusage[mem=10000]"
#BSUB -M 10000000
#

#CHUV S.aureus
cd /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data
python -W ignore ~/library/read2tree/bin/read2tree --merge_all_mappings --output_path /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/01_output --keep_all_ogs --sc_threshold 0.25







