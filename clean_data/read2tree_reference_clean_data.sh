#!/bin/bash
#
#BSUB -o /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/lsf_output/ref/ref.o%J
#BSUB -e /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/lsf_output/ref/ref.e%J
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

#CHUV S. aureus clean reads of length 150. 

cd /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data
python -W ignore ~/library/read2tree/bin/read2tree --standalone_path /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/marker_genes/ --dna_reference /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/prokaryotes.cdna.fa --reads /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/02_bbmap_repaired_pereads/CHU01/*_1tr.fastq /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/02_bbmap_repaired_pereads/CHU01/*_2tr.fastq --output_path /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/01_output --reference


