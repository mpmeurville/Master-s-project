setwd("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/snp-sites_count/02_output/csv/")

path="C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/snp-sites_count/02_output/csv/"

files <- list.files(path=path, pattern="*.csv", full.names=TRUE, recursive=FALSE)

t0=read.csv("thr_0_concat_merge_dna.fas.vcf.csv", sep="\t", row.names  =  1)
t1=read.csv("thr_1_concat_merge_dna.fas.vcf.csv", sep="\t", row.names  =  1)
t2=read.csv("thr_2_concat_merge_dna.fas.vcf.csv", sep="\t", row.names  =  1)
t3=read.csv("thr_3_concat_merge_dna.fas.vcf.csv", sep="\t", row.names  =  1)
t5=read.csv("thr_5_concat_merge_dna.fas.vcf.csv", sep="\t", row.names  =  1)
t10=read.csv("thr_10_concat_merge_dna.fas.vcf.csv", sep="\t", row.names  =  1)
t20=read.csv("thr_20_concat_merge_dna.fas.vcf.csv", sep="\t", row.names  =  1)
t25=read.csv("thr_25_concat_merge_dna.fas.vcf.csv", sep="\t", row.names  =  1)
t30=read.csv("thr_30_concat_merge_dna.fas.vcf.csv", sep="\t", row.names  =  1)
t50=read.csv("thr_50_concat_merge_dna.fas.vcf.csv", sep="\t", row.names  =  1)
t70=read.csv("thr_70_concat_merge_dna.fas.vcf.csv", sep="\t", row.names  =  1)
t100=read.csv("thr_100_concat_merge_dna.fas.vcf.csv", sep="\t", row.names  =  1)
t200=read.csv("thr_200_concat_merge_dna.fas.vcf.csv", sep="\t", row.names  =  1)



col.order <- c("STAAW","CHU01","CHU02","CHU03","CHU04","CHU05","CHU06","CHU07","CHU08","CHU09","CHU10","CHU11","CHU12","CHU13","CHU14","CHU15")


t0=t0[,col.order]
t0=t0[col.order,]

t1=t1[,col.order]
t1=t1[col.order,]

t2=t2[,col.order]
t2=t2[col.order,]

t3=t3[,col.order]
t3=t3[col.order,]

t5=t5[,col.order]
t5=t5[col.order,]

t10=t10[,col.order]
t10=t10[col.order,]

t20=t20[,col.order]
t20=t20[col.order,]

t25=t25[,col.order]
t25=t25[col.order,]

t30=t30[,col.order]
t30=t30[col.order,]

t50=t50[,col.order]
t50=t50[col.order,]

t70=t70[,col.order]
t70=t70[col.order,]

t100=t100[,col.order]
t100=t100[col.order,]


col.order <- c("STAAW","CHU01","CHU02","CHU03","CHU04","CHU05","CHU06","CHU07","CHU08","CHU09","CHU10","CHU11","CHU12","CHU13","CHU15")

t200=t200[,col.order]
t200=t200[col.order,]



### Select only the CHU 09 10 11 strains values. 

select_c0 <- function(table) {
  c0=table[,10:12]
  c0=c0[10:12,]
  
  return(c0)
}


t0_c0=select_c0(t0)
t1_c0=select_c0(t1)
t2_c0=select_c0(t2)
t3_c0=select_c0(t3)
t5_c0=select_c0(t5)
t10_c0=select_c0(t10)
t20_c0=select_c0(t20)
t25_c0=select_c0(t25)
t30_c0=select_c0(t30)
t50_c0=select_c0(t50)
t70_c0=select_c0(t70)
t100_c0=select_c0(t100)
t200_c0=select_c0(t200)

c0s=list(t0_c0,t1_c0,t2_c0,t3_c0,t5_c0,t10_c0,t20_c0,t25_c0,t30_c0, t50_c0, t70_c0, t100_c0, t200_c0)

###Build 3 tables containing the respectively CHU09 - 10, CHU09 - 11 and CHU10 - 11 distances, for every threshold. 



  t=c(" Minimal coverage \nthreshold = 0","Minimal coverage \nthreshold = 1","Minimal coverage \nthreshold = 2","Minimal coverage \nthreshold = 3","Minimal coverage \nthreshold = 5","Minimal coverage \nthreshold = 10","Minimal coverage \nthreshold = 20","Minimal coverage \nthreshold = 25","Minimal coverage \nthreshold = 30", "Minimal coverage \nthreshold = 50", "Minimal coverage \nthreshold = 70", "Minimal coverage \nthreshold = 100", "Minimal coverage \nthreshold = 200")
  count_0910=data.frame(matrix(nrow=1, ncol=13))
  colnames(count_0910)=t
  
  i=0
  for(ta in c0s){
  i=i+1


    count_0910[1,i]=ta[2,1]
  }
  
  
  
  count_0911=data.frame(matrix(nrow=1, ncol=13))
  colnames(count_0911)=t
  
  i=0
  for(ta in c0s){
    i=i+1
    
    
    count_0911[1,i]=ta[3,1]
  }
  
  
  
  count_1011=data.frame(matrix(nrow=1, ncol=13))
  colnames(count_1011)=t
  
  i=0
  for(ta in c0s){
    i=i+1
    
    
    count_1011[1,i]=ta[3,2]
  }
  
  
  
  library(ggplot2)
  library(stringr)
  library(RColorBrewer)
  
  par(mfrow=c(3,1))
  par(mar=c(8.7,4.1,1,2.1))
 barplot(as.matrix(count_0910), ylab  =  "SNP number", las=2, col = "slateblue", ylim=c(0, 1000), cex.names=1.3, cex.axis=1.2)
 par(mar=c(8.7,4.1,1,2.1))
 barplot(as.matrix(count_0911), ylab  =  "SNP number", las=2, col = "slateblue", ylim=c(0, 1000), cex.names=1.3, cex.axis=1.2)
 par(mar=c(8.7,4.1,1,2.1))
 barplot(as.matrix(count_1011), ylab  =  "SNP number", las=2, col = "slateblue", ylim=c(0, 1000), cex.names=1.3, cex.axis=1.2)
 
 
 
 
 
 
 
 
 
 
 
 
 