# -*- coding: utf-8 -*-
"""
Created on Thu Nov 15 08:54:00 2018

@author: marie
"""
import os
import allel
import vcf
import numpy as np
import pandas as pd


path = "C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/snippy_comparison_raw_reads_MW2/full_vcf/"
os.chdir(path)


#vcf_reader = vcf.Reader(open("thr_140_concat_merge_dna.fas_out.txt.vcf", 'r'))

callset = allel.read_vcf("core_snippy.vcf")
#callset = allel.read_vcf("test.vcf")
t=allel.model.GenotypeArray(callset['calldata/GT'])

full = pd.DataFrame.from_records(allel.GenotypeArray(callset['calldata/GT']), columns = callset['samples'], index = callset['variants/ALT'])


###Remove each time a snp is detected for a N, and replace the 1 value by a 0 -> N does not count for a snp anymore
for p in range(0,t.n_variants):
    alt=callset['variants/ALT'][p]
###N can be represented either by 1,2,3. ex: ALT=A,T,* -> then i represents here the position of the * in the alt for a cerain variant.
    for i in range(0,len(alt)):
        
        if (alt[i] == "*"):
    #print(p)
        #print(callset['variants/ALT'][p][0])
            for s in range(0,t.n_samples):
        
            #print("yes")
            ###i+1 because python starts at 0. If alt = A,G,*, i =2 indicates the position of the star, but will be a 3 (third position ) in VCF
                if (t[p,s][0]==i+1):
                #print("S")
                    t[p,s][0]=0
   
        
                
   ###Count number of SNPs for different strains  airwise comparisons            
snp_counts= pd.DataFrame(index=callset['samples'], columns=callset['samples'])
snp_counts = snp_counts.fillna(0) # with 0s rather than NaNs

for ref in range(0,t.n_samples):
    #print("ref")
    for comp in range(ref,t.n_samples):
        #print(comp)
        for p in range(0,t.n_variants):
            if (t[p,ref][0]!=t[p,comp][0]):
                
                snp_counts.loc[callset['samples'][ref], callset['samples'][comp]] = snp_counts.loc[callset['samples'][ref], callset['samples'][comp]] + 1
        snp_counts.loc[callset['samples'][comp], callset['samples'][ref]] = snp_counts.loc[callset['samples'][ref], callset['samples'][comp]]
                
snp_counts_greub=snp_counts   
snp_counts_greub.to_csv("snp_counts_greub.csv", sep='\t')  
snp_count_0=snp_counts   
snp_counts_0.to_csv("snp_counts_0.csv", sep='\t')  
snp_counts_2=snp_counts   
snp_counts_2.to_csv("snp_counts_2.csv", sep='\t')
snp_counts_1=snp_counts   
snp_counts_1.to_csv("snp_counts_1.csv", sep='\t')
snp_counts_3=snp_counts   
snp_counts_3.to_csv("snp_counts_3.csv", sep='\t')
snp_counts_5=snp_counts   
snp_counts_5.to_csv("snp_counts_5.csv", sep='\t')
snp_counts_10=snp_counts   
snp_counts_10.to_csv("snp_counts_10.csv", sep='\t')
snp_counts_15=snp_counts   
snp_counts_15.to_csv("snp_counts_15.csv", sep='\t')
snp_counts_20=snp_counts   
snp_counts_20.to_csv("snp_counts_20.csv", sep='\t')
snp_counts_25=snp_counts   
snp_counts_25.to_csv("snp_counts_25.csv", sep='\t')
snp_counts_clean=snp_counts   
snp_counts_clean.to_csv("snp_counts_clean.csv", sep='\t')
snp_counts_raw=snp_counts   
snp_counts_raw.to_csv("snp_counts_raw32.csv", sep='\t')

###for vcf files full from snippy
snp_counts.to_csv("snp_counts_snippy_greub_full.csv", sep='\t')
snp_counts.to_csv("snp_counts_snippy_r2t_concat.csv", sep='\t')
snp_counts.to_csv("snp_counts_snippy_greub_core.csv", sep='\t')



### count SNPs for vcf files with N position removed from the VCF file.
### Remove columns containing a * with bash : for file in *_out.txt.vcf; do  grep -v '\*' $file > "$file"_noN.vcf; done
 
import os
from os import listdir
from os.path import isfile, join
import allel
import vcf
import numpy as np
import pandas as pd


#path = "C:/Users/marie/Documents/PdM/Saureus/snp_count_snp-sites/04_vcf_files_no_N_position_all_removed/0-25_greub_clean_raw/"
path=("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/snp-sites_count/02_output/")
os.chdir(path)


callset = allel.read_vcf("thr_200_concat_merge_dna.fas.vcf_noN.vcf")
#callset = allel.read_vcf("test.vcf")
t=allel.model.GenotypeArray(callset['calldata/GT'])

full = pd.DataFrame.from_records(allel.GenotypeArray(callset['calldata/GT']), columns = callset['samples'], index = callset['variants/ALT'])

snp_counts= pd.DataFrame(index=callset['samples'], columns=callset['samples'])
snp_counts = snp_counts.fillna(0) # with 0s rather than NaNs

for ref in range(0,t.n_samples):
    #print("ref")
    #print(callset['samples'][ref])
    for comp in range(ref,t.n_samples):
        #print(comp)
        #print(callset['samples'][comp])
        for p in range(0,t.n_variants):
            if (t[p,ref][0]!=t[p,comp][0]):
                
                
                snp_counts.loc[callset['samples'][ref], callset['samples'][comp]] = snp_counts.loc[callset['samples'][ref], callset['samples'][comp]] + 1
        snp_counts.loc[callset['samples'][comp], callset['samples'][ref]] = snp_counts.loc[callset['samples'][ref], callset['samples'][comp]]




snp_counts.to_csv("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/snp-sites_count/02_output/csv/thr_0_concat_merge_dna.fas.vcf.csv", sep='\t')
snp_counts.to_csv("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/snp-sites_count/02_output/csv/thr_1_concat_merge_dna.fas.vcf.csv", sep='\t')
snp_counts.to_csv("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/snp-sites_count/02_output/csv/thr_2_concat_merge_dna.fas.vcf.csv", sep='\t')
snp_counts.to_csv("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/snp-sites_count/02_output/csv/thr_3_concat_merge_dna.fas.vcf.csv", sep='\t')
snp_counts.to_csv("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/snp-sites_count/02_output/csv/thr_5_concat_merge_dna.fas.vcf.csv", sep='\t')
snp_counts.to_csv("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/snp-sites_count/02_output/csv/thr_10_concat_merge_dna.fas.vcf.csv", sep='\t')
snp_counts.to_csv("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/snp-sites_count/02_output/csv/thr_20_concat_merge_dna.fas.vcf.csv", sep='\t')
snp_counts.to_csv("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/snp-sites_count/02_output/csv/thr_25_concat_merge_dna.fas.vcf.csv", sep='\t')
snp_counts.to_csv("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/snp-sites_count/02_output/csv/thr_30_concat_merge_dna.fas.vcf.csv", sep='\t')
snp_counts.to_csv("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/snp-sites_count/02_output/csv/thr_50_concat_merge_dna.fas.vcf.csv", sep='\t')
snp_counts.to_csv("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/snp-sites_count/02_output/csv/thr_70_concat_merge_dna.fas.vcf.csv", sep='\t')
snp_counts.to_csv("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/snp-sites_count/02_output/csv/thr_100_concat_merge_dna.fas.vcf.csv", sep='\t')
snp_counts.to_csv("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/snp-sites_count/02_output/csv/thr_200_concat_merge_dna.fas.vcf.csv", sep='\t')





snp_counts.to_csv("concat_merge_dna_clean.fas_out.txt.vcf_noN.vcf.csv", sep='\t')
snp_counts.to_csv("concat_merge_dna_raw32.fas_out.txt.vcf_noN.vcf.csv", sep='\t')
snp_counts.to_csv("thr_0_concat_merge_dna.fas_out.txt.vcf_noN.vcf.csv", sep='\t')
snp_counts.to_csv("thr_1_concat_merge_dna.fas_out.txt.vcf_noN.vcf.csv", sep='\t')
snp_counts.to_csv("thr_2_concat_merge_dna.fas_out.txt.vcf_noN.vcf.csv", sep='\t')
snp_counts.to_csv("thr_3_concat_merge_dna.fas_out.txt.vcf_noN.vcf.csv", sep='\t')
snp_counts.to_csv("thr_5_concat_merge_dna.fas_out.txt.vcf_noN.vcf.csv", sep='\t')
snp_counts.to_csv("thr_10_concat_merge_dna.fas_out.txt.vcf_noN.vcf.csv", sep='\t')
snp_counts.to_csv("thr_15_concat_merge_dna.fas_out.txt.vcf_noN.vcf.csv", sep='\t')
snp_counts.to_csv("thr_20_concat_merge_dna.fas_out.txt.vcf_noN.vcf.csv", sep='\t')
snp_counts.to_csv("thr_25_concat_merge_dna.fas_out.txt.vcf_noN.vcf.csv", sep='\t')
snp_counts.to_csv("concat_merge_dna_further.vcf_noN.vcf.csv", sep='\t')
snp_counts.to_csv("all_greub.fas_out.txt.vcf_noN.vcf.csv", sep='\t')





###count snp with position greub R2T

path = "C:/Users/marie/Documents/PdM/Saureus/coverage_tests/check_snp_number"
os.chdir(path)


callset = allel.read_vcf("04_output_greub_r2t_pos.vcf")
#callset = allel.read_vcf("test.vcf")
t=allel.model.GenotypeArray(callset['calldata/GT'])

full = pd.DataFrame.from_records(allel.GenotypeArray(callset['calldata/GT']), columns = callset['samples'], index = callset['variants/ALT'])

snp_counts= pd.DataFrame(index=callset['samples'], columns=callset['samples'])
snp_counts = snp_counts.fillna(0) # with 0s rather than NaNs

for ref in range(0,t.n_samples):
    #print("ref")
    for comp in range(ref,t.n_samples):
        #print(comp)
        for p in range(0,t.n_variants):
            if (t[p,ref][0]!=t[p,comp][0]):
                
                snp_counts.loc[callset['samples'][ref], callset['samples'][comp]] = snp_counts.loc[callset['samples'][ref], callset['samples'][comp]] + 1
        snp_counts.loc[callset['samples'][comp], callset['samples'][ref]] = snp_counts.loc[callset['samples'][ref], callset['samples'][comp]]

snp_counts.to_csv("04_output_greub_r2t_pos.vcf.csv", sep='\t')


###Count total number of SNPs for all strains, and divide by the total amount of SNPs. 


import os
import allel
import vcf
import numpy as np
import pandas as pd


path = "C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/snippy_comparison_raw_reads_MW2/full_vcf/"
os.chdir(path)


##Count number snps for the full file

#From bash: 
#concat_SNPs_all= 18526
#full_SNPs_all= 71588
#core_SNPs_all= 61902

            #full greub
callset = allel.read_vcf("core_greub_full.vcf")
#callset = allel.read_vcf("test.vcf")
t=allel.model.GenotypeArray(callset['calldata/GT'])

full = pd.DataFrame.from_records(allel.GenotypeArray(callset['calldata/GT']), columns = callset['samples'], index = callset['variants/ALT'])


##Isolate C0

n09=0
n10=0
n11=0
for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU09'):
          
             if (t[p,ref][0]!= 0):
                 n09=n09+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU10'):
          
             if (t[p,ref][0]!= 0):
                 n10=n10+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU11'):
          
             if (t[p,ref][0]!= 0):
                 n11=n11+1



n01=0
n02=0
n03=0
n04=0
n05=0
n06=0
n07=0
n08=0

for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU01'):
          
             if (t[p,ref][0]!= 0):
                 n01=n01+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU02'):
          
             if (t[p,ref][0]!= 0):
                 n02=n02+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU03'):
          
             if (t[p,ref][0]!= 0):
                 n03=n03+1

    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU04'):
          
             if (t[p,ref][0]!= 0):
                 n04=n04+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU05'):
          
             if (t[p,ref][0]!= 0):
                 n05=n05+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU06'):
          
             if (t[p,ref][0]!= 0):
                 n06=n06+1

    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU07'):
          
             if (t[p,ref][0]!= 0):
                 n07=n07+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU08'):
          
             if (t[p,ref][0]!= 0):
                 n08=n08+1
                 
n12=0
n13=0
n14=0
n15=0

for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU12'):
          
             if (t[p,ref][0]!= 0):
                 n12=n12+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU13'):
          
             if (t[p,ref][0]!= 0):
                 n13=n13+1
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU14'):
          
             if (t[p,ref][0]!= 0):
                 n14=n14+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU15'):
          
             if (t[p,ref][0]!= 0):
                 n15=n15+1

ave_c0_full = (n09+n10+n11)/(n01+n02+n03+n04+n05+n06+n07+n08+n09+n10+n11+n12+n13+n14+n15)# = 0.2139083693780708 : The number of SNPs in strains of C0 represent 21% of the SNPs in all strains. 
ave_c1_full = (n01+n02+n03+n04+n05+n06+n07+n08)/(n01+n02+n03+n04+n05+n06+n07+n08+n09+n10+n11+n12+n13+n14+n15)

full_snp_all= n01+n02+n03+n04+n05+n06+n07+n08+n09+n10+n11+n12+n13+n14+n15

            #core greub
callset = allel.read_vcf("core_snippy.vcf")
#callset = allel.read_vcf("test.vcf")
t=allel.model.GenotypeArray(callset['calldata/GT'])

full = pd.DataFrame.from_records(allel.GenotypeArray(callset['calldata/GT']), columns = callset['samples'], index = callset['variants/ALT'])


##Isolate C0

n09=0
n10=0
n11=0
for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU09'):
          
             if (t[p,ref][0]!= 0):
                 n09=n09+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU10'):
          
             if (t[p,ref][0]!= 0):
                 n10=n10+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU11'):
          
             if (t[p,ref][0]!= 0):
                 n11=n11+1



n01=0
n02=0
n03=0
n04=0
n05=0
n06=0
n07=0
n08=0

for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU01'):
          
             if (t[p,ref][0]!= 0):
                 n01=n01+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU02'):
          
             if (t[p,ref][0]!= 0):
                 n02=n02+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU03'):
          
             if (t[p,ref][0]!= 0):
                 n03=n03+1
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU04'):
          
             if (t[p,ref][0]!= 0):
                 n04=n04+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU05'):
          
             if (t[p,ref][0]!= 0):
                 n05=n05+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU06'):
          
             if (t[p,ref][0]!= 0):
                 n06=n06+1
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU07'):
          
             if (t[p,ref][0]!= 0):
                 n07=n07+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU08'):
          
             if (t[p,ref][0]!= 0):
                 n08=n08+1

n12=0
n13=0
n14=0
n15=0

for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU12'):
          
             if (t[p,ref][0]!= 0):
                 n12=n12+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU13'):
          
             if (t[p,ref][0]!= 0):
                 n13=n13+1
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU14'):
          
             if (t[p,ref][0]!= 0):
                 n14=n14+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU15'):
          
             if (t[p,ref][0]!= 0):
                 n15=n15+1

ave_c0_core= (n09+n10+n11)/(n01+n02+n03+n04+n05+n06+n07+n08+n09+n10+n11+n12+n13+n14+n15)# = 0.2139083693780708 : The number of SNPs in strains of C0 represent 21% of the SNPs in all strains. 
ave_c1_core = (n01+n02+n03+n04+n05+n06+n07+n08)/(n01+n02+n03+n04+n05+n06+n07+n08+n09+n10+n11+n12+n13+n14+n15)

core_snp_all=n01+n02+n03+n04+n05+n06+n07+n08+n09+n10+n11+n12+n13+n14+n15
core_snp_C0=n09+n10+n11
core_snp_C1=n01+n02+n03+n04+n05+n06+n07+n08
            #concat
callset = allel.read_vcf("core_R2T_concat.vcf")
#callset = allel.read_vcf("test.vcf")
t=allel.model.GenotypeArray(callset['calldata/GT'])

full = pd.DataFrame.from_records(allel.GenotypeArray(callset['calldata/GT']), columns = callset['samples'], index = callset['variants/ALT'])


##Isolate C0

n09=0
n10=0
n11=0
for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU09'):
          
             if (t[p,ref][0]!= 0):
                 n09=n09+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU10'):
          
             if (t[p,ref][0]!= 0):
                 n10=n10+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU11'):
          
             if (t[p,ref][0]!= 0):
                 n11=n11+1
                 



n01=0
n02=0
n03=0
n04=0
n05=0
n06=0
n07=0
n08=0

for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU01'):
          
             if (t[p,ref][0]!= 0):
                 n01=n01+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU02'):
          
             if (t[p,ref][0]!= 0):
                 n02=n02+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU03'):
          
             if (t[p,ref][0]!= 0):
                 n03=n03+1
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU04'):
          
             if (t[p,ref][0]!= 0):
                 n04=n04+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU05'):
          
             if (t[p,ref][0]!= 0):
                 n05=n05+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU06'):
          
             if (t[p,ref][0]!= 0):
                 n06=n06+1
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU07'):
          
             if (t[p,ref][0]!= 0):
                 n07=n07+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU08'):
          
             if (t[p,ref][0]!= 0):
                 n08=n08+1
                 

n12=0
n13=0
n14=0
n15=0

for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU12'):
          
             if (t[p,ref][0]!= 0):
                 n12=n12+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU13'):
          
             if (t[p,ref][0]!= 0):
                 n13=n13+1
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU14'):
          
             if (t[p,ref][0]!= 0):
                 n14=n14+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'snippy_out_CHU15'):
          
             if (t[p,ref][0]!= 0):
                 n15=n15+1

###for this concat genome, we divide the number of SNPs for strains in C0 by the summe of the number of SNPs of all the strains. 
                 
ave_c0_concat= (n09+n10+n11)/(n01+n02+n03+n04+n05+n06+n07+n08+n09+n10+n11+n12+n13+n14+n15)# = 0.2139083693780708 : The number of SNPs in strains of C0 represent 21% of the SNPs in all strains. 
#This does not tell us if some SNPs are the same, just that the number of SNPs 
ave_c1_concat = (n01+n02+n03+n04+n05+n06+n07+n08)/(n01+n02+n03+n04+n05+n06+n07+n08+n09+n10+n11+n12+n13+n14+n15)

OG_snp_all=n01+n02+n03+n04+n05+n06+n07+n08+n09+n10+n11+n12+n13+n14+n15
OG_snp_C0=n09+n10+n11
OG_snp_C1=n01+n02+n03+n04+n05+n06+n07+n08

ave_c0_core/ave_c0_full

### Calculate ratios for the thr0, thr20 and core genome pipeline -> try to find something logical!

import os
import allel
import vcf
import numpy as np
import pandas as pd


path = "C:/Users/marie/Documents/PdM/Saureus/snp_count_snp-sites/04_vcf_files_no_N_position_all_removed/0-25_greub_clean_raw/"
os.chdir(path)


##Count number snps for the full file

#From bash: 
#concat_SNPs_all= 18526
#full_SNPs_all= 71588
#core_SNPs_all= 61902

            #greub's core genome analysis
callset = allel.read_vcf("all_greub.fas_out.txt.vcf_noN.vcf")
#callset = allel.read_vcf("test.vcf")
t=allel.model.GenotypeArray(callset['calldata/GT'])

full = pd.DataFrame.from_records(allel.GenotypeArray(callset['calldata/GT']), columns = callset['samples'], index = callset['variants/ALT'])


##Isolate C0

n09=0
n10=0
n11=0
for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHUV09'):
          
             if (t[p,ref][0]!= 0):
                 n09=n09+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHUV10'):
          
             if (t[p,ref][0]!= 0):
                 n10=n10+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHUV11'):
          
             if (t[p,ref][0]!= 0):
                 n11=n11+1



n01=0
n02=0
n03=0
n04=0
n05=0
n06=0
n07=0
n08=0

for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHUV01'):
          
             if (t[p,ref][0]!= 0):
                 n01=n01+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHUV02'):
          
             if (t[p,ref][0]!= 0):
                 n02=n02+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHUV03'):
          
             if (t[p,ref][0]!= 0):
                 n03=n03+1

    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHUV04'):
          
             if (t[p,ref][0]!= 0):
                 n04=n04+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHUV05'):
          
             if (t[p,ref][0]!= 0):
                 n05=n05+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHUV06'):
          
             if (t[p,ref][0]!= 0):
                 n06=n06+1

    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHUV07'):
          
             if (t[p,ref][0]!= 0):
                 n07=n07+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHUV08'):
          
             if (t[p,ref][0]!= 0):
                 n08=n08+1
                 
n12=0
n13=0
n14=0
n15=0

for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHUV12'):
          
             if (t[p,ref][0]!= 0):
                 n12=n12+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHUV13'):
          
             if (t[p,ref][0]!= 0):
                 n13=n13+1
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHUV14'):
          
             if (t[p,ref][0]!= 0):
                 n14=n14+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHUV15'):
          
             if (t[p,ref][0]!= 0):
                 n15=n15+1

ave_c0_greub = (n09+n10+n11)/(n01+n02+n03+n04+n05+n06+n07+n08+n09+n10+n11+n12+n13+n14+n15)# = 0.2139083693780708 : The number of SNPs in strains of C0 represent 21% of the SNPs in all strains. 
ave_c1_greub = (n01+n02+n03+n04+n05+n06+n07+n08)/(n01+n02+n03+n04+n05+n06+n07+n08+n09+n10+n11+n12+n13+n14+n15)

            #core greub
callset = allel.read_vcf("thr_0_concat_merge_dna.fas_out.txt.vcf_noN.vcf")
#callset = allel.read_vcf("test.vcf")
t=allel.model.GenotypeArray(callset['calldata/GT'])

full = pd.DataFrame.from_records(allel.GenotypeArray(callset['calldata/GT']), columns = callset['samples'], index = callset['variants/ALT'])


##Isolate C0

n09=0
n10=0
n11=0
for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU09'):
          
             if (t[p,ref][0]!= 0):
                 n09=n09+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU10'):
          
             if (t[p,ref][0]!= 0):
                 n10=n10+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU11'):
          
             if (t[p,ref][0]!= 0):
                 n11=n11+1



n01=0
n02=0
n03=0
n04=0
n05=0
n06=0
n07=0
n08=0

for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU01'):
          
             if (t[p,ref][0]!= 0):
                 n01=n01+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU02'):
          
             if (t[p,ref][0]!= 0):
                 n02=n02+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU03'):
          
             if (t[p,ref][0]!= 0):
                 n03=n03+1
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU04'):
          
             if (t[p,ref][0]!= 0):
                 n04=n04+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU05'):
          
             if (t[p,ref][0]!= 0):
                 n05=n05+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU06'):
          
             if (t[p,ref][0]!= 0):
                 n06=n06+1
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU07'):
          
             if (t[p,ref][0]!= 0):
                 n07=n07+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU08'):
          
             if (t[p,ref][0]!= 0):
                 n08=n08+1

n12=0
n13=0
n14=0
n15=0

for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU12'):
          
             if (t[p,ref][0]!= 0):
                 n12=n12+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU13'):
          
             if (t[p,ref][0]!= 0):
                 n13=n13+1
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU14'):
          
             if (t[p,ref][0]!= 0):
                 n14=n14+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU15'):
          
             if (t[p,ref][0]!= 0):
                 n15=n15+1

ave_c0_0= (n09+n10+n11)/(n01+n02+n03+n04+n05+n06+n07+n08+n09+n10+n11+n12+n13+n14+n15)# = 0.2139083693780708 : The number of SNPs in strains of C0 represent 21% of the SNPs in all strains. 
ave_c1_0 = (n01+n02+n03+n04+n05+n06+n07+n08)/(n01+n02+n03+n04+n05+n06+n07+n08+n09+n10+n11+n12+n13+n14+n15)

            #concat
callset = allel.read_vcf("thr_20_concat_merge_dna.fas_out.txt.vcf_noN.vcf")
#callset = allel.read_vcf("test.vcf")
t=allel.model.GenotypeArray(callset['calldata/GT'])

full = pd.DataFrame.from_records(allel.GenotypeArray(callset['calldata/GT']), columns = callset['samples'], index = callset['variants/ALT'])


##Isolate C0

n09=0
n10=0
n11=0
for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU09'):
          
             if (t[p,ref][0]!= 0):
                 n09=n09+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU10'):
          
             if (t[p,ref][0]!= 0):
                 n10=n10+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU11'):
          
             if (t[p,ref][0]!= 0):
                 n11=n11+1
                 



n01=0
n02=0
n03=0
n04=0
n05=0
n06=0
n07=0
n08=0

for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU01'):
          
             if (t[p,ref][0]!= 0):
                 n01=n01+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU02'):
          
             if (t[p,ref][0]!= 0):
                 n02=n02+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU03'):
          
             if (t[p,ref][0]!= 0):
                 n03=n03+1
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU04'):
          
             if (t[p,ref][0]!= 0):
                 n04=n04+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU05'):
          
             if (t[p,ref][0]!= 0):
                 n05=n05+1
                 
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU06'):
          
             if (t[p,ref][0]!= 0):
                 n06=n06+1
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU07'):
          
             if (t[p,ref][0]!= 0):
                 n07=n07+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU08'):
          
             if (t[p,ref][0]!= 0):
                 n08=n08+1
                 

n12=0
n13=0
n14=0
n15=0

for ref in range(0,t.n_samples):
    
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU12'):
          
             if (t[p,ref][0]!= 0):
                 n12=n12+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU13'):
          
             if (t[p,ref][0]!= 0):
                 n13=n13+1
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU14'):
          
             if (t[p,ref][0]!= 0):
                 n14=n14+1
             
    for p in range(0,t.n_variants):
         if (callset['samples'][ref] == 'CHU15'):
          
             if (t[p,ref][0]!= 0):
                 n15=n15+1

###for this concat genome, we divide the number of SNPs for strains in C0 by the summe of the number of SNPs of all the strains. 
                 
ave_c0_20= (n09+n10+n11)/(n01+n02+n03+n04+n05+n06+n07+n08+n09+n10+n11+n12+n13+n14+n15)# = 0.2139083693780708 : The number of SNPs in strains of C0 represent 21% of the SNPs in all strains. 
#This does not tell us if some SNPs are the same, just that the number of SNPs 
ave_c1_20 = (n01+n02+n03+n04+n05+n06+n07+n08)/(n01+n02+n03+n04+n05+n06+n07+n08+n09+n10+n11+n12+n13+n14+n15)



ave_c1_core/ave_c1_full



###Count number of positions in common in C0 and C1 compared to the number of positions

import os
import allel
import vcf
import numpy as np
import pandas as pd


path = "C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/snippy_comparison_raw_reads_MW2/full_vcf"
os.chdir(path)


callset = allel.read_vcf("core_snippy.vcf")
t=allel.model.GenotypeArray(callset['calldata/GT'])


###Remove each time a snp is detected for a N, and replace the 1 value by a 0 -> N does not count for a snp anymore
C0_core=0
C1_core=0
C_comon_core=0
for p in range(0,t.n_variants):
    if (callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][2][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][3][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][4][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][5][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][6][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][7][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][8][0] and callset['calldata/GT'][p][1][0]!=callset['calldata/GT'][p][9][0] and callset['calldata/GT'][p][1][0]!=callset['calldata/GT'][p][10][0] and callset['calldata/GT'][p][1][0]!=callset['calldata/GT'][p][11][0]):
        C1_core=C1_core+1
    if (callset['calldata/GT'][p][9][0]==callset['calldata/GT'][p][10][0] and callset['calldata/GT'][p][9][0]==callset['calldata/GT'][p][11][0] and callset['calldata/GT'][p][9][0]!=callset['calldata/GT'][p][1][0] and callset['calldata/GT'][p][9][0]!=callset['calldata/GT'][p][2][0] and callset['calldata/GT'][p][9][0]!=callset['calldata/GT'][p][3][0] and callset['calldata/GT'][p][9][0]!=callset['calldata/GT'][p][4][0] and callset['calldata/GT'][p][9][0]!=callset['calldata/GT'][p][5][0] and callset['calldata/GT'][p][9][0]!=callset['calldata/GT'][p][6][0] and callset['calldata/GT'][p][9][0]!=callset['calldata/GT'][p][7][0] and callset['calldata/GT'][p][9][0]!=callset['calldata/GT'][p][8][0]):       
        C0_core=C0_core+1
    #if (callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][2][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][3][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][4][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][5][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][6][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][7][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][8][0] and callset['calldata/GT'][p][9][0]==callset['calldata/GT'][p][10][0] and callset['calldata/GT'][p][9][0]==callset['calldata/GT'][p][11][0]):
    #    C_comon_core=C_comon_core+1

nr_pos_core=t.n_variants


path = "C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/snippy_comparison_raw_reads_MW2/R2T_pipeline/"
os.chdir(path)


callset = allel.read_vcf("core.vcf")
t=allel.model.GenotypeArray(callset['calldata/GT'])


C0_concat=0
C1_concat=0
C_comon_concat=0
for p in range(0,t.n_variants):
    #if (callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][2][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][3][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][4][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][5][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][6][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][7][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][8][0]):
     #   C1_concat=C1_concat+1
    #if (callset['calldata/GT'][p][9][0]==callset['calldata/GT'][p][10][0] and callset['calldata/GT'][p][9][0]==callset['calldata/GT'][p][11][0]):       
     #   C0_concat=C0_concat+1
    #if (callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][2][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][3][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][4][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][5][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][6][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][7][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][8][0] and callset['calldata/GT'][p][9][0]==callset['calldata/GT'][p][10][0] and callset['calldata/GT'][p][9][0]==callset['calldata/GT'][p][11][0]):
    #    C_comon_concat=C_comon_core+1
    if (callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][2][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][3][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][4][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][5][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][6][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][7][0] and callset['calldata/GT'][p][1][0]==callset['calldata/GT'][p][8][0] and callset['calldata/GT'][p][1][0]!=callset['calldata/GT'][p][9][0] and callset['calldata/GT'][p][1][0]!=callset['calldata/GT'][p][10][0] and callset['calldata/GT'][p][1][0]!=callset['calldata/GT'][p][11][0]):
        C1_concat=C1_concat+1
    if (callset['calldata/GT'][p][9][0]==callset['calldata/GT'][p][10][0] and callset['calldata/GT'][p][9][0]==callset['calldata/GT'][p][11][0] and callset['calldata/GT'][p][9][0]!=callset['calldata/GT'][p][1][0] and callset['calldata/GT'][p][9][0]!=callset['calldata/GT'][p][2][0] and callset['calldata/GT'][p][9][0]!=callset['calldata/GT'][p][3][0] and callset['calldata/GT'][p][9][0]!=callset['calldata/GT'][p][4][0] and callset['calldata/GT'][p][9][0]!=callset['calldata/GT'][p][5][0] and callset['calldata/GT'][p][9][0]!=callset['calldata/GT'][p][6][0] and callset['calldata/GT'][p][9][0]!=callset['calldata/GT'][p][7][0] and callset['calldata/GT'][p][9][0]!=callset['calldata/GT'][p][8][0]):       
        C0_concat=C0_concat+1

nr_pos_concat=t.n_variants

