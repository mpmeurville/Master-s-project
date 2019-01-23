#!/bin/bash
#BSUB -o /scratch/beegfs/monthly/mmeurvi/r2t/chuv/snippy/lsf_output/snippy_o%J
#BSUB -e /scratch/beegfs/monthly/mmeurvi/r2t/chuv/snippy/lsf_output/snippy_e%J
#BSUB -u marie-pierre.meurville@unil.ch
#BSUB -J snippy_greub
#BSUB -R "rusage[mem=10000]"
#BSUB -M 10000000

#
#
module add UHTS/Analysis/BEDTools/2.26.0
module load UHTS/Analysis/samtools/1.4

module load SequenceAnalysis/MultipleSequenceAlignment/mafft/7.310
module load Phylogeny/FastTree/2.1.10

filename="ZargsZ"
foldername="AargsA"

echo $filename
echo $foldername

snippy --reference /scratch/beegfs/monthly/mmeurvi/r2t/chuv/snippy/input/references/mw2_core_windows.fa -R1 /scratch/beegfs/monthly/mmeurvi/r2t/chuv/snippy/input/complete_dataset/$foldername/*_1.fastq -R2  /scratch/beegfs/monthly/mmeurvi/r2t/chuv/snippy/input/complete_dataset/$foldername/*_2.fastq --outdir /scratch/beegfs/monthly/mmeurvi/r2t/chuv/snippy/greub_core/snippy_out_$foldername --prefix snippy_MW2_core_$foldername --unmapped







