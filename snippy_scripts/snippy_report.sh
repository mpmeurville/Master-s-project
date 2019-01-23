#!/bin/bash
#BSUB -o /scratch/beegfs/monthly/mmeurvi/r2t/chuv/snippy/lsf_output/snippy_o%J
#BSUB -e /scratch/beegfs/monthly/mmeurvi/r2t/chuv/snippy/lsf_output/snippy_e%J
#BSUB -u marie-pierre.meurville@unil.ch
#BSUB -J snippy_greub
#BSUB -R "rusage[mem=10000]"
#BSUB -M 10000000

for folder in $(echo `find /scratch/beegfs/monthly/mmeurvi/r2t/chuv/snippy/greub_pipeline -mindepth 1 -maxdepth 1 -type d`)
do

cd $folder

folder="$(basename $folder)"
bsub "snippy-vcf_report --auto > snps.report_greub_"$folder".html"

   
done

