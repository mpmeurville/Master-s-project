#!/bin/bash
#
#BSUB -o /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/lsf_output_snippy/snippy_test_o%J
#BSUB -e /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/lsf_output_snippy/snippy_test_e%J
#BSUB -u marie-pierre.meurville@unil.ch
#BSUB -J dnaTree_bootstrap
#BSUB -R "rusage[mem=10000]"
#BSUB -M 10000000


snippy --reference /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/Saureus_MW2_full.gb -R1 /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/02_bbmap_repaired_pereads/CHUV01/*_1tr.fastq -R2  /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/02_bbmap_repaired_pereads/CHUV01/*_2tr.fastq --outdir /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/10_snippy_output/test --prefix snippy_CHUV01_MW2_test --unmapped 
