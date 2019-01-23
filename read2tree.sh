#!/bin/bash
#
#BSUB -o /scratch/beegfs/monthly/mpmeurville/r2t/chuv/lsf_output/CHUV-output.%J
#BSUB -e /scratch/beegfs/monthly/mpmeurville/r2t/chuv/lsf_output/CHUV-error.%J
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
export TERM=xterm-256color
args="ZargsZ"
arg1=`echo $args | awk '{print $1}'`
filename=$arg1
echo $filename


#CHUV S.aureus
cd /scratch/beegfs/monthly/mpmeurville/r2t/chuv/
python -W ignore ~library/read2tree/bin/read2tree --standalone_path /scratch/beegfs/monthly/mpmeurville/r2t/chuv/marker_genes/ --dna_reference /scratch/beegfs/monthly/mpmeurville/eukaryotes.cdna.fa --reads /scratch/beegfs/monthly/mpmeurville/r2t/chuv/reads/CHUV01/*_1.fastq /scratch/beegfs/monthly/mpmeurville/r2t/chuv/reads/CHUV01/*_2.fastq --output_path scratch/beegfs/monthly/mpmeurville/r2t/chuv/output/ --keep_all_ogs --threads 4 --single_mapping $filename







