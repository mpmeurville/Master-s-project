
#Plot SNPs
setwd('C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/snp-sites_count/02_output/csv')
setwd("C:/Users/marie/Documents/PdM/Saureus/snp_count_snp-sites/05_raw_r2t_16/")
#install.packages("ggplot2")
#install.packages("reshape2")

library(gplots)
library("RColorBrewer")

par(oma=c(10,4,4,2))
clean=read.csv("concat_merge_dna_clean.fas_out.txt.vcf_noN.vcf.csv", sep="\t", row.names = 1)
raw=read.csv("concat_merge_dna_raw32.fas_out.txt.vcf_noN.vcf.csv", sep="\t", row.names = 1)
greub=read.csv("all_greub.fas_out.txt.vcf_noN.vcf.csv", sep="\t", row.names=1)
further=read.csv("concat_merge_dna_further_CHU_STAHY.vcf_noN.vcf.csv", sep="\t", row.names = 1)
cross=read.csv("raw_r2t_16.csv", sep="\t", row.names = 1)

t0=read.csv("thr_0_concat_merge_dna.fas.vcf.csv", sep="\t", row.names = 1)
t1=read.csv("thr_1_concat_merge_dna.fas.vcf.csv", sep="\t", row.names = 1)
t2=read.csv("thr_2_concat_merge_dna.fas.vcf.csv", sep="\t", row.names = 1)
t3=read.csv("thr_3_concat_merge_dna.fas.vcf.csv", sep="\t", row.names = 1)
t5=read.csv("thr_5_concat_merge_dna.fas.vcf.csv", sep="\t", row.names = 1)
t10=read.csv("thr_10_concat_merge_dna.fas.vcf.csv", sep="\t", row.names = 1)
t20=read.csv("thr_20_concat_merge_dna.fas.vcf.csv", sep="\t", row.names = 1)
t25=read.csv("thr_25_concat_merge_dna.fas.vcf.csv", sep="\t", row.names = 1)
t30=read.csv("thr_30_concat_merge_dna.fas.vcf.csv", sep="\t", row.names = 1)
t50=read.csv("thr_50_concat_merge_dna.fas.vcf.csv", sep="\t", row.names = 1)
t70=read.csv("thr_70_concat_merge_dna.fas.vcf.csv", sep="\t", row.names = 1)
t100=read.csv("thr_100_concat_merge_dna.fas.vcf.csv", sep="\t", row.names = 1)
t200=read.csv("thr_200_concat_merge_dna.fas.vcf.csv", sep="\t", row.names = 1)

clean=as.matrix(clean)
raw=as.matrix(raw)
greub=as.matrix(greub)
further=as.matrix(further)
cross=as.matrix(cross)

t0=as.matrix(t0)
t1=as.matrix(t1)
t2=as.matrix(t2)
t3=as.matrix(t3)
t5=as.matrix(t5)
t10=as.matrix(t10)
t20=as.matrix(t20)
t25=as.matrix(t25)
t30=as.matrix(t30)
t50=as.matrix(t50)
t70=as.matrix(t70)
t100=as.matrix(t100)
t200=as.matrix(t200)

col.order <- c("STAAW","CHU01","CHU02","CHU03","CHU04","CHU05","CHU06","CHU07","CHU08","CHU09","CHU10","CHU11","CHU12","CHU13","CHU14","CHU15")
cross=cross[,col.order]
cross=cross[col.order,]

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



colnames(greub)=c("MW2","CHU01","CHU02","CHU03","CHU04","CHU05","CHU06","CHU07","CHU08","CHU09","CHU10","CHU11","CHU12","CHU13","CHU14","CHU15")
row.names(greub)=c("MW2","CHU01","CHU02","CHU03","CHU04","CHU05","CHU06","CHU07","CHU08","CHU09","CHU10","CHU11","CHU12","CHU13","CHU14","CHU15")

jpeg('snp_count_heatmap_th0.jpg',width = 1000, height = 800)
heatmap.2(t0,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=t0, Rowv = NA, main = "Number of SNPs between strains for threshold 0",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_th1.jpg',width = 1000, height = 800)
heatmap.2(t1,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=t1, Rowv = NA, main = "Number of SNPs between strains for threshold 1",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_greub.jpg',width = 1000, height = 800)
heatmap.2(greub,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=greub, Rowv = NA, main = "Number of SNPs between strains for Greub's pipeline",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_th2.jpg',width = 1000, height = 800)
heatmap.2(t2,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=t2, Rowv = NA, main = "Number of SNPs between strains for threshold 2",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_th3.jpg',width = 1000, height = 800)
heatmap.2(t3,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=t3, Rowv = NA, main = "Number of SNPs between strains for threshold 3",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_th5.jpg',width = 1000, height = 800)
heatmap.2(t5,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=t5, Rowv = NA, main = "Number of SNPs between strains for threshold 5",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_th10.jpg',width = 1000, height = 800)
heatmap.2(t10,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=t10, Rowv = NA, main = "Number of SNPs between strains for threshold 10",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_th15.jpg',width = 1000, height = 800)
heatmap.2(t15,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=t15, Rowv = NA, main = "Number of SNPs between strains for threshold 15",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_th20.jpg',width = 1000, height = 800)
heatmap.2(t20,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=t20, Rowv = NA, main = "Number of SNPs between strains for threshold 20",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_th25.jpg',width = 1000, height = 800)
heatmap.2(t25,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=t25, Rowv = NA, main = "Number of SNPs between strains for threshold 25",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_clean.jpg',width = 1000, height = 800)
heatmap.2(clean,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=clean, Rowv = NA, main = "Number of SNPs between strains for trimmed reads + R2T",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_raw.jpg',width = 1000, height = 800)
heatmap.2(raw,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=raw, Rowv = NA, main = "Number of SNPs between strains for raw reads + R2T (32 references)",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_further.jpg',width = 1000, height = 800)
heatmap.2(further,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=further, Rowv = NA, main = "Number of SNPs between strains for raw reads + R2T (7 references)",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

c1_cross=cross[,2:9]
c1_cross=c1_cross[2:9,]

c1_t0= t0[,2:9]
c1_t0=c1_t0[2:9,]

c1_t1= t1[,2:9]
c1_t1=c1_t1[2:9,]

c1_t2= t2[,2:9]
c1_t2=c1_t2[2:9,]

c1_t3= t3[,2:9]
c1_t3=c1_t3[2:9,]

c1_t5= t5[,2:9]
c1_t5=c1_t5[2:9,]

c1_t10= t10[,2:9]
c1_t10=c1_t10[2:9,]

c1_t20= t20[,2:9]
c1_t20=c1_t20[2:9,]

c1_t25= t25[,2:9]
c1_t25=c1_t25[2:9,]

c1_t30= t30[,2:9]
c1_t30=c1_t30[2:9,]

c1_t50= t50[,2:9]
c1_t50=c1_t50[2:9,]

c1_t70= t70[,2:9]
c1_t70=c1_t70[2:9,]

c1_t100= t100[,2:9]
c1_t100=c1_t100[2:9,]

c1_t200= t200[,2:9]
c1_t200=c1_t200[2:9,]


c1_greub= greub[,2:9]
c1_greub=c1_greub[2:9,]

c1_raw= raw[,2:9]
c1_raw=c1_raw[2:9,]

c1_clean= clean[,2:9]
c1_clean=c1_clean[2:9,]

c1_further= further[,1:8]
c1_further=c1_further[2:9,]



jpeg('snp_count_heatmap_raw_C1.jpg',width =1000, height = 700)
heatmap.2(c1_raw,dendrogram = "none",key=FALSE, margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_raw, Rowv = NA, main = "Number of SNPs between strains in C1 for raw reads (32 references)",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_greub_C1.jpg',width =1000, height = 700)
heatmap.2(c1_greub,dendrogram = "none", key=FALSE,margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_greub, Rowv = NA, main = "Number of SNPs between strains in C1 for Greub's pipeline",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_clean_C1.jpg',width =1000, height = 700)
heatmap.2(c1_clean,dendrogram = "none", key=FALSE,margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_clean, Rowv = NA, main = "Number of SNPs between strains in C1 for clean reads",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_further_C1.jpg',width = 1000, height = 700)
heatmap.2(c1_further,dendrogram = "none", key=FALSE,margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_further, Rowv = NA, main = "Number of SNPs between strains in C1 for raw reads + R2T (7 references)",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_th0_C1.jpg',width =1000, height = 700)
heatmap.2(c1_t0,dendrogram = "none", key=FALSE,margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_t0, Rowv = NA, main = "Number of SNPs between strains in C1 for threshold 0",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th1_C1.jpg',width =1000, height = 700)
heatmap.2(c1_t1,dendrogram = "none", key=FALSE,margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_t1, Rowv = NA, main = "Number of SNPs between strains in C1 for threshold 1",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th2_C1.jpg',width =1000, height = 700)
heatmap.2(c1_t2,dendrogram = "none", key=FALSE,margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_t2, Rowv = NA, main = "Number of SNPs between strains in C1 for threshold 2",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th3_C1.jpg',width =1000, height = 700)
heatmap.2(c1_t3,dendrogram = "none", key=FALSE,margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_t3, Rowv = NA, main = "Number of SNPs between strains in C1 for threshold 3",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th5_C1.jpg',width = 1000, height = 700)
heatmap.2(c1_t5,dendrogram = "none", key=FALSE,margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_t5, Rowv = NA, main = "Number of SNPs between strains in C1 for threshold 5",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th10_C1.jpg',width = 1000, height = 700)
heatmap.2(c1_t10,dendrogram = "none", key=FALSE,margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_t10, Rowv = NA, main = "Number of SNPs between strains in C1 for threshold 10",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th20_C1.jpg',width = 1000, height = 700)
  heatmap.2(c1_t20,dendrogram = "none", key=FALSE,margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_t20, Rowv = NA, main = "Number of SNPs between strains in C1 for threshold 20",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th25_C1.jpg',width = 1000, height = 700)
heatmap.2(c1_t25,dendrogram = "none", key=FALSE,margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_t25, Rowv = NA, main = "Number of SNPs between strains in C1 for threshold 25",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th30_C1.jpg',width = 1000, height = 700)
heatmap.2(c1_t30,dendrogram = "none", key=FALSE,margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_t30, Rowv = NA, main = "Number of SNPs between strains in C1 for threshold 30",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th50_C1.jpg',width = 1000, height = 700)
heatmap.2(c1_t50,dendrogram = "none", key=FALSE,margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_t50, Rowv = NA, main = "Number of SNPs between strains in C1 for threshold 50",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th70_C1.jpg',width = 1000, height = 700)
heatmap.2(c1_t70,dendrogram = "none", key=FALSE,margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_t70, Rowv = NA, main = "Number of SNPs between strains in C1 for threshold 70",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th100_C1.jpg',width = 1000, height = 700)
heatmap.2(c1_t100,dendrogram = "none", key=FALSE,margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_t100, Rowv = NA, main = "Number of SNPs between strains in C1 for threshold 100",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th200_C1.jpg',width = 1000, height = 700)
heatmap.2(c1_t200,dendrogram = "none", key=FALSE,margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_t200, Rowv = NA, main = "Number of SNPs between strains in C1 for threshold 200",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_cross.jpg',width = 1000, height = 700)
heatmap.2(c1_cross,dendrogram = "none", key=FALSE,margin=c(10,10),cexRow=2,cexCol=2, Colv=NA,cellnote=c1_cross, Rowv = NA, main = "Number of SNPs between strains in C1 for cross",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

c0_cross=cross[,10:12]
c0_cross=c0_cross[10:12,]

c0_t0= t0[,10:12]
c0_t0=c0_t0[10:12,]

c0_t1= t1[,10:12]
c0_t1=c0_t1[10:12,]

c0_t2= t2[,10:12]
c0_t2=c0_t2[10:12,]

c0_t3= t3[,10:12]
c0_t3=c0_t3[10:12,]

c0_t5= t5[,10:12]
c0_t5=c0_t5[10:12,]

c0_t10= t10[,10:12]
c0_t10=c0_t10[10:12,]

c0_t20= t20[,10:12]
c0_t20=c0_t20[10:12,]

c0_t25= t25[,10:12]
c0_t25=c0_t25[10:12,]

c0_t30= t30[,10:12]
c0_t30=c0_t30[10:12,]

c0_t50= t50[,10:12]
c0_t50=c0_t50[10:12,]

c0_t70= t70[,10:12]
c0_t70=c0_t70[10:12,]

c0_t100= t100[,10:12]
c0_t100=c0_t100[10:12,]

c0_t200= t200[,10:12]
c0_t200=c0_t200[10:12,]



c0_greub= greub[,10:12]
c0_greub=c0_greub[10:12,]

c0_raw= raw[,10:12]
c0_raw=c0_raw[10:12,]

c0_clean= clean[,10:12]
c0_clean=c0_clean[10:12,]

c0_further= further[,10:12]
c0_further=c0_further[11:13,]


jpeg('snp_count_heatmap_cross_C0.jpg',width = 1000, height = 800)
heatmap.2(c0_cross,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2,margins = c(9,9),  Colv=NA,cellnote=c0_cross, notecex =  2, notecol = "black",  Rowv = NA, main = "Number of SNPs between strains in c0 for cross 16 ref",col=brewer.pal(9,"YlOrRd"),  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_raw_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_raw,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2,margins = c(9,9),  Colv=NA,cellnote=c0_raw, notecex =  2, notecol = "black",  Rowv = NA, main = "Number of SNPs between strains in c0 for raw reads (32 references)",col=brewer.pal(9,"YlOrRd"),  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_greub_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_greub,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=c0_greub, margins = c(9,9), Rowv = NA, main = "Number of SNPs between strains in c0 for Greub's pipeline",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_clean_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_clean,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=c0_clean, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in c0 for clean reads",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_further_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_further,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=c0_further, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in c0 for raw reads + R2T (7 references)",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()


jpeg('snp_count_heatmap_th0_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_t0,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=c0_t0, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in c0 for threshold 0",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th1_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_t1,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=c0_t1, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in c0 for threshold 1",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th2_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_t2,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=c0_t2, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in c0 for threshold 2",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th3_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_t3,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=c0_t3, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in c0 for threshold 3",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th5_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_t5,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=c0_t5, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in c0 for threshold 5",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th10_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_t10,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=c0_t10, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in c0 for threshold 10",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th20_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_t20,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=c0_t20, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in c0 for threshold 20",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th25_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_t25,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=c0_t25, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in c0 for threshold 25",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th30_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_t30,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=c0_t25, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in c0 for threshold 30",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th50_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_t50,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=c0_t25, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in c0 for threshold 50",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th70_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_t70,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=c0_t25, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in c0 for threshold 70",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th100_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_t100,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=c0_t25, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in c0 for threshold 100",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th200_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_t200,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=c0_t25, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in c0 for threshold 200",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()



no_ref_t0= t0[,2:16]
no_ref_t0=no_ref_t0[2:16,]

no_ref_t1= t1[,2:16]
no_ref_t1=no_ref_t1[2:16,]

no_ref_t2= t2[,2:16]
no_ref_t2=no_ref_t2[2:16,]

no_ref_t3= t3[,2:16]
no_ref_t3=no_ref_t3[2:16,]

no_ref_t5= t5[,2:16]
no_ref_t5=no_ref_t5[2:16,]

no_ref_t10= t10[,2:16]
no_ref_t10=no_ref_t10[2:16,]

no_ref_t15= t15[,2:16]
no_ref_t15=no_ref_t15[2:16,]

no_ref_t20= t20[,2:16]
no_ref_t20=no_ref_t20[2:16,]

no_ref_t25= t25[,2:16]
no_ref_t25=no_ref_t25[2:16,]

no_ref_greub= greub[,2:16]
no_ref_greub=no_ref_greub[2:16,]

no_ref_raw= raw[,2:16]
no_ref_raw=no_ref_raw[2:16,]

no_ref_clean= clean[,2:16]
no_ref_clean=no_ref_clean[2:16,]

no_ref_further= further[,1:15]
no_ref_further=no_ref_further[2:16,]

jpeg('snp_count_heatmap_raw_no_ref.jpg',width = 1000, height = 800)
heatmap.2(no_ref_raw,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, margins = c(9,9),  Colv=NA,cellnote=no_ref_raw, Rowv = NA, main = "Number of SNPs between strains in no_ref for raw reads (32 references)",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_greub_no_ref.jpg',width = 1000, height = 800)
heatmap.2(no_ref_greub,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=no_ref_greub, margins = c(9,9), Rowv = NA, main = "Number of SNPs between strains in no_ref for Greub's pipeline",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_clean_no_ref.jpg',width = 1000, height = 800)
heatmap.2(no_ref_clean,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=no_ref_clean, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in no_ref for clean reads",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th0_no_ref.jpg',width = 1000, height = 800)
heatmap.2(no_ref_t0,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=no_ref_t0, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in no_ref for threshold 0",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th1_no_ref.jpg',width = 1000, height = 800)
heatmap.2(no_ref_t1,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=no_ref_t1, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in no_ref for threshold 1",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th2_no_ref.jpg',width = 1000, height = 800)
heatmap.2(no_ref_t2,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=no_ref_t2, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in no_ref for threshold 2",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th3_no_ref.jpg',width = 1000, height = 800)
heatmap.2(no_ref_t3,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=no_ref_t3, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in no_ref for threshold 3",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th5_no_ref.jpg',width = 1000, height = 800)
heatmap.2(no_ref_t5,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=no_ref_t5, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in no_ref for threshold 5",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th10_no_ref.jpg',width = 1000, height = 800)
heatmap.2(no_ref_t10,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=no_ref_t10, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in no_ref for threshold 10",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th15_no_ref.jpg',width = 1000, height = 800)
heatmap.2(no_ref_t15,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=no_ref_t15, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in no_ref for threshold 15",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th20_no_ref.jpg',width = 1000, height = 800)
heatmap.2(no_ref_t20,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=no_ref_t20, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in no_ref for threshold 20",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_th25_no_ref.jpg',width = 1000, height = 800)
heatmap.2(no_ref_t25,dendrogram = "none", key=FALSE,cexRow=2,cexCol=2, Colv=NA,cellnote=no_ref_t25, Rowv = NA,margins = c(9,9), main = "Number of SNPs between strains in no_ref for threshold 25",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()
jpeg('snp_count_heatmap_further_no_ref.jpg',width = 1000, height = 800)
heatmap.2(no_ref_further,dendrogram = "none", key=FALSE,cexCol=2,margins = c(9,9),  Colv=NA,cellnote=no_ref_further, Rowv = NA, main = "Number of SNPs between strains in no_ref for raw reads +R2T (7 references)",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()



# 
# ###Plot snp count between r2t greb OG pos
# 
# setwd("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/check_snp_number")
# 
# tab=read.csv("04_output_greub_r2t_pos.vcf.csv", header = T, sep="\t",row.names = 1)
# 
# 
# title="SNP comparison between greub and R2T for 1 part of OG66174 for THR_0 analysis "
# png(filename= paste0('SNP_count_pos_greub_r2t.png'),width=900, height=800)
# heatmap.2(as.matrix(tab),dendrogram = "none", key=FALSE,cexRow=2,cexCol=2,col=brewer.pal(9, "Purples"),cellnote=tab,Colv=NA, Rowv = NA,margins = c(14,14), main = title)#, scale = "column", symm = TRUE, xlab='Clean', ylab='Raw', key = TRUE)
# dev.off()

###Plot number of SNPs between R2T and Greub (snippy on full ref and ocncat OGs)

#Plot SNPs
setwd('C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/snippy_comparison_raw_reads_MW2/full_vcf')

#install.packages("ggplot2")
#install.packages("reshape2")

library(gplots)
library("RColorBrewer")

par(oma=c(10,4,4,2))
full=read.csv("snp_counts_snippy_greub_full.csv", sep="\t", row.names = 1)
full=as.matrix(full)
concat=read.csv("snp_counts_snippy_r2t_concat.csv", sep="\t", row.names = 1)
concat=as.matrix(concat)
core=read.csv("core_snippy.csv", sep="\t", row.names = 1)
core=as.matrix(core)


c0_full= full[,9:11]
c0_full=c0_full[9:11,]

c0_concat= concat[,9:11]
c0_concat=c0_concat[9:11,]

c0_core=core[,9:11]
c0_core=c0_core[9:11,]


jpeg('snp_count_heatmap_snippy_greub_full_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_full,dendrogram = "none", key=FALSE,cexCol=2,margins = c(9,9),  Colv=NA,cellnote=c0_full, Rowv = NA, main = "Number of SNPs between strains between strains when \nreads are mapped on full NCBI MW2 genome, for C0",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_r2t_concat_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_concat,dendrogram = "none", key=FALSE,cexCol=2, cexRow = 2 ,margins = c(15,15),  Colv=NA,cellnote=c0_concat, Rowv = NA, main = "Number of SNPs between strains between strains when \nreads are mapped on concatenated OGs computed by OMA, for C0",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_greub_core_c0.jpg',width = 1000, height = 800)
heatmap.2(c0_core,dendrogram = "none", key=FALSE,cexCol=2, cexRow = 2 ,margins = c(15,15),  Colv=NA,cellnote=c0_core, Rowv = NA, main = "Number of SNPs between strains between strains when \nreads are mapped on core genome of MW2, for C1",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()


c1_full= full[,1:8]
c1_full=c1_full[1:8,]

c1_concat= concat[,1:8]
c1_concat=c1_concat[1:8,]

c1_core= core[,1:8]
c1_core=c1_core[1:8,]

jpeg('snp_count_heatmap_snippy_greub_full_c1.jpg',width = 1000, height = 800)
heatmap.2(c1_full,dendrogram = "none", key=FALSE,cexCol=2,  cexRow = 2 ,margins = c(15,15),  Colv=NA,cellnote=c1_full, Rowv = NA, main = "Number of SNPs between strains between strains when \nreads are mapped on full NCBI MW2 genome, for C1",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_r2t_concat_c1.jpg',width = 1000, height = 800)
heatmap.2(c1_concat,dendrogram = "none", key=FALSE,cexCol=2, cexRow = 2 ,margins = c(15,15),  Colv=NA,cellnote=c1_concat, Rowv = NA, main = "Number of SNPs between strains between strains when \nreads are mapped on concatenated OGs computed by OMA, for C1",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

jpeg('snp_count_heatmap_snippy_greub_core_c1.jpg',width = 1000, height = 800)
heatmap.2(c1_core,dendrogram = "none", key=FALSE,cexCol=2, cexRow = 2 ,margins = c(15,15),  Colv=NA,cellnote=c1_core, Rowv = NA, main = "Number of SNPs between strains between strains when \nreads are mapped on core genome of MW2, for C1",col=brewer.pal(9,"YlOrRd"),notecex =  2, notecol = "black",  tracecol=NA)
dev.off()

