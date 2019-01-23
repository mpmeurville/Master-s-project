#!/bin/bash

for folder in $(echo `find /scratch/beegfs/monthly/mpmeurville/r2t/chuv/raw_reads/01_raw_reads/ -mindepth 1 -maxdepth 1 -type d`)
do

folder="$(basename $folder)"

  for file in $(ls /scratch/beegfs/monthly/mpmeurville/r2t/chuv/raw_reads/02_output/02_ref_dna/*.fa)
  do

    echo $file
    arg1=$file
  
    echo $folder
    arg2=$folder  

    sed -e "s/AargsA/$arg2/g; s!ZargsZ!$arg1!g" < /home/mmeurvil/lsf/raw_analyzis/read2tree_raw_reads.sh | bsub

  done 
done

