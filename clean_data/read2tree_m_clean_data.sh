#!/bin/bash

for folder in $(echo `find /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/02_bbmap_repaired_pereads/ -mindepth 1 -maxdepth 1 -type d`)
do

folder="$(basename $folder)"

  for file in $(ls /scratch/beegfs/monthly/mpmeurville/r2t/chuv/cleaning_data/01_output/02_ref_dna/*.fa)
  do

    echo $file
    arg1=$file
  
    echo $folder
    arg2=$folder  

    sed -e "s/AargsA/$arg2/g; s!ZargsZ!$arg1!g" < /home/mmeurvil/lsf/clean_data/read2tree_clean_data.sh | bsub

  done 
done

