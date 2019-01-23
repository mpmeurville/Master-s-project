#!/bin/bash

for folder in $(echo `find /scratch/beegfs/monthly/mmeurvi/r2t/chuv/snippy/input/complete_dataset -mindepth 1 -maxdepth 1 -type d`)
do

folder="$(basename $folder)"

  for file in /scratch/beegfs/monthly/mmeurvi/r2t/chuv/snippy/input/complete_dataset/$folder

  do

    echo $file
    arg1=$file
  
    echo $folder
    arg2=$folder  

    sed -e "s/AargsA/$arg2/g; s!ZargsZ!$arg1!g" < /scratch/beegfs/monthly/mmeurvi/r2t/chuv/snippy/snippy_loop.sh | bsub

  done 
done

