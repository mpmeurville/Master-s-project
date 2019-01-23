#!/bin/bash
#
#BSUB -o /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/lsf_output_raxml/DNA_tree_1_.o%J
#BSUB -e /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/lsf_output_raxml/DNA_tree_1_.e%J
#BSUB -u marie-pierre.meurville@unil.ch
#BSUB -J dnaTree
#BSUB -R "rusage[mem=10000]"
#BSUB -M 10000000


 module add Phylogeny/raxml/8.2.10;

raxmlHPC -s /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/08_parsnp_refMw2_crossed_ref_MUM/concat_aligned_cross_ref_renamed_unix.phy -m GTRCAT -b 123476 -p 12345 -N 1000 -w /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/11_output_raxml/ -n GTRCAT_b1000_postPARSNP
