setwd("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/trees/contrees_renamed/")

library(ggplot2)
library(stringr)
library(RColorBrewer)


t= read.table("RF_file_all.txt", sep="|", header=T,stringsAsFactors = FALSE)
t=t[-c(1),]

 
 for (i in 1:nrow(t)){
 t$source[i]=gsub(".*_(.*)\\..*", "\\1", t$source[i])
 t$ref[i]=gsub(".*_(.*)\\..*", "\\1", t$ref[i])
 
 }

#Because we have some ordering problems ( we want the thresholds to be considered as discrete, so char, but ordered, so int), we have to transform them from 0,1,10 to 000, 001, 010. 
t$source=str_pad(t$source, 4, pad = "0")
t$ref=str_pad(t$ref, 4, pad = "0")

#Then, we create the plots
rowname=t$ref
colname=t$source
value=as.numeric(t$RF)

ggplot(t, aes(x = rowname, y = colname, fill = value)) +
  geom_tile() + ggtitle("Robinson-Foulds value for every \npairwise comparison of the trees") + xlab("Tree (for each minimal coverage threshold)") + ylab("Reference tree (for each minimal coverage threshold)") + 
  theme(text = element_text(size=16),axis.text.x = element_text(angle=90, hjust=1)) +   theme(plot.title = element_text(hjust = 0.5))



### For the ref being greub, from 0 to 25:

t= read.table("out_RF_AllVsGreub.txt", sep="|", header=T,stringsAsFactors = FALSE)
t=t[-c(1),]

for (i in 1:nrow(t)){
  t$source[i]=gsub(".*_(.*)\\..*", "\\1", t$source[i])
  t$ref[i]=gsub(".*_(.*)\\..*", "\\1", t$ref[i])
  
}

#Because we have some ordering problems ( we want the thresholds to be considered as discrete, so char, but ordered, so int), we have to transform them from 0,1,10 to 000, 001, 010. 
t$source=str_pad(t$source, 4, pad = "0")
t$ref=str_pad(t$ref, 4, pad = "0")


ta=t[t$source == '0000' | t$source == '0001' | t$source == '0002' | t$source == '0003' | t$source == '0005'| t$source == '0010' | t$source == '0020'| t$source == '0025' | t$source == '0030' | t$source == '0050' | t$source == '0070' | t$source == '0100' | t$source == '0200', ]

par(cex.main=7, cex.lab=6, cex.axis=6, mar=c(20,20,10,10),mgp=c(10,5,2))

rowname=ta$ref
colname=ta$source
value=as.numeric(ta$RF)

ggplot(ta, aes(x = colname, y = value)) +  geom_bar(stat="identity",fill="steelblue") +  ggtitle("Robinson-Foulds distance value for every \npairwise comparison of the trees resulting from\nraw reads + R2T + minimal coverage threshold (16 references) with the \ncore analysis (16 references) pipeline")  +  ylab("Robinson-Foulds distance") +  xlab("") +  theme(text = element_text(size=20), axis.text.x = element_text(angle=65, hjust=1)) +  theme(plot.title = element_text(hjust = 0.5)) +  scale_x_discrete(labels=c("Raw reads + R2T + \nminimal coverage threshold = 0", "Raw reads + R2T + \nminimal coverage threshold = 1", "Raw reads + R2T + \nminimal coverage threshold = 2", "Raw reads + R2T + \nminimal coverage threshold = 3","Raw reads + R2T + \nminimal coverage threshold = 5 ", "Raw reads + R2T + \nminimal coverage threshold = 10", "Raw reads + R2T + \nminimal coverage threshold = 20","Raw reads + R2T + \nminimal coverage threshold = 25","Raw reads + R2T + \nminimal coverage threshold = 30","Raw reads + R2T + \nminimal coverage threshold = 50","Raw reads + R2T + \nminimal coverage threshold = 70","Raw reads + R2T + \nminimal coverage threshold = 100","Raw reads + R2T + \nminimal coverage threshold = 200"))
dev.off()

#Plot nRF

rowname=t$ref
colname=t$source
value=as.numeric(t$nRF)

ggplot(t, aes(x = colname, y = value)) +
  geom_bar(stat="identity",fill="blue") + ggtitle("nRobinson-Foulds value for every \npairwise comparison of the trees (ref = threshold 0)") + xlab("Tree (for each minimal coverage threshold)") + ylab("n Robinson_foulds value") + 
  theme(text = element_text(size=16),axis.text.x = element_text(angle=90, hjust=1)) +   theme(plot.title = element_text(hjust = 0.5))

dev.off()
#Plot src_br+

rowname=t$ref
colname=t$source
value=as.numeric(t$src.br.)

ggplot(t, aes(x = colname, y = value)) +
  geom_bar(stat="identity",fill="steelblue") + ggtitle("src_br+ value for every \npairwise comparison of the trees (ref = threshold 0)") + xlab("Tree (for each minimal coverage threshold)") + ylab("src_br+ value") + 
  theme(text = element_text(size=16),axis.text.x = element_text(angle=90, hjust=1)) +   theme(plot.title = element_text(hjust = 0.5))

#Plot ref_br+

rowname=t$ref
colname=t$source
value=as.numeric(t$ref.br.)

ggplot(t, aes(x = colname, y = value)) +
  geom_bar(stat="identity",fill="steelblue") + ggtitle("ref_br+ value for every \npairwise comparison of the trees (ref = threshold 0)") + xlab("Tree (for each minimal coverage threshold)") + ylab("ref_br+ value") + 
  theme(text = element_text(size=16),axis.text.x = element_text(angle=90, hjust=1)) +   theme(plot.title = element_text(hjust = 0.5))

#Plot number of strains remaining

rowname=t$ref
colname=t$source
value=as.numeric(t$E.size)

ggplot(t, aes(x = colname, y = value)) +
  geom_bar(stat="identity",fill="steelblue") + ggtitle("Number of CHUV srtains in the trees") + xlab("Tree (for each minimal coverage threshold)") + ylab("Number of CHUV strains") + 
  theme(text = element_text(size=16),axis.text.x = element_text(angle=90, hjust=1)) +   theme(plot.title = element_text(hjust = 0.5))
