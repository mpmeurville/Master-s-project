setwd("C:/Users/marie/Documents/PdM/Spneumoniae")

t=read.csv("sra_result.csv")
t_i_454=data.frame()

for (i in 1:nrow(t)){
  
  if (grepl("illumina", t[i,4], ignore.case = T) | grepl("454", t[i,4], ignore.case = T)){
  t_i_454=rbind(t_i_454, t[i,])
    
  }
  
  
}
