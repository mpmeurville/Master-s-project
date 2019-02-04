setwd("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/concat_merge_dna/MW2_CHUV_fasta/")


###Add count number of bases that are not Ns in a table
N=read.table("nbr_N.txt", colClasses = "integer")
ATCGN=read.table("nbr_all.txt",colClasses = "integer")
ATCG=read.table("nbr_all-N.txt",colClasses = "integer")

val_bases_non_N=data.frame(matrix(ncol=3, nrow=13))
rownames(val_bases_non_N)= c("thr_0", "thr_100", "thr_10", "thr_1", "thr_200", "thr_20", "thr_25", "thr_2", "thr_30", "thr_3", "thr_50", "thr_5", "thr_70")
colnames(val_bases_non_N)= c("chu09", "chu10", "chu11")


i=1
y=1

for (l in 1:39){
  print("l=")
  print(l)
  print("i=")
  print(i)
  print("y=")
  print(y)
  
  if(l%%3==1){
    y=1
    print("A")
  }
  
  if(l%%3==2){
      y=2
 
      }
    
  
  if(l%%3==0){
  y=3
  
}
  
      print("On a y=")
      print(y)
      
      val_bases_non_N[i,y]=ATCG[l,1]

      if(y==3){
       i= i+1
      }
 }

###Make an average of the number of bases that are non Ns, that will divide the number of SNPs found between pairise comp of 2 strains of C0

ratio=data.frame(matrix(ncol=3, nrow=13))  
rownames(ratio)= c("0", "100", "10", "1", "200", "20", "25", "2", "30", "3", "50", "5", "70")
colnames(ratio)= c("chu09-chu10", "chu09-chu11", "chu10-chu11")


for (l in 1:nrow(val_bases_non_N)){
  ratio[l,1]=(val_bases_non_N[l,1]+val_bases_non_N[l,2])/2
  ratio[l,2]=(val_bases_non_N[l,1]+val_bases_non_N[l,3])/2
  ratio[l,3]=(val_bases_non_N[l,2]+val_bases_non_N[l,3])/2
}


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


### Inegrer les valeurs du nombre total de bases, peut etre en renommant comme dans count_0910 les colonnes et en 
### mergeant par nom dde colonnes, puis juste plotter le nombre de SNPs / le nombre de bases. 


t=c(" Minimal coverage \nthreshold = 0","Minimal coverage \nthreshold = 1","Minimal coverage \nthreshold = 2","Minimal coverage \nthreshold = 3","Minimal coverage \nthreshold = 5","Minimal coverage \nthreshold = 10","Minimal coverage \nthreshold = 20","Minimal coverage \nthreshold = 25","Minimal coverage \nthreshold = 30","Minimal coverage \nthreshold = 50","Minimal coverage \nthreshold = 70","Minimal coverage \nthreshold = 100","Minimal coverage \nthreshold = 200")

test <- ratio[ order(as.numeric(row.names(ratio))), ]

ratio_t=t(ratio) #transposition of the df
colnames(ratio_t)=t
ratio_t=as.data.frame(ratio_t)

ratio_t=ratio_t[,c(" Minimal coverage \nthreshold = 0","Minimal coverage \nthreshold = 1","Minimal coverage \nthreshold = 2","Minimal coverage \nthreshold = 3","Minimal coverage \nthreshold = 5","Minimal coverage \nthreshold = 10","Minimal coverage \nthreshold = 20","Minimal coverage \nthreshold = 25","Minimal coverage \nthreshold = 30","Minimal coverage \nthreshold = 50","Minimal coverage \nthreshold = 70","Minimal coverage \nthreshold = 100","Minimal coverage \nthreshold = 200")]

  
  count_0910=data.frame(matrix(nrow=1, ncol=13))
  colnames(count_0910)=t
  
  
  i=0
  for(ta in c0s){
  i=i+1


    count_0910[1,i]=ta[2,1]
  }
  rownames(count_0910)= "SNP count"
  all_0910=rbind(ratio_t[1,], count_0910[, colnames(count_0910)])
  
  count_0911=data.frame(matrix(nrow=1, ncol=13))
  colnames(count_0911)=t
  
  i=0
  for(ta in c0s){
    i=i+1
    
    
    count_0911[1,i]=ta[3,1]
  }
  
  rownames(count_0911)= "SNP count"
  all_0911=rbind(ratio_t[2,], count_0911[, colnames(count_0911)])
  
  
  
  count_1011=data.frame(matrix(nrow=1, ncol=13))
  colnames(count_1011)=t
  
  i=0
  for(ta in c0s){
    i=i+1
    
    
    count_1011[1,i]=ta[3,2]
  }
  rownames(count_1011)= "SNP count"
  all_1011=rbind(ratio_t[3,], count_1011[, colnames(count_1011)])
  
  
  #Calculation of the SNP number per base
  
  for (column in 1:length(colnames(count_0910))){
    
    all_0910[3,column]=all_0910[2, column]/all_0910[1,column]
    
  }
  
  
  for (column in 1:length(colnames(count_0911))){
    
    all_0911[3,column]=all_0911[2, column]/all_0911[1,column]
    
  }
  
  for (column in 1:length(colnames(count_1011))){
    
    all_1011[3,column]=all_1011[2, column]/all_1011[1,column]
    
  }
  
  
  SNP_per_base_0910 = log(all_0910[3,])
  SNP_per_base_0911 = log(all_0911[3,])
  SNP_per_base_1011 = log(all_1011[3,])
  
  
  
  
  library(ggplot2)
  library(stringr)
  library(RColorBrewer)
  
  par(mfrow=c(3,1))
  par(mar=c(8.7,4.1,2.5,3))
 barplot(as.matrix(SNP_per_base_0910), ylab  =  "SNP number", las=2, col = "slateblue", ylim=c(0, 15), cex.names=1, cex.axis=1.2)
 par(mar=c(8.7,4.1,2.5,3))
 barplot(as.matrix(SNP_per_base_0911), ylab  =  "SNP number", las=2, col = "slateblue", ylim=c(0, 15), cex.names=1, cex.axis=1.2)
 par(mar=c(8.7,4.1,2.5,3))
 barplot(as.matrix(SNP_per_base_1011), ylab  =  "SNP number", las=2, col = "slateblue", ylim=c(0,15), cex.names=1, cex.axis=1.2)
 
 
 
 
 
 ### plot alignment size with gaps: 
 
 size = data.frame(c(2033748,
                     2033703,
                     2033694,
                     2033991,
                     2033172,
                     2033454,
                     2033352,
                     2033421,
                     2033352,
                     2034597,
                     2034102,
                     2032959))
size= cbind(c("001", "002", "003", "005", "010", "020", "025", "030", "050", "070", "100", "200"), size)
colnames(size)= c("Threshold", "Alignmentlength")


plot(size, type="l")
 


size$Threshold <- as.numeric(as.vector(size$Threshold))
ggplot(data=size, aes(x=size$Threshold, y=size$Alignmentlength)) +
  geom_line() + geom_point()+
  scale_color_brewer(palette="Paired")+
  theme_minimal()



###Plot of the number of bases of minimal cov threshold functions. 

setwd("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/concat_merge_dna/MW2_CHUV_fasta/")


ATCGN=read.table("nbr_all.txt",colClasses = "integer")
ATCG=read.table("nbr_all-N.txt",colClasses = "integer")
N=read.table("nbr_N.txt",colClasses = "integer")

length_alignment_noN=data.frame(matrix(ncol=3, nrow=13))
colnames(length_alignment_noN)= c("chu09", "chu10", "chu11")

strains=rep(c("CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08", "CHU09", "CHU10", "CHU11", "CHU12", "CHU13", "CHU14", "CHU15"), times=13)
r= c("0", "100", "10", "1", "200", "20", "25", "2", "30", "3", "50", "5", "70")

tresh=rep(r, times=1, each=15)



#No N
all_length_noN=cbind(ATCG, strains, tresh)

mycolors = c(brewer.pal(name="Dark2", n = 8), brewer.pal(name="Paired", n = 7))

all_length_noN$tresh <- as.numeric(as.vector(all_length_noN$tresh))
ggplot(data=all_length_noN, aes(x=all_length_noN$tresh, y=all_length_noN$V1, group=all_length_noN$strains, color=all_length_noN$strains)) +
  geom_line() + geom_point()+
  scale_color_manual(values = mycolors)+
  theme_minimal()


#A, T, C, G and N: Alignment's size
all_length_withN=cbind(ATCGN, strains, tresh)


all_length_withN$tresh <- as.numeric(as.vector(all_length_withN$tresh))
ggplot(data=all_length_withN, aes(x=all_length_withN$tresh, y=all_length_withN$V1, group=all_length_withN$strains, color=all_length_withN$strains)) +
  geom_line() + geom_point()+
  scale_color_manual(values = mycolors)+
  theme_minimal()

#N number
all_length_N=cbind(N, strains, tresh)

all_length_N=all_length_N[-74, ] 

all_length_N$tresh <- as.numeric(as.vector(all_length_N$tresh))
ggplot(data=all_length_N, aes(x=all_length_N$tresh, y=all_length_N$V1, group=all_length_N$strains, color=all_length_N$strains)) +
  geom_line() + geom_point()+
  scale_color_manual(values = mycolors)+
  theme_minimal()
