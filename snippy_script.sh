#!/bin/bash
#
#BSUB -o /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/10_snippy/lsf_output/snippy_test_o%J
#BSUB -e /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/10_snippy/lsf_output/snippy_test_e%J
#BSUB -u marie-pierre.meurville@unil.ch
#BSUB -J snippy
#BSUB -R "rusage[mem=10000]"
#BSUB -M 10000000


snippy --reference /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/10_snippy/in/mw2_core_unix.fa -R1 /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/10_snippy/in/uncompressed_1/uncompressed_1.tar -R2  /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/10_snippy/in/uncompressed_2/uncompressed_2.tar --outdir /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/10_snippy/out/test --prefix snippy_tar_MW2_test --unmapped --mincov 10 --minfrac 0.8 --mapqual 20 --basequal 20
