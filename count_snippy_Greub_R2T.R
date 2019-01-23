#install.packages("stringr")
library(stringr)


setwd("C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/snippy_comparison_raw_reads_MW2")



files <- list.files("C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/snippy_comparison_raw_reads_MW2/03_csv_only_snp/", pattern="[[:alnum:]]+.csv", recursive=TRUE, full.names=TRUE)



number_snps=matrix(ncol=30, nrow=2)

### Create the data frames containing the SNP counts (all snps, not only snp). 

i=0

for (file in files){
i=i+ 1
greub= grep('greub', file, value=TRUE)
r2t=grep('R2T', file, value = TRUE)

res <- str_match(file, "snippy_MW2_(.*?)\\.csv")
table=read.csv(file)
table_snp=table[table$TYPE == "snp",]

res_snp=paste0(res[2], "_snp")

assign(res_snp, table_snp)

number_snps[1,i]= res[2]
number_snps[2,i]=nrow(table_snp)


}


### Delta number of SNP: number SNPs greub - Number SNPs R2T

lab=c("CHU01","CHU02","CHU03","CHU04","CHU05","CHU06","CHU07","CHU08","CHU09","CHU10","CHU11","CHU12","CHU13","CHU14","CHU15")

delta_greub_r2t=matrix(,nrow=1, ncol=15)
colnames(delta_greub_r2t )=lab


ratio_greub_r2t=matrix(,nrow=1, ncol=15)
colnames(ratio_greub_r2t)= lab

for (i in c(1:15)){
j=i+15
  print(as.integer(number_snps[2,i])-as.integer(number_snps[2,j]))
  delta_greub_r2t[1,i]=as.integer(number_snps[2,i])-as.integer(number_snps[2,j])
  ratio_greub_r2t[1,i]=as.integer(number_snps[2,i])/as.integer(number_snps[2,j])
  
}



### Get the number of reads processed for each strain

# number_reads_init=list(420907,1725334,1860449,1557916,512997,593319,718383,797659,864905,2803887,1211509,747947,1237270,626224,2277997,420907,1725334,1860449,1557916,512997,593319,718383,797659,864905,2803887,1211509,747947,1237270,626224,2277997)
# 
# number_reads= read.table("C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/snippy_comparison_raw_reads_MW2/02_log_files/number_reads_processed.txt", sep = " ", stringsAsFactors = FALSE)
# number_reads=number_reads[,c(1,3)]
# 
# number_reads_fin= list()
# 
# 
# for (i in c(1:30)){
#   number_reads_init[i]
#   number_reads[i,2]
#   
#   
# number_reads_fin[i]=  number_reads_init[i] - number_reads[i,2]
#   
# }
# 
# number_reads=number_reads_init-number_reads
# 
# colnames(number_reads)= c("strain_mapped", "number_processed_reads")
# 
# 
# for (i in 1:nrow(number_reads)){
#   res=str_match(number_reads[i,1], "snippy_MW2_(.*?)\\.log")[2]
#   res
#   
#   number_reads[i,1] = res
#   
#   #must get the total number of reads at the begining.
#   
# 
# }
# 
# lab=c("CHU01","CHU02","CHU03","CHU04","CHU05","CHU06","CHU07","CHU08","CHU09","CHU10","CHU11","CHU12","CHU13","CHU14","CHU15")
# 
# delta_greub_r2t_number_reads=matrix(,nrow=1, ncol=15)
# colnames(delta_greub_r2t_number_reads )=lab
# 
# 
# ratio_greub_r2t_number_reads=matrix(,nrow=1, ncol=15)
# colnames(ratio_greub_r2t_number_reads)= lab
# 
# for (i in c(1:15)){
#   j=i+15
#   print(as.integer(number_reads[i,2])-as.integer(number_reads[j,2]))
#   delta_greub_r2t_number_reads[1,i]=as.integer(number_reads[i,2])-as.integer(number_reads[j,2])
#   ratio_greub_r2t_number_reads[1,i]=as.integer(number_reads[i,2])/as.integer(number_reads[j,2])
#   
# }



fin_reads=read.csv("number_reads_used.csv", sep="\t")

par(mfrow=c(2,2))
mtext("Exloration of SNIPPY output", outer = TRUE, cex = 1.5)


plot(delta_greub_r2t_number_reads[1,],type="l",col="red", main = "Delta reads Greub R2T", xlab="CHUV strains", ylab="Delta processed reads")
plot(delta_greub_r2t[1,], type="l", col="blue", main = "Delta SNPs Greub R2T", xlab="CHUV strains", ylab="Delta SNPs")

plot(ratio_greub_r2t_number_reads[1,],col="red", type="l", main = "Ratio reads Greub R2T",  xlab="CHUV strains", ylab="Ratio processed reads")
plot(ratio_greub_r2t[1,], col = "blue", type="l", main = "Ratio SNPs Greub R2T",  xlab="CHUV strains", ylab="Ratio SNPs")

library(ggplot2)

ggplot(fin_reads, aes(factor(fin_reads$Strain), fin_reads$Final, fill = fin_reads$Pipeline)) + 
  geom_bar(stat="identity", position = "dodge") + 
  scale_fill_brewer(palette = "Set1")+theme(axis.text.x = element_text(angle = 90, hjust = 1))+labs(x = "Strains", y="Number of reads mapped to reference",title = "Number of reads mapped on Full reference and \nconcatenated reference, for each strain")
### Get the average number of reads for 

