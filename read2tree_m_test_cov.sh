#!/bin/bash
#for foo in $(echo `find /scratch/beegfs/monthly/mmeurvi/r2t/chuv/test_cov/output -mindepth 1 -maxdepth 1 -type d`)
#do
#foo="$(basename $foo)"
for folder in $(echo `find /scratch/beegfs/monthly/mmeurvi/r2t/chuv/test_cov/input/debug -mindepth 1 -maxdepth 1 -type d`)
do

folder="$(basename $folder)"

#thr=${foo##*_}


  for file in $(ls /scratch/beegfs/monthly/mmeurvi/r2t/chuv/test_cov/output/tests/output_noth_debug/02_ref_dna/*.fa)
  do
  

 
    #echo $file
    arg1=$file
  
    #echo $folder
    arg2=$folder

   # echo $thr
#    arg3=$thr
  
 #   echo $foo
  #  arg4=$foo


    sed -e "s/AargsA/$arg2/g; s!ZargsZ!$arg1!g" < /scratch/beegfs/monthly/mmeurvi/home/lsf/read2tree_test_cov.sh | bsub #s!TargsT!$arg3!g; s!FargsF!$arg4!g" < /scratch/beegfs/monthly/mmeurvi/home/lsf/read2tree_test_cov.sh | bsub

done 
done
#done
