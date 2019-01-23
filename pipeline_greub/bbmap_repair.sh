
#!/bin/bash

#BSUB -o /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/lsf_output/bbmap.o%J
#BSUB -e /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/lsf_output/bbmap.e%J
#BSUB -u marie-pierre.meurville@unil.ch
#BSUB -J ref
#BSUB -n 1
#BSUB -R "span[ptile=1]"
#BSUB -R "rusage[mem=60000]"
#BSUB -M 60000000

module add UHTS/Analysis/BBMap/37.82

for folder in $(echo `find /scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/01_trimmed_reads/ -mindepth 1 -maxdepth 1 -type d`)
do


folder="$(basename $folder)"

echo $folder
echo ${folder}-2test

bsub repair.sh in=/scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/01_trimmed_reads/$folder/${folder}_1t.fastq in2=/scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/01_trimmed_reads/$folder/${folder}_2t.fastq out=/scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/02_bbmap_repaired_pereads/$folder/${folder}_1tr.fastq out2=/scratch/beegfs/monthly/mpmeurville/r2t/chuv/pipeline_greub/02_bbmap_repaired_pereads/$folder/${folder}_2tr.fastq

 
done

