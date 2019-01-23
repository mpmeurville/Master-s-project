#Draw boxplots for SNPs counts. 

setwd('C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/SNP_comp_snippy/clean_core/ref_MW2')
G0_MW2_clean=read.csv('result_clean_core_G0_Mw2.csv', row.names=1)
G1_MW2_clean=read.csv('result_clean_core_G1_Mw2.csv', row.names=1)


setwd('C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/SNP_comp_snippy/clean_core/ref_N315')
G0_N315_clean=read.csv('result_clean_core_G0_N315.csv', row.names=1)
G1_N315_clean=read.csv('result_clean_core_G1_N315.csv', row.names=1)



setwd('C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/SNP_comp_snippy/cross_ref_core/ref_MW2')
G0_MW2_cross=read.csv('result_cross_ref_core_G0_Mw2.csv', row.names=1)
G1_MW2_cross=read.csv('result_cross_ref_core_G1_Mw2.csv', row.names=1)

setwd('C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/SNP_comp_snippy/cross_ref_core/ref_N315')
G0_N315_cross=read.csv('result_cross_ref_core_G0_N315.csv', row.names=1)
G1_N315_cross=read.csv('result_cross_ref_core_G1_N315.csv', row.names=1)



setwd('C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/SNP_comp_snippy/pipeline_greub')
G0_MW2_greub=read.csv('result_pipeline_greub_G0_MW2.csv', row.names=1)
G1_MW2_greub=read.csv('result_pipeline_greub_G1_MW2.csv', row.names=1)

G0_N315_greub=read.csv('result_pipeline_greub_G0_N315.csv', row.names=1)
G1_N315_greub=read.csv('result_pipeline_greub_G1_N315.csv', row.names=1)



setwd('C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/SNP_comp_snippy/raw_core/ref_MW2')
G0_MW2_raw=read.csv('result_raw_core_G0_Mw2.csv', row.names=1)
G1_MW2_raw=read.csv('result_raw_core_G1_Mw2.csv', row.names=1)

setwd('C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/SNP_comp_snippy/raw_core/ref_N315')
G0_N315_raw=read.csv('result_raw_core_G0_N315.csv', row.names=1)
G1_N315_raw=read.csv('result_raw_core_G1_N315.csv', row.names=1)

  


snp_G0=list(G0_MW2_clean, G0_MW2_cross, G0_MW2_greub, G0_MW2_raw, G0_N315_clean, G0_N315_cross, G0_N315_greub, G0_N315_raw)
snp_G1=list(G1_MW2_clean, G1_MW2_cross, G1_MW2_greub, G1_MW2_raw, G1_N315_clean, G1_N315_cross, G1_N315_greub, G1_N315_raw)


# for (t in 1:8)
# {
#   print(snp_G0[[t]])
#   snp_G0[[t]]=snp_G0[[t]][-nrow(snp_G0[[t]])]
#   #snp_G0[[1]]=snp_G0[[1]][-nrow(snp_G0[[1]])]
# }
# 


### Plots heatmaps for only the strains within a cluster. No ref included. To have dendrograms (clusters tree) remove Colv and Rowv

library(ggplot2)
#install.packages("gplots")
library(gplots)
library(RColorBrewer)

snp_G0_names=list('G0_MW2_clean', 'G0_MW2_cross', 'G0_MW2_greub', 'G0_MW2_raw', 'G0_N315_clean', 'G0_N315_cross', 'G0_N315_greub', 'G0_N315_raw')
snp_G1_names=list('G1_MW2_clean', 'G1_MW2_cross', 'G1_MW2_greub', 'G1_MW2_raw', 'G1_N315_clean', 'G1_N315_cross', 'G1_N315_greub', 'G1_N315_raw')

setwd('C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/SNP_comp_snippy/heatmaps/single_SNP_no_ref')

for (t in 1:length(snp_G1)){
  
  title=snp_G1_names[t]
  png(filename= paste0(snp_G1_names[t], '.png'),width=900, height=800)
  heatmap.2(as.matrix(snp_G1[[t]][-nrow(snp_G1[[t]]), -ncol(snp_G1[[t]])]),col=brewer.pal(9, "Purples"), trace = 'none', margins = c(10,14), main = snp_G1_names[t], Rowv = F, Colv = F)#, scale = "column", symm = TRUE, xlab='Clean', ylab='Raw', key = TRUE)

  dev.off ();
}

for (t in 1:length(snp_G0)){
  
  title=snp_G0_names[t]
  png(filename= paste0(snp_G0_names[t], '.png'),width=900, height=800)
  heatmap.2(as.matrix(snp_G0[[t]][-nrow(snp_G0[[t]]), -ncol(snp_G0[[t]])]), col=brewer.pal(9, "Purples"), trace = 'none', margins = c(10,14), main = snp_G0_names[t], Rowv = F, Colv = F)#, scale = "column", symm = TRUE, xlab='Clean', ylab='Raw', key = TRUE)
  
  dev.off ();
}


### Plots heatmaps for the strains within a cluster. Ref included

setwd('C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/SNP_comp_snippy/heatmaps/single_SNP_ref')

for (t in 1:length(snp_G1)){
  
  title=snp_G1_names[t]
  png(filename= paste0(snp_G1_names[t], '.png'),width=900, height=800)
  heatmap.2(as.matrix(snp_G1[[t]]), col=brewer.pal(9, "Purples"), trace = 'none', margins = c(10,14), main = snp_G1_names[t], Rowv = F, Colv = F)#, scale = "column", symm = TRUE, xlab='Clean', ylab='Raw', key = TRUE)
  
  dev.off ();
}

for (t in 1:length(snp_G0)){
  
  title=snp_G0_names[t]
  png(filename= paste0(snp_G0_names[t], '.png'),width=900, height=800)
  heatmap.2(as.matrix(snp_G0[[t]]), col=brewer.pal(9, "Purples"), trace = 'none', margins = c(10,14), main = snp_G0_names[t], Rowv = F, Colv = F)#, scale = "column", symm = TRUE, xlab='Clean', ylab='Raw', key = TRUE)
  
  dev.off ();
}



G0_MW2_raw_clean=G0_MW2_clean - G0_MW2_raw
G0_MW2_raw_clean=G0_MW2_raw_clean[-nrow(G0_MW2_raw_clean), -ncol(G0_MW2_raw_clean)]

###Plot heatmaps on all refs, from clusters and not.

metrix=c('clean_core','cross_ref_core','raw_core','pipeline_greub')
references=c('ref_N315', 'ref_MW2')

  for (i in 1:4){
    for (j in 1:2){
  path=paste0('C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/SNP_comp_snippy/', metrix[i], '/' ,references[j],'/')
  print(path)
 #n=paste0('result_', metrix[i], '_fullStrains_.csv')
  #print(n)
  #print('result_clean_core_fullStrains_.csv')
  
  tab=read.csv(paste0(path,'result_', metrix[i], '__all_strains.csv'), row.names=1)
  title=paste('Full SNP', metrix[i], references[j])
  setwd('C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/SNP_comp_snippy/heatmaps/all_strains/')
  
    png(filename= paste0(metrix[i], '_', references[j],'.png'),width=900, height=800)
  heatmap.2(as.matrix(tab), col=brewer.pal(9, "Purples"), trace = 'none', margins = c(10,14), main = paste(metrix[i],references[j],'all strains'), Rowv = F, Colv = F)#, scale = "column", symm = TRUE, xlab='Clean', ylab='Raw', key = TRUE)
  
  dev.off ();
  
}}




