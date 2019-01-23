#!/bin/bash

cd /home/marie/Documents/PdM/Saureus/Saureus_CHUV_raw_reads

pwd

for folder in *;
	do
	
	cd $folder
	pwd
	fastq-mcf -o /home/marie/Documents/PdM/Saureus/quality_check/02_after_trimming/${folder}_1t.fastq /home/marie/Documents/PdM/Saureus/quality_check/nextera.fa /home/marie/Documents/PdM/Saureus/Saureus_CHUV_raw_reads/${folder}/${folder}_1.fastq --max-ns 1 -l 150 -L 150
	fastq-mcf -o /home/marie/Documents/PdM/Saureus/quality_check/02_after_trimming/${folder}_2t.fastq /home/marie/Documents/PdM/Saureus/quality_check/nextera.fa /home/marie/Documents/PdM/Saureus/Saureus_CHUV_raw_reads/${folder}/${folder}_2.fastq --max-ns 1 -l 150 -L 150

	cd ..
done	
