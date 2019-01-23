#!/bin/bash
#
#BSUB -o /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/lsf_output/mapping/CHUV-output.%J
#BSUB -e /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/lsf_output/mapping/CHUV-error.%J
#BSUB -u marie-pierre.meurville@unil.ch
#BSUB -J CHUV01
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
cd /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/01_output
python -W ignore ~/library/read2tree/bin/read2tree --standalone_path /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/marker_genes/ --dna_reference /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/prokaryotes.cdna.fa --reads /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/02_bbmap_repaired_pereads/$foldername/*_1tr.fastq /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/02_bbmap_repaired_pereads/$foldername/*_2tr.fastq --output_path /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/01_output/ --keep_all_ogs --threads 4 --single_mapping $filename







