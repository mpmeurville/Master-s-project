
#!/bin/bash

#BSUB -o /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/lsf_output/spades.o%J
#BSUB -e /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/lsf_output/spades.e%J
#BSUB -u marie-pierre.meurville@unil.ch
#BSUB -J ref
#BSUB -n 1
#BSUB -R "span[ptile=1]"
#BSUB -R "rusage[mem=60000]"
#BSUB -M 6000000

#i=0

module add UHTS/Assembler/SPAdes/3.10.1;

for folder in $(echo `find /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/02_bbmap_repaired_pereads/ -mindepth 1 -maxdepth 1 -type d`)
do

#i=$[i+1]

folder="$(basename $folder)"



spades.py --pe1-1 /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/02_bbmap_repaired_pereads/$folder/*_1tr.fastq --pe1-2 /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/02_bbmap_repaired_pereads/$folder/*_2tr.fastq -o /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/03_spades_aligned_pereads/$folder/

 
done

