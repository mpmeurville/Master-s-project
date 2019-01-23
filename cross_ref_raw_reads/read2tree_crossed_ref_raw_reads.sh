#!/bin/bash
#
#BSUB -o /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cross_ref_raw_reads/01_output/lsf_output_mapping/CHUV-output.%J
#BSUB -e /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cross_ref_raw_reads/01_output/lsf_output_mapping/CHUV-error.%J
#BSUB -u marie-pierre.meurville@unil.ch
#BSUB -J mapping
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

echo $filename
echo $foldername

#CHUV S.aureus
cd /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cross_ref_raw_reads/
python -W ignore ~/library/read2tree/bin/read2tree --standalone_path /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cross_ref_raw_reads/marker_genes/ --dna_reference /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cross_ref_raw_reads/prokaryotes.cdna.fa --reads /scratch/beegfs/monthly/mpmeurville/r2t/chuv/raw_reads/01_raw_reads/$foldername/*_1.fastq /scratch/beegfs/monthly/mpmeurville/r2t/chuv/raw_reads/01_raw_reads/$foldername/*_2.fastq --output_path /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cross_ref_raw_reads/01_output --keep_all_ogs --threads 4 --single_mapping $filename







