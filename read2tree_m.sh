#!/bin/bash
#for file in $(ls /scratch/beegfs/weekly/ddylus/read2tree/canva/r2t/02_ref_dna/*.fa) 
#for file in $(ls /scratch/beegfs/weekly/ddylus/read2tree/canva/r2tc/02_ref_dna/*.fa)
#for file in $(ls /scratch/beegfs/weekly/ddylus/read2tree/arath/r2tc/02_ref_dna/*.fa)
#for file in $(ls /scratch/beegfs/weekly/ddylus/read2tree/mouse/r2tc/02_ref_dna/*.fa)
for file in $(ls /scratch/beegfs/monthly/mpmeurville/r2t/chuv/output/02_ref_dna/*.fa)
do
  echo $file
  arg1=$file
  sed "s!ZargsZ!$arg1!g" < /home/mmeurvil/lsf/read2tree.sh | bsub 
done
