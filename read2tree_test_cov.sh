#!/bin/bash
#
#BSUB -o /scratch/beegfs/monthly/mmeurvi/r2t/chuv/test_cov/lsf_output/mapping/CHUV-output.%J
#BSUB -e /scratch/beegfs/monthly/mmeurvi/r2t/chuv/test_cov/lsf_output/mapping/CHUV-error.%J
#BSUB -u marie-pierre.meurville@unil.ch
#BSUB -J map_debug  #cov_t_"TargsT"
#BSUB -n 4
#BSUB -R "span[ptile=4]"
#BSUB -R "rusage[mem=6000]"
#BSUB -M 6000000
#
module add UHTS/Analysis/BEDTools/2.26.0
module load UHTS/Analysis/samtools/1.4
module load SequenceAnalysis/MultipleSequenceAlignment/mafft/7.310
module load Phylogeny/FastTree/2.1.10

filename="ZargsZ"
foldername="AargsA"
#thres="TargsT"
#foo="FargsF"


#echo $filename
#echo $foldername
#echo $foo
#echo $thres

#CHUV S.aureus

python -W ignore /scratch/beegfs/monthly/mmeurvi/home/library/read2tree/bin/read2tree --standalone_path /scratch/beegfs/monthly/mmeurvi/r2t/chuv/cleaning_data/marker_genes/ --dna_reference /scratch/beegfs/monthly/mmeurvi/r2t/chuv/cleaning_data/prokaryotes.cdna.fa --reads /scratch/beegfs/monthly/mmeurvi/r2t/chuv/test_cov/input/debug/$foldername/*_1.fastq /scratch/beegfs/monthly/mmeurvi/r2t/chuv/test_cov/input/debug/$foldername/*_2.fastq --output_path /scratch/beegfs/monthly/mmeurvi/r2t/chuv/test_cov/output/tests/output_noth_debug --debug --keep_all_ogs --threads 4 --single_mapping $filename #--coverage_threshold 40 --debug








