#!/bin/bash


#BSUB -o /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cross_ref_raw_reads/lsf_output_references/ref.o%J

#BSUB -e /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cross_ref_raw_reads/lsf_output_references/ref.e%J

#BSUB -u marie-pierre.meurville@unil.ch

#BSUB -J ref

#BSUB -n 1

#BSUB -R "span[ptile=1]"

#BSUB -R "rusage[mem=60000]"

#BSUB -M 60000000

#

module add UHTS/Analysis/BEDTools/2.26.0

module load UHTS/Analysis/samtools/1.4

module load SequenceAnalysis/MultipleSequenceAlignment/mafft/7.310

module load Phylogeny/FastTree/2.1.10



#CHUV S. aureus raw reads. 



cd /scratch/beegfs/monthly/mpmeurville/r2t/chuv/


python -W ignore ~/library/read2tree/bin/read2tree --standalone_path /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cross_ref_raw_reads/marker_genes/ --dna_reference /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cross_ref_raw_reads/prokaryotes.cdna.fa --reads /scratch/beegfs/monthly/mpmeurville/r2t/chuv/raw_reads/01_raw_reads/CHUV01/*_1.fastq /scratch/beegfs/monthly/mpmeurville/r2t/chuv/raw_reads/01_raw_reads/CHUV01/*_2.fastq --output_path /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cross_ref_raw_reads/01_ref_output --reference



