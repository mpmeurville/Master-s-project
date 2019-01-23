# -*- coding: utf-8 -*-
"""
Created on Tue Nov 27 12:37:04 2018

@author: marie
"""



import os
import allel
import vcf
import numpy as np
import pandas as pd
import csv
import re
import matplotlib.pyplot as plt



path = "C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/snippy_comparison_raw_reads_MW2/03_raw_vcf_only_snp"
os.chdir(path)


### Loop over the .raw.vcf files in the directories
dp_datas={}
for file in os.listdir(path):
    print(file)
    if file.endswith(".vcf"):
        callset = allel.read_vcf(file, fields=['variants/DP'])
        dp_datas[file]= callset

dp_data_clean={"greub":{}, "R2T":{}}

for k,v in dp_datas.items():
    if "greub" in k:

        strain = re.search('snippy_MW2_greub_(.*).raw.vcf_only_snp.vcf', k).group(1)
        dp_data_clean["greub"][strain]=v['variants/DP']
    if "R2T" in k:
        strain = re.search('snippy_MW2_R2T_(.*).raw.vcf_only_snp.vcf', k).group(1)
        dp_data_clean["R2T"][strain]=v['variants/DP']        


dp_data_clean_trans={"CHU01":{}, "CHU02":{}, "CHU03":{}, "CHU04":{}, "CHU05":{}, "CHU06":{}, "CHU07":{}, "CHU08":{}, "CHU09":{}, "CHU10":{}, "CHU11":{}, "CHU12":{}, "CHU13":{}, "CHU14":{}, "CHU15":{}}

for k,v in dp_datas.items():
    if "CHU01" in k:

        strain = re.search('snippy_MW2_(.*)_CHU01.raw.vcf_only_snp.vcf', k).group(1)
        dp_data_clean_trans["CHU01"][strain]=v['variants/DP']
    if "CHU02" in k:

        strain = re.search('snippy_MW2_(.*)_CHU02.raw.vcf_only_snp.vcf', k).group(1)
        dp_data_clean_trans["CHU02"][strain]=v['variants/DP']
    if "CHU03" in k:

        strain = re.search('snippy_MW2_(.*)_CHU03.raw.vcf_only_snp.vcf', k).group(1)
        dp_data_clean_trans["CHU03"][strain]=v['variants/DP']
    if "CHU04" in k:

        strain = re.search('snippy_MW2_(.*)_CHU04.raw.vcf_only_snp.vcf', k).group(1)
        dp_data_clean_trans["CHU04"][strain]=v['variants/DP']
    if "CHU05" in k:

        strain = re.search('snippy_MW2_(.*)_CHU05.raw.vcf_only_snp.vcf', k).group(1)
        dp_data_clean_trans["CHU05"][strain]=v['variants/DP']
    if "CHU06" in k:

        strain = re.search('snippy_MW2_(.*)_CHU06.raw.vcf_only_snp.vcf', k).group(1)
        dp_data_clean_trans["CHU06"][strain]=v['variants/DP']
    if "CHU07" in k:

        strain = re.search('snippy_MW2_(.*)_CHU07.raw.vcf_only_snp.vcf', k).group(1)
        dp_data_clean_trans["CHU07"][strain]=v['variants/DP']
    if "CHU08" in k:

        strain = re.search('snippy_MW2_(.*)_CHU08.raw.vcf_only_snp.vcf', k).group(1)
        dp_data_clean_trans["CHU08"][strain]=v['variants/DP']
    if "CHU09" in k:

        strain = re.search('snippy_MW2_(.*)_CHU09.raw.vcf_only_snp.vcf', k).group(1)
        dp_data_clean_trans["CHU09"][strain]=v['variants/DP']
    if "CHU10" in k:

        strain = re.search('snippy_MW2_(.*)_CHU10.raw.vcf_only_snp.vcf', k).group(1)
        dp_data_clean_trans["CHU10"][strain]=v['variants/DP']
    if "CHU11" in k:

        strain = re.search('snippy_MW2_(.*)_CHU11.raw.vcf_only_snp.vcf', k).group(1)
        dp_data_clean_trans["CHU11"][strain]=v['variants/DP']
    if "CHU12" in k:

        strain = re.search('snippy_MW2_(.*)_CHU12.raw.vcf_only_snp.vcf', k).group(1)
        dp_data_clean_trans["CHU12"][strain]=v['variants/DP']
    if "CHU13" in k:

        strain = re.search('snippy_MW2_(.*)_CHU13.raw.vcf_only_snp.vcf', k).group(1)
        dp_data_clean_trans["CHU13"][strain]=v['variants/DP']
    if "CHU14" in k:

        strain = re.search('snippy_MW2_(.*)_CHU14.raw.vcf_only_snp.vcf', k).group(1)
        dp_data_clean_trans["CHU14"][strain]=v['variants/DP']
    if "CHU15" in k:

        strain = re.search('snippy_MW2_(.*)_CHU15.raw.vcf_only_snp.vcf', k).group(1)
        dp_data_clean_trans["CHU15"][strain]=v['variants/DP']

### Boxplot of dp comp between greub ref and r2t ref


fig, axes = plt.subplots(ncols=15, sharey=True,figsize=(20, 10))
fig.subplots_adjust(wspace=0)

for ax, name in zip(axes, ["CHU01","CHU02","CHU03","CHU04","CHU05","CHU06","CHU07","CHU08","CHU09","CHU10","CHU11","CHU12","CHU13","CHU14","CHU15"]):
    ax.boxplot([dp_data_clean_trans[name][item] for item in ["greub", "R2T"]] )
    b=ax.set(xticklabels=["Full ref", "concat ref"], xlabel=name)
    ax.margins(0.5)# Optional
   
    plt.setp(b, rotation=45, fontsize=11)
fig.set_title("Boxplots of read depth at SNP locus", fontsize=20)
fig.set_xlabel('Strains', fontsize=15)
fig.set_ylabel('Reads depth', fontsize=15)
   
plt.show()




with open('dp_values.csv', 'w') as csv_file:
    writer = csv.writer(csv_file)
    for key, value in dp_datas.items():
       writer.writerow([key, value])

mean_dp_data={}

for k, v in dp_datas.items():
    mean_dp_data[k]=np.average(v['variants/DP'])
    #print(type(v))
    #print(list(v.keys()))

with open('average_dp_values.csv', 'w') as csv_file:
    writer = csv.writer(csv_file)
    for key, value in mean_dp_data.items():
       writer.writerow([key, value])


