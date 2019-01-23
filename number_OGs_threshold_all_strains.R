setwd('C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true')

files <- list.files("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/cov_files", recursive=TRUE, full.names=TRUE)


chu1 = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu1)=c('threshold', 'number of ogs')
#colnames(chu2)=h

chu2 = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu2)=c('threshold', 'number of ogs')
#colnames(chu2)=h

chu3 = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu3)=c('threshold', 'number of ogs')
#colnames(chu2)=h

chu4 = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu4)=c('threshold', 'number of ogs')
#colnames(chu2)=h 

chu5 = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu5)=c('threshold', 'number of ogs')
#colnames(chu2)=h

chu6 = matrix(0,nrow=2,ncol=13)
rownames(chu6)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu7 = matrix(0,nrow=2,ncol=13)
rownames(chu7)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu8 = matrix(0,nrow=2,ncol=13)
rownames(chu8)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu9 = matrix(0,nrow=2,ncol=13)
rownames(chu9)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu10 = matrix(0,nrow=2,ncol=13)
rownames(chu10)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu11 = matrix(0,nrow=2,ncol=13)
rownames(chu11)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu12 = matrix(0,nrow=2,ncol=13)
rownames(chu12)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu13 = matrix(0,nrow=2,ncol=13)
rownames(chu13)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu14 = matrix(0,nrow=2,ncol=13)
rownames(chu14)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu15 = matrix(0,nrow=2,ncol=13)
rownames(chu15)=c('threshold', 'number of ogs')
#colnames(chu6)=h




chu1_cov = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu1_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu2_cov = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu2_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu3_cov = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu3_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu4_cov = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu4_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu5_cov = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu5_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h


 
chu6_cov = matrix(0,nrow=2,ncol=13)
rownames(chu6_cov)=c('threshold', 'mean of cov')
#colnames(chu6)=h

chu7_cov = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu7_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu8_cov = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu8_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu9_cov = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu9_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu10_cov = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu10_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h


chu11_cov = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu11_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu12_cov = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu12_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu13_cov = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu13_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu14_cov = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu14_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu15_cov = matrix(0,nrow=2,ncol=13)
#chu2[1,]=as.integer(h)
rownames(chu15_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

b1=matrix(NA, ncol=13, nrow = 3000)
b2=matrix(NA, ncol=13, nrow = 3000)
b3=matrix(NA, ncol=13, nrow = 3000)
b4=matrix(NA, ncol=13, nrow = 3000)
b5=matrix(NA, ncol=13, nrow = 3000)
b6=matrix(NA, ncol=13, nrow = 3000)
b7=matrix(NA, ncol=13, nrow = 3000)
b8=matrix(NA, ncol=13, nrow = 3000)
b9=matrix(NA, ncol=13, nrow = 3000)
b10=matrix(NA, ncol=13, nrow = 3000)
b11=matrix(NA, ncol=13, nrow = 3000)
b12=matrix(NA, ncol=13, nrow = 3000)
b13=matrix(NA, ncol=13, nrow = 3000)
b14=matrix(NA, ncol=13, nrow = 3000)
#b4=matrix(NA, ncol=15, nrow = 2092)
b15=matrix(NA, ncol=13, nrow = 3000)



      ### Filling of the matrices      

t=0

for (file in files)
{
  if (basename(file) == 'CHU01_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu1[1,t]=i
      chu1[2,t]=0
      
      chu1_cov[1,t]=i
      chu1_cov[2,t]=0
      
      b1[1,t]=i
      
      
    }
    else
    {
      
      
      chu1[1,t]=i
      
      #print(nrow(temp))
      chu1[2,t]=nrow(temp)
      
      chu1_cov[1,t]=i
      chu1_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b1)){
        b1[1,t]=i
        b1[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU02_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu2[1,t]=i
      chu2[2,t]=0
      
      chu2_cov[1,t]=i
      chu2_cov[2,t]=0
      
      b2[1,t]=i
      
      
    }
    else
    {
      
      
      chu2[1,t]=i
      
      #print(nrow(temp))
      chu2[2,t]=nrow(temp)
      
      chu2_cov[1,t]=i
      chu2_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b2)){
        b2[1,t]=i
        b2[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU03_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu3[1,t]=i
      chu3[2,t]=0
      
      chu3_cov[1,t]=i
      chu3_cov[2,t]=0
      
      b3[1,t]=i
      
      
    }
    else
    {
      
      
      chu3[1,t]=i
      
      #print(nrow(temp))
      chu3[2,t]=nrow(temp)
      
      chu3_cov[1,t]=i
      chu3_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b3)){
        b3[1,t]=i
        b3[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU04_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu4[1,t]=i
      chu4[2,t]=0
      
      chu4_cov[1,t]=i
      chu4_cov[2,t]=0
      
      b4[1,t]=i
      
      
    }
    else
    {
      
      
      chu4[1,t]=i
      
      #print(nrow(temp))
      chu4[2,t]=nrow(temp)
      
      chu4_cov[1,t]=i
      chu4_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b4)){
        b4[1,t]=i
        b4[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU05_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu5[1,t]=i
      chu5[2,t]=0
      
      chu5_cov[1,t]=i
      chu5_cov[2,t]=0
      
      b5[1,t]=i
      
      
    }
    else
    {
      
      
      chu5[1,t]=i
      
      #print(nrow(temp))
      chu5[2,t]=nrow(temp)
      
      chu5_cov[1,t]=i
      chu5_cov[2,t]=mean(temp[,4])
      
      
      for (j in 2:nrow(b5)){
        b5[1,t]=i
        b5[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU06_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    #print(i)
    #print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    if (inherits(temp, 'try-error')){
      print('A')
      chu6[1,t]=i
      chu6[2,t]=0
      
      chu6_cov[1,t]=i
      chu6_cov[2,t]=0
      
      b6[1,t]=i
      
    }
    else
    {
      
      
      chu6[1,t]=i
      
      #print(nrow(temp))
      chu6[2,t]=nrow(temp)
      
      chu6_cov[1,t]=i
      chu6_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b6)){
        b6[1,t]=i
        b6[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU07_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu7[1,t]=i
      chu7[2,t]=0
      
      chu7_cov[1,t]=i
      chu7_cov[2,t]=0
      
      b7[1,t]=i
      
      
    }
    else
    {
      
      
      chu7[1,t]=i
      
      #print(nrow(temp))
      chu7[2,t]=nrow(temp)
      
      chu7_cov[1,t]=i
      chu7_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b7)){
        b7[1,t]=i
        b7[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU08_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu8[1,t]=i
      chu8[2,t]=0
      
      chu8_cov[1,t]=i
      chu8_cov[2,t]=0
      
      b8[1,t]=i
      
      
    }
    else
    {
      
      
      chu8[1,t]=i
      
      #print(nrow(temp))
      chu8[2,t]=nrow(temp)
      
      chu8_cov[1,t]=i
      chu8_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b8)){
        b8[1,t]=i
        b8[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}

t=0

for (file in files)
{
  if (basename(file) == 'CHU09_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu9[1,t]=i
      chu9[2,t]=0
      
      chu9_cov[1,t]=i
      chu9_cov[2,t]=0
      
      b9[1,t]=i
      
      
    }
    else
    {
      
      
      chu9[1,t]=i
      
      #print(nrow(temp))
      chu9[2,t]=nrow(temp)
      
      chu9_cov[1,t]=i
      chu9_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b9)){
        b9[1,t]=i
        b9[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}

t=0

for (file in files)
{
  if (basename(file) == 'CHU10_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu10[1,t]=i
      chu10[2,t]=0
      
      chu10_cov[1,t]=i
      chu10_cov[2,t]=0
      
      b10[1,t]=i
      
      
    }
    else
    {
      
      
      chu10[1,t]=i
      
      #print(nrow(temp))
      chu10[2,t]=nrow(temp)
      
      chu10_cov[1,t]=i
      chu10_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b10)){
        b10[1,t]=i
        b10[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}

t=0

for (file in files)
{
  if (basename(file) == 'CHU11_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu11[1,t]=i
      chu11[2,t]=0
      
      chu11_cov[1,t]=i
      chu11_cov[2,t]=0
      
      b11[1,t]=i
      
      
    }
    else
    {
      
      
      chu11[1,t]=i
      
      #print(nrow(temp))
      chu11[2,t]=nrow(temp)
      
      chu11_cov[1,t]=i
      chu11_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b11)){
        b11[1,t]=i
        b11[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}

t=0

for (file in files)
{
  if (basename(file) == 'CHU12_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu12[1,t]=i
      chu12[2,t]=0
      
      chu12_cov[1,t]=i
      chu12_cov[2,t]=0
      
      b12[1,t]=i
      
      
    }
    else
    {
      
      
      chu12[1,t]=i
      
      #print(nrow(temp))
      chu12[2,t]=nrow(temp)
      
      chu12_cov[1,t]=i
      chu12_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b12)){
        b12[1,t]=i
        b12[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}

t=0

for (file in files)
{
  if (basename(file) == 'CHU13_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu13[1,t]=i
      chu13[2,t]=0
      
      chu13_cov[1,t]=i
      chu13_cov[2,t]=0
      
      b13[1,t]=i
      
      
    }
    else
    {
      
      
      chu13[1,t]=i
      
      #print(nrow(temp))
      chu13[2,t]=nrow(temp)
      
      chu13_cov[1,t]=i
      chu13_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b13)){
        b13[1,t]=i
        b13[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU14_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu14[1,t]=i
      chu14[2,t]=0
      
      chu14_cov[1,t]=i
      chu14_cov[2,t]=0
      
      b14[1,t]=i
      
      
    }
    else
    {
      
      
      chu14[1,t]=i
      
      #print(nrow(temp))
      chu14[2,t]=nrow(temp)
      
      chu14_cov[1,t]=i
      chu14_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b14)){
        b14[1,t]=i
        b14[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU15_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu15[1,t]=i
      chu15[2,t]=0
      
      chu15_cov[1,t]=i
      chu15_cov[2,t]=0
      
      b15[1,t]=i
      
      
    }
    else
    {
      
      
      chu15[1,t]=i
      
      #print(nrow(temp))
      chu15[2,t]=nrow(temp)
      
      chu15_cov[1,t]=i
      chu15_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b15)){
        b15[1,t]=i
        b15[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


      ### Plotting of the results


library(ggplot2)

threshold=chu1[1,]
number=chu1[2,]  
chu1=data.frame(threshold, number)
chu1=chu1[order(threshold),]
#chu2=chu2[1:12,]


threshold=chu2[1,]
number=chu2[2,]  
chu2=data.frame(threshold, number)
chu2=chu2[order(threshold),]
#chu2=chu2[1:12,]

threshold=chu3[1,]
number=chu3[2,]  
chu3=data.frame(threshold, number)
chu3=chu3[order(threshold),]
#chu2=chu2[1:12,]

threshold=chu4[1,]
number=chu4[2,]  
chu4=data.frame(threshold, number)
chu4=chu4[order(threshold),]
#chu2=chu2[1:12,]

threshold=chu5[1,]
number=chu5[2,]  
chu5=data.frame(threshold, number)
chu5=chu5[order(threshold),]
#chu2=chu2[1:12,]

threshold=chu6[1,]
number=chu6[2,]  
chu6=data.frame(threshold, number)
chu6=chu6[order(threshold),]
#chu6=chu6[1:12,]

threshold=chu7[1,]
number=chu7[2,]  
chu7=data.frame(threshold, number)
chu7=chu7[order(threshold),]
#chu2=chu2[1:12,]

threshold=chu8[1,]
number=chu8[2,]  
chu8=data.frame(threshold, number)
chu8=chu8[order(threshold),]
#chu2=chu2[1:12,]

threshold=chu9[1,]
number=chu9[2,]  
chu9=data.frame(threshold, number)
chu9=chu9[order(threshold),]
#chu2=chu2[1:12,]

threshold=chu10[1,]
number=chu10[2,]  
chu10=data.frame(threshold, number)
chu10=chu10[order(threshold),]
#chu2=chu2[1:12,]

threshold=chu11[1,]
number=chu11[2,]  
chu11=data.frame(threshold, number)
chu11=chu11[order(threshold),]
#chu2=chu2[1:12,]

threshold=chu12[1,]
number=chu12[2,]  
chu12=data.frame(threshold, number)
chu12=chu12[order(threshold),]
#chu2=chu2[1:12,]

threshold=chu13[1,]
number=chu13[2,]  
chu13=data.frame(threshold, number)
chu13=chu13[order(threshold),]
#chu2=chu2[1:12,]

threshold=chu14[1,]
number=chu14[2,]  
chu14=data.frame(threshold, number)
chu14=chu14[order(threshold),]
#chu2=chu2[1:12,]

threshold=chu15[1,]
number=chu15[2,]  
chu15=data.frame(threshold, number)
chu15=chu15[order(threshold),]
#chu2=chu2[1:12,]


png(filename= "threshold_number_ogs_all_strains_1-200.png", width=7000, height=4000)

par(mfrow=c(5,3), cex.axis= 5, cex.lab=4, cex.main=5, mar=c(9,6,9,5)+.1)
plot(chu1, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU1', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu2, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU2', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu3, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU3', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu4, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU4', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu5, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU5', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu6, type='b',lwd=3,cex=2,  main='Number of OGs for \nthresholds for CHU6', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu7, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU7', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu8, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU8', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu9, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU9', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu10, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU10', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu11, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU11', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu12, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU12', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu13, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU13', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu14, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU14', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu15, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU15', xlab='\nMinimal coverage threshold', ylab='Number of OGs')


dev.off ();

### Plot mean cov for threshold between 1-1000
threshold=chu1_cov[1,]
med=chu1_cov[2,] 
chu1_cov=data.frame(threshold, med)
chu1_cov=chu1_cov[order(threshold),]
#chu2_cov=chu2_cov[1:13,]

threshold=chu2_cov[1,]
med=chu2_cov[2,] 
chu2_cov=data.frame(threshold, med)
chu2_cov=chu2_cov[order(threshold),]
#chu2_cov=chu2_cov[1:13,]

threshold=chu3_cov[1,]
med=chu3_cov[2,] 
chu3_cov=data.frame(threshold, med)
chu3_cov=chu3_cov[order(threshold),]
#chu2_cov=chu2_cov[1:13,]

threshold=chu4_cov[1,]
med=chu4_cov[2,] 
chu4_cov=data.frame(threshold, med)
chu4_cov=chu4_cov[order(threshold),]
#chu2_cov=chu2_cov[1:13,]

threshold=chu5_cov[1,]
med=chu5_cov[2,] 
chu5_cov=data.frame(threshold, med)
chu5_cov=chu5_cov[order(threshold),]
#chu2_cov=chu2_cov[1:13,]

threshold=chu6_cov[1,]
med=chu6_cov[2,] 
chu6_cov=data.frame(threshold, med)
chu6_cov=chu6_cov[order(threshold),]
#chu6_cov=chu6_cov[1:13,]

threshold=chu7_cov[1,]
med=chu7_cov[2,] 
chu7_cov=data.frame(threshold, med)
chu7_cov=chu7_cov[order(threshold),]
#chu2_cov=chu2_cov[1:13,]

threshold=chu8_cov[1,]
med=chu8_cov[2,] 
chu8_cov=data.frame(threshold, med)
chu8_cov=chu8_cov[order(threshold),]
#chu2_cov=chu2_cov[1:13,]

threshold=chu9_cov[1,]
med=chu9_cov[2,] 
chu9_cov=data.frame(threshold, med)
chu9_cov=chu9_cov[order(threshold),]
#chu2_cov=chu2_cov[1:13,]

threshold=chu10_cov[1,]
med=chu10_cov[2,] 
chu10_cov=data.frame(threshold, med)
chu10_cov=chu10_cov[order(threshold),]
#chu2_cov=chu2_cov[1:13,]

threshold=chu11_cov[1,]
med=chu11_cov[2,] 
chu11_cov=data.frame(threshold, med)
chu11_cov=chu11_cov[order(threshold),]
#chu2_cov=chu2_cov[1:13,]

threshold=chu12_cov[1,]
med=chu12_cov[2,] 
chu12_cov=data.frame(threshold, med)
chu12_cov=chu12_cov[order(threshold),]
#chu2_cov=chu2_cov[1:13,]

threshold=chu13_cov[1,]
med=chu13_cov[2,] 
chu13_cov=data.frame(threshold, med)
chu13_cov=chu13_cov[order(threshold),]
#chu2_cov=chu2_cov[1:13,]

threshold=chu14_cov[1,]
med=chu14_cov[2,] 
chu14_cov=data.frame(threshold, med)
chu14_cov=chu14_cov[order(threshold),]
#chu2_cov=chu2_cov[1:13,]

threshold=chu15_cov[1,]
med=chu15_cov[2,] 
chu15_cov=data.frame(threshold, med)
chu15_cov=chu15_cov[order(threshold),]
#chu2_cov=chu2_cov[1:13,]

png(filename= "threshold_coverage_all_strains_mean_1-200.png", width=7000, height=4000)

par(mfrow=c(3,5), cex.axis= 5, cex.lab=6, cex.main=5, mar=c(9,9,9,5)+.1)

plot(chu1_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU1', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu2_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU2', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu3_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU3', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu4_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU4', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu5_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU5', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu6_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs f\nfor thresholds for CHU6', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu7_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU7', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu8_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU8', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu9_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU9', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu10_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU10', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu11_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU11', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu12_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU12', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu13_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU13', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu14_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU14', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu15_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU15', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')


dev.off ();

###############################################################################
#Multiple lines plot

      #Number of OGs
library(RColorBrewer)
n <- 15
qual_col_pals = brewer.pal.info[brewer.pal.info$category == 'qual',]
col_vector = unlist(mapply(brewer.pal, qual_col_pals$maxcolors, rownames(qual_col_pals)))

png(filename= "OGs_number_multiple_lines_all_strains_1-200.png", width=4500, height=1300)

par(cex.main=7, cex.lab=6, cex.axis=6, mar=c(20,20,10,50),mgp=c(10,5,2), xpd=TRUE)

plot(chu1$threshold,
     chu1$number,
     type="b",
     col = col_vector[1], 
     lwd=4, 
     main = "Number of OGs depending on the minimal coverage threshold, for the 15 strains",
     ylab = "Number of OGs \n",
     xlab = "Minimal coverage threshold")

# Lines
lines(chu2$threshold,chu2$number,col=col_vector[2], lwd=7,type="b")
lines(chu3$threshold,chu3$number,col=col_vector[3], lwd=7,type="b")
lines(chu4$threshold,chu4$number,col=col_vector[4], lwd=7,type="b")
lines(chu5$threshold,chu5$number,col=col_vector[5], lwd=7,type="b")
lines(chu6$threshold,chu6$number,col=col_vector[6], lwd=7,type="b")
lines(chu7$threshold,chu7$number,col=col_vector[7], lwd=7,type="b")
lines(chu8$threshold,chu8$number,col=col_vector[8], lwd=7,type="b")
lines(chu9$threshold,chu9$number,col=col_vector[9], lwd=7,type="b")
lines(chu10$threshold,chu10$number,col=col_vector[10], lwd=7,type="b")
lines(chu11$threshold,chu11$number,col=col_vector[11], lwd=7,type="b")
lines(chu12$threshold,chu12$number,col=col_vector[12], lwd=7,type="b")
lines(chu13$threshold,chu13$number,col=col_vector[13], lwd=7,type="b")
lines(chu14$threshold,chu14$number,col=col_vector[14], lwd=7,type="b")
lines(chu15$threshold,chu15$number,col=col_vector[15], lwd=7,type="b")


# Add legend to plot 
legend("topright",inset=c(-0.15,0), 
       cex = 4, 
       title="CHU Strains",
       horiz=FALSE,
       c("CHUV01","CHUV02","CHUV03","CHUV04", "CHUV05","CHUV06","CHUV07","CHUV08", "CHUV09", "CHUV10", "CHUV11","CHUV12","CHUV13", "CHUV14", "CHUV15"), 
       #ncol = 2, 
       lty=c(1,1), 
       lwd=c(5,5), 
       col=c(col_vector[1],col_vector[2],col_vector[3],col_vector[4],col_vector[5],col_vector[6],col_vector[7],col_vector[8],col_vector[9],col_vector[10],col_vector[11],col_vector[12],col_vector[13],col_vector[14],col_vector[15]), 
       bg="grey96")

dev.off ();


      ###coverage
png(filename= "cov_multiple_lines_all_strains_1-1000.png", width=4500, height=1200)

par(cex.main=7, cex.lab=6, cex.axis=6, mar=c(20,20,10,50),mgp=c(10,5,2), xpd=TRUE)

plot(chu10_cov$threshold,
     chu10_cov$med,type="b",
     col = col_vector[10], 
     lwd=4, 
     #???main = "Coverage evolution depending on the minimal coverage threshold, for the 15 strains",
     ylab = "Coverage \n",
     xlab = "Minimal coverage threshold", 
     ylim=c(0,280))

# Lines
lines(chu2_cov$threshold,chu2_cov$med,col=col_vector[2], lwd=4,type="b")
lines(chu3_cov$threshold,chu3_cov$med,col=col_vector[3], lwd=4,type="b")
lines(chu4_cov$threshold,chu4_cov$med,col=col_vector[4], lwd=4,type="b")
lines(chu5_cov$threshold,chu5_cov$med,col=col_vector[5], lwd=4,type="b")
lines(chu6_cov$threshold,chu6_cov$med,col=col_vector[6], lwd=4,type="b")
lines(chu7_cov$threshold,chu7_cov$med,col=col_vector[7], lwd=4,type="b")
lines(chu8_cov$threshold,chu8_cov$med,col=col_vector[8], lwd=4,type="b")
lines(chu9_cov$threshold,chu9_cov$med,col=col_vector[9], lwd=4,type="b")
lines(chu1_cov$threshold,chu1_cov$med,col=col_vector[1], lwd=4,type="b")
lines(chu11_cov$threshold,chu11_cov$med,col=col_vector[11], lwd=4,type="b")
lines(chu12_cov$threshold,chu12_cov$med,col=col_vector[12], lwd=4,type="b")
lines(chu13_cov$threshold,chu13_cov$med,col=col_vector[13], lwd=4,type="b")
lines(chu14_cov$threshold,chu14_cov$med,col=col_vector[14], lwd=4,type="b")
lines(chu15_cov$threshold,chu15_cov$med,col=col_vector[15], lwd=4,type="b")


# Add legend to plot 
legend("topright",inset=c(-0.15,0), 
       cex = 4, 
       title="CHU Strains",
       horiz=FALSE,
       c("CHUV01","CHUV02","CHUV03","CHUV04", "CHUV05","CHUV06","CHUV07","CHUV08", "CHUV09", "CHUV10", "CHUV11","CHUV12","CHUV13", "CHUV14", "CHUV15"), 
       #ncol = 2, 
       lty=c(1,1), 
       lwd=c(5,5), 
       col=c(col_vector[1],col_vector[2],col_vector[3],col_vector[4],col_vector[5],col_vector[6],col_vector[7],col_vector[8],col_vector[9],col_vector[10],col_vector[11],col_vector[12],col_vector[13],col_vector[14],col_vector[15]), 
       bg="grey96")

dev.off ();


########################################################################################################¶
### SAME but other types of graphs




setwd('C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains')

files <- list.files("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains", recursive=TRUE, full.names=TRUE)


### Creation of empty matrices

chu1 = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu1)=c('threshold', 'number of ogs')
#colnames(chu2)=h

chu2 = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu2)=c('threshold', 'number of ogs')
#colnames(chu2)=h

chu3 = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu3)=c('threshold', 'number of ogs')
#colnames(chu2)=h

chu4 = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu4)=c('threshold', 'number of ogs')
#colnames(chu2)=h 

chu5 = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu5)=c('threshold', 'number of ogs')
#colnames(chu2)=h

chu6 = matrix(0,nrow=2,ncol=29)
rownames(chu6)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu7 = matrix(0,nrow=2,ncol=29)
rownames(chu7)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu8 = matrix(0,nrow=2,ncol=29)
rownames(chu8)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu9 = matrix(0,nrow=2,ncol=29)
rownames(chu9)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu10 = matrix(0,nrow=2,ncol=29)
rownames(chu10)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu11 = matrix(0,nrow=2,ncol=29)
rownames(chu11)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu12 = matrix(0,nrow=2,ncol=29)
rownames(chu12)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu13 = matrix(0,nrow=2,ncol=29)
rownames(chu13)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu14 = matrix(0,nrow=2,ncol=29)
rownames(chu14)=c('threshold', 'number of ogs')
#colnames(chu6)=h

chu15 = matrix(0,nrow=2,ncol=29)
rownames(chu15)=c('threshold', 'number of ogs')
#colnames(chu6)=h


chu1_cov = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu1_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu2_cov = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu2_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu3_cov = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu3_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu4_cov = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu4_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu5_cov = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu5_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h



chu6_cov = matrix(0,nrow=2,ncol=29)
rownames(chu6_cov)=c('threshold', 'mean of cov')
#colnames(chu6)=h

chu7_cov = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu7_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu8_cov = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu8_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu9_cov = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu9_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu10_cov = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu10_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h


chu11_cov = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu11_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu12_cov = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu12_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu13_cov = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu13_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu14_cov = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu14_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

chu15_cov = matrix(0,nrow=2,ncol=29)
#chu2[1,]=as.integer(h)
rownames(chu15_cov)=c('threshold', 'mean of cov')
#colnames(chu2)=h

b1=matrix(NA, ncol=29, nrow = 3000)
b2=matrix(NA, ncol=29, nrow = 3000)
b3=matrix(NA, ncol=29, nrow = 3000)
b4=matrix(NA, ncol=29, nrow = 3000)
b5=matrix(NA, ncol=29, nrow = 3000)
b6=matrix(NA, ncol=29, nrow = 3000)
b7=matrix(NA, ncol=29, nrow = 3000)
b8=matrix(NA, ncol=29, nrow = 3000)
b9=matrix(NA, ncol=29, nrow = 3000)
b10=matrix(NA, ncol=29, nrow = 3000)
b11=matrix(NA, ncol=29, nrow = 3000)
b12=matrix(NA, ncol=29, nrow = 3000)
b13=matrix(NA, ncol=29, nrow = 3000)
b14=matrix(NA, ncol=29, nrow = 3000)
b15=matrix(NA, ncol=29, nrow = 3000)



### Filling of the matrices      

t=0

for (file in files)
{
  if (basename(file) == 'CHU01_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu1[1,t]=i
      chu1[2,t]=0
      
      chu1_cov[1,t]=i
      chu1_cov[2,t]=0
      
      b1[1,t]=i
      
      
    }
    else
    {
      
      
      chu1[1,t]=i
      
      #print(nrow(temp))
      chu1[2,t]=nrow(temp)
      
      chu1_cov[1,t]=i
      chu1_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b1)){
        b1[1,t]=i
        b1[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU02_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu2[1,t]=i
      chu2[2,t]=0
      
      chu2_cov[1,t]=i
      chu2_cov[2,t]=0
      
      b2[1,t]=i
      
      
    }
    else
    {
      
      
      chu2[1,t]=i
      
      #print(nrow(temp))
      chu2[2,t]=nrow(temp)
      
      chu2_cov[1,t]=i
      chu2_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b2)){
        b2[1,t]=i
        b2[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU03_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu3[1,t]=i
      chu3[2,t]=0
      
      chu3_cov[1,t]=i
      chu3_cov[2,t]=0
      
      b3[1,t]=i
      
      
    }
    else
    {
      
      
      chu3[1,t]=i
      
      #print(nrow(temp))
      chu3[2,t]=nrow(temp)
      
      chu3_cov[1,t]=i
      chu3_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b3)){
        b3[1,t]=i
        b3[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU04_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu4[1,t]=i
      chu4[2,t]=0
      
      chu4_cov[1,t]=i
      chu4_cov[2,t]=0
      
      b4[1,t]=i
      
      
    }
    else
    {
      
      
      chu4[1,t]=i
      
      #print(nrow(temp))
      chu4[2,t]=nrow(temp)
      
      chu4_cov[1,t]=i
      chu4_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b4)){
        b4[1,t]=i
        b4[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU05_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu5[1,t]=i
      chu5[2,t]=0
      
      chu5_cov[1,t]=i
      chu5_cov[2,t]=0
      
      b5[1,t]=i
      
      
    }
    else
    {
      
      
      chu5[1,t]=i
      
      #print(nrow(temp))
      chu5[2,t]=nrow(temp)
      
      chu5_cov[1,t]=i
      chu5_cov[2,t]=mean(temp[,4])
      
      
      for (j in 2:nrow(b5)){
        b5[1,t]=i
        b5[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU06_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    #print(i)
    #print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    if (inherits(temp, 'try-error')){
      print('A')
      chu6[1,t]=i
      chu6[2,t]=0
      
      chu6_cov[1,t]=i
      chu6_cov[2,t]=0
      
      b6[1,t]=i
      
    }
    else
    {
      
      
      chu6[1,t]=i
      
      #print(nrow(temp))
      chu6[2,t]=nrow(temp)
      
      chu6_cov[1,t]=i
      chu6_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b6)){
        b6[1,t]=i
        b6[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU07_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu7[1,t]=i
      chu7[2,t]=0
      
      chu7_cov[1,t]=i
      chu7_cov[2,t]=0
      
      b7[1,t]=i
      
      
    }
    else
    {
      
      
      chu7[1,t]=i
      
      #print(nrow(temp))
      chu7[2,t]=nrow(temp)
      
      chu7_cov[1,t]=i
      chu7_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b7)){
        b7[1,t]=i
        b7[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU08_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu8[1,t]=i
      chu8[2,t]=0
      
      chu8_cov[1,t]=i
      chu8_cov[2,t]=0
      
      b8[1,t]=i
      
      
    }
    else
    {
      
      
      chu8[1,t]=i
      
      #print(nrow(temp))
      chu8[2,t]=nrow(temp)
      
      chu8_cov[1,t]=i
      chu8_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b8)){
        b8[1,t]=i
        b8[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}

t=0

for (file in files)
{
  if (basename(file) == 'CHU09_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu9[1,t]=i
      chu9[2,t]=0
      
      chu9_cov[1,t]=i
      chu9_cov[2,t]=0
      
      b9[1,t]=i
      
      
    }
    else
    {
      
      
      chu9[1,t]=i
      
      #print(nrow(temp))
      chu9[2,t]=nrow(temp)
      
      chu9_cov[1,t]=i
      chu9_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b9)){
        b9[1,t]=i
        b9[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}

t=0

for (file in files)
{
  if (basename(file) == 'CHU10_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu10[1,t]=i
      chu10[2,t]=0
      
      chu10_cov[1,t]=i
      chu10_cov[2,t]=0
      
      b10[1,t]=i
      
      
    }
    else
    {
      
      
      chu10[1,t]=i
      
      #print(nrow(temp))
      chu10[2,t]=nrow(temp)
      
      chu10_cov[1,t]=i
      chu10_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b10)){
        b10[1,t]=i
        b10[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}

t=0

for (file in files)
{
  if (basename(file) == 'CHU11_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu11[1,t]=i
      chu11[2,t]=0
      
      chu11_cov[1,t]=i
      chu11_cov[2,t]=0
      
      b11[1,t]=i
      
      
    }
    else
    {
      
      
      chu11[1,t]=i
      
      #print(nrow(temp))
      chu11[2,t]=nrow(temp)
      
      chu11_cov[1,t]=i
      chu11_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b11)){
        b11[1,t]=i
        b11[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}

t=0

for (file in files)
{
  if (basename(file) == 'CHU12_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu12[1,t]=i
      chu12[2,t]=0
      
      chu12_cov[1,t]=i
      chu12_cov[2,t]=0
      
      b12[1,t]=i
      
      
    }
    else
    {
      
      
      chu12[1,t]=i
      
      #print(nrow(temp))
      chu12[2,t]=nrow(temp)
      
      chu12_cov[1,t]=i
      chu12_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b12)){
        b12[1,t]=i
        b12[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}

t=0

for (file in files)
{
  if (basename(file) == 'CHU13_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu13[1,t]=i
      chu13[2,t]=0
      
      chu13_cov[1,t]=i
      chu13_cov[2,t]=0
      
      b13[1,t]=i
      
      
    }
    else
    {
      
      
      chu13[1,t]=i
      
      #print(nrow(temp))
      chu13[2,t]=nrow(temp)
      
      chu13_cov[1,t]=i
      chu13_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b13)){
        b13[1,t]=i
        b13[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU14_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu14[1,t]=i
      chu14[2,t]=0
      
      chu14_cov[1,t]=i
      chu14_cov[2,t]=0
      
      b14[1,t]=i
      
      
    }
    else
    {
      
      
      chu14[1,t]=i
      
      #print(nrow(temp))
      chu14[2,t]=nrow(temp)
      
      chu14_cov[1,t]=i
      chu14_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b14)){
        b14[1,t]=i
        b14[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}


t=0

for (file in files)
{
  if (basename(file) == 'CHU15_1_all_cov.txt'){
    i=as.integer(strsplit(strsplit(file, '/')[[1]][10], '_')[[1]][2])
    print('A')
    print(i)
    print(file)
    t=t+1
    temp= try(read.table(file, sep=','))
    
    #print(nrow(temp))
    
    if (inherits(temp, 'try-error')){
      #print('A')
      chu15[1,t]=i
      chu15[2,t]=0
      
      chu15_cov[1,t]=i
      chu15_cov[2,t]=0
      
      b15[1,t]=i
      
      
    }
    else
    {
      
      
      chu15[1,t]=i
      
      #print(nrow(temp))
      chu15[2,t]=nrow(temp)
      
      chu15_cov[1,t]=i
      chu15_cov[2,t]=mean(temp[,4])
      
      for (j in 2:nrow(b15)){
        b15[1,t]=i
        b15[j,t]=temp[j,4]
        
        
      }
      
    }
    
  }
  
}



### Plot number OGs for threshold between 1-100

library(ggplot2)

threshold=chu1[1,]
number=chu1[2,]  
chu1=data.frame(threshold, number)
chu1=chu1[order(threshold),]
chu1=chu1[1:10,]


threshold=chu2[1,]
number=chu2[2,]  
chu2=data.frame(threshold, number)
chu2=chu2[order(threshold),]
chu2=chu2[1:10,]

threshold=chu3[1,]
number=chu3[2,]  
chu3=data.frame(threshold, number)
chu3=chu3[order(threshold),]
chu3=chu3[1:10,]

threshold=chu4[1,]
number=chu4[2,]  
chu4=data.frame(threshold, number)
chu4=chu4[order(threshold),]
chu4=chu4[1:10,]

threshold=chu5[1,]
number=chu5[2,]  
chu5=data.frame(threshold, number)
chu5=chu5[order(threshold),]
chu5=chu5[1:10,]

threshold=chu6[1,]
number=chu6[2,]  
chu6=data.frame(threshold, number)
chu6=chu6[order(threshold),]
chu6=chu6[1:10,]

threshold=chu7[1,]
number=chu7[2,]  
chu7=data.frame(threshold, number)
chu7=chu7[order(threshold),]
chu7=chu7[1:10,]

threshold=chu8[1,]
number=chu8[2,]  
chu8=data.frame(threshold, number)
chu8=chu8[order(threshold),]
chu8=chu8[1:10,]

threshold=chu9[1,]
number=chu9[2,]  
chu9=data.frame(threshold, number)
chu9=chu9[order(threshold),]
chu9=chu9[1:10,]

threshold=chu10[1,]
number=chu10[2,]  
chu10=data.frame(threshold, number)
chu10=chu10[order(threshold),]
chu10=chu10[1:10,]

threshold=chu11[1,]
number=chu11[2,]  
chu11=data.frame(threshold, number)
chu11=chu11[order(threshold),]
chu11=chu11[1:10,]

threshold=chu12[1,]
number=chu12[2,]  
chu12=data.frame(threshold, number)
chu12=chu12[order(threshold),]
chu12=chu12[1:10,]

threshold=chu13[1,]
number=chu13[2,]  
chu13=data.frame(threshold, number)
chu13=chu13[order(threshold),]
chu13=chu13[1:10,]

threshold=chu14[1,]
number=chu14[2,]  
chu14=data.frame(threshold, number)
chu14=chu14[order(threshold),]
chu14=chu14[1:10,]

threshold=chu15[1,]
number=chu15[2,]  
chu15=data.frame(threshold, number)
chu15=chu15[order(threshold),]
chu15=chu15[1:10,]

png(filename= "threshold_number_ogs_all_strains_1-25.png", width=7000, height=4000)


par(mfrow=c(5,3), cex.axis= 5, cex.lab=4, cex.main=5, mar=c(9,6,9,5)+.1)

plot(chu1, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU1', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu2, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU2', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu3, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU3', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu4, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU4', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu5, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU5', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu6, type='b',lwd=3,cex=2,  main='Number of OGs for \nthresholds for CHU6', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu7, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU7', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu8, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU8', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu9, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU9', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu10, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU10', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu11, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU11', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu12, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU12', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu13, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU13', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu14, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU14', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
plot(chu15, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU15', xlab='\nMinimal coverage threshold', ylab='Number of OGs')


dev.off ();

### Plot mean cov for threshold between 1-30

threshold=chu1_cov[1,]
med=chu1_cov[2,] 
chu1_cov=data.frame(threshold, med)
chu1_cov=chu1_cov[order(threshold),]
chu1_cov=chu1_cov[1:10,]

threshold=chu2_cov[1,]
med=chu2_cov[2,] 
chu2_cov=data.frame(threshold, med)
chu2_cov=chu2_cov[order(threshold),]
chu2_cov=chu2_cov[1:10,]

threshold=chu3_cov[1,]
med=chu3_cov[2,] 
chu3_cov=data.frame(threshold, med)
chu3_cov=chu3_cov[order(threshold),]
chu3_cov=chu3_cov[1:10,]

threshold=chu4_cov[1,]
med=chu4_cov[2,] 
chu4_cov=data.frame(threshold, med)
chu4_cov=chu4_cov[order(threshold),]
chu4_cov=chu4_cov[1:10,]

threshold=chu5_cov[1,]
med=chu5_cov[2,] 
chu5_cov=data.frame(threshold, med)
chu5_cov=chu5_cov[order(threshold),]
chu5_cov=chu5_cov[1:10,]

threshold=chu6_cov[1,]
med=chu6_cov[2,] 
chu6_cov=data.frame(threshold, med)
chu6_cov=chu6_cov[order(threshold),]
chu6_cov=chu6_cov[1:10,]

threshold=chu7_cov[1,]
med=chu7_cov[2,] 
chu7_cov=data.frame(threshold, med)
chu7_cov=chu7_cov[order(threshold),]
chu7_cov=chu7_cov[1:10,]

threshold=chu8_cov[1,]
med=chu8_cov[2,] 
chu8_cov=data.frame(threshold, med)
chu8_cov=chu8_cov[order(threshold),]
chu8_cov=chu8_cov[1:10,]

threshold=chu9_cov[1,]
med=chu9_cov[2,] 
chu9_cov=data.frame(threshold, med)
chu9_cov=chu9_cov[order(threshold),]
chu9_cov=chu9_cov[1:10,]

threshold=chu10_cov[1,]
med=chu10_cov[2,] 
chu10_cov=data.frame(threshold, med)
chu10_cov=chu10_cov[order(threshold),]
chu10_cov=chu10_cov[1:10,]

threshold=chu11_cov[1,]
med=chu11_cov[2,] 
chu11_cov=data.frame(threshold, med)
chu11_cov=chu11_cov[order(threshold),]
chu11_cov=chu11_cov[1:10,]

threshold=chu12_cov[1,]
med=chu12_cov[2,] 
chu12_cov=data.frame(threshold, med)
chu12_cov=chu12_cov[order(threshold),]
chu12_cov=chu12_cov[1:10,]

threshold=chu13_cov[1,]
med=chu13_cov[2,] 
chu13_cov=data.frame(threshold, med)
chu13_cov=chu13_cov[order(threshold),]
chu13_cov=chu13_cov[1:10,]

threshold=chu14_cov[1,]
med=chu14_cov[2,] 
chu14_cov=data.frame(threshold, med)
chu14_cov=chu14_cov[order(threshold),]
chu14_cov=chu14_cov[1:10,]

threshold=chu15_cov[1,]
med=chu15_cov[2,] 
chu15_cov=data.frame(threshold, med)
chu15_cov=chu15_cov[order(threshold),]
chu15_cov=chu15_cov[1:10,]

png(filename= "threshold_coverage_all_strains_mean1-25.png", width=7000, height=4000)

par(mfrow=c(3,5), cex.axis= 5, cex.lab=6, cex.main=5, mar=c(9,9,9,5)+.1)

plot(chu1_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU1', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu2_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU2', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu3_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU3', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu4_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU4', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu5_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU5', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu6_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs f\nfor thresholds for CHU6', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu7_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU7', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu8_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU8', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu9_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU9', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu10_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU10', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu11_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU11', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu12_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU12', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu13_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU13', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu14_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU14', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
plot(chu15_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU15', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')


dev.off ();


### Boxplots

b1 = b1[,order(b1[1,])]
colnames(b1)=b1[1,]
b1 = as.data.frame(b1[2:nrow(b1),])

b2 = b2[,order(b2[1,])]
colnames(b2)=b2[1,]
b2 = as.data.frame(b2[2:nrow(b2),])

b3 = b3[,order(b3[1,])]
colnames(b3)=b3[1,]
b3 = as.data.frame(b3[2:nrow(b3),])

b4 = b4[,order(b4[1,])]
colnames(b4)=b4[1,]
b4 = as.data.frame(b4[2:nrow(b4),])

b5 = b5[,order(b5[1,])]
colnames(b5)=b5[1,]
b5 = as.data.frame(b5[2:nrow(b5),])

b6 = b6[,order(b6[1,])]
colnames(b6)=b6[1,]
b6 = as.data.frame(b6[2:nrow(b6),])

b7 = b7[,order(b7[1,])]
colnames(b7)=b7[1,]
b7 = as.data.frame(b7[2:nrow(b7),])

b8 = b8[,order(b8[1,])]
colnames(b8)=b8[1,]
b8 = as.data.frame(b8[2:nrow(b8),])

b9 = b9[,order(b9[1,])]
colnames(b9)=b9[1,]
b9 = as.data.frame(b9[2:nrow(b9),])

b10 = b10[,order(b10[1,])]
colnames(b10)=b10[1,]
b10 = as.data.frame(b10[2:nrow(b10),])

b11 = b11[,order(b11[1,])]
colnames(b11)=b11[1,]
b11 = as.data.frame(b11[2:nrow(b11),])

b12 = b12[,order(b12[1,])]
colnames(b12)=b12[1,]
b12 = as.data.frame(b12[2:nrow(b12),])

b13 = b13[,order(b13[1,])]
colnames(b13)=b13[1,]
b13 = as.data.frame(b13[2:nrow(b13),])

b14 = b14[,order(b14[1,])]
colnames(b14)=b14[1,]
b14 = as.data.frame(b14[2:nrow(b14),])

b15 = b15[,order(b15[1,])]
colnames(b15)=b15[1,]
b15 = as.data.frame(b15[2:nrow(b15),])


png(filename= "boxplot_threshold_coverage_all_strains.png", width=7000, height=7000)


par(mfrow=c(15,1))
boxplot(b1, main='CHU1 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')  
boxplot(b2, main='CHU2 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')
boxplot(b3, main='CHU3 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')  
boxplot(b4, main='CHU4 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')
boxplot(b5, main='CHU5 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')  
boxplot(b6, main='CHU6 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')
boxplot(b7, main='CHU7 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')  
boxplot(b8, main='CHU8 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')  
boxplot(b9, main='CHU9 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')  
boxplot(b10, main='CHU10 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')  
boxplot(b11, main='CHU11 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')  
boxplot(b12, main='CHU12 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')  
boxplot(b13, main='CHU13 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')  
boxplot(b14, main='CHU14 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')  
boxplot(b15, main='CHU15 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')  


dev.off ();



###############################################################################
#Multiple lines plot

      #Number of OGs
library(RColorBrewer)
n <- 15
qual_col_pals = brewer.pal.info[brewer.pal.info$category == 'qual',]
col_vector = unlist(mapply(brewer.pal, qual_col_pals$maxcolors, rownames(qual_col_pals)))

png(filename= "OGs_number_multiple_lines_all_strains_1-25.png", width=4500, height=1200)

par(cex.main=7, cex.lab=6, cex.axis=6, mar=c(20,20,10,10),mgp=c(10,5,2))

plot(chu1$threshold,
     chu1$number,
     type="b",
     col = col_vector[1], 
     lwd=4, 
     main = "Number of OGs depending on the minimal coverage threshold, for the 15 strains",
     ylab = "Number of OGs \n",
     xlab = "Minimal coverage threshold",
     ylim = c(1000,2100))

# Lines
lines(chu2$threshold,chu2$number,col=col_vector[2], lwd=4)
lines(chu3$threshold,chu3$number,col=col_vector[3], lwd=4)
lines(chu4$threshold,chu4$number,col=col_vector[4], lwd=4)
lines(chu5$threshold,chu5$number,col=col_vector[5], lwd=4)
lines(chu6$threshold,chu6$number,col=col_vector[6], lwd=4)
lines(chu7$threshold,chu7$number,col=col_vector[7], lwd=4)
lines(chu8$threshold,chu8$number,col=col_vector[8], lwd=4)
lines(chu9$threshold,chu9$number,col=col_vector[9], lwd=4)
lines(chu10$threshold,chu10$number,col=col_vector[10], lwd=4)
lines(chu11$threshold,chu11$number,col=col_vector[11], lwd=4)
lines(chu12$threshold,chu12$number,col=col_vector[12], lwd=4)
lines(chu13$threshold,chu13$number,col=col_vector[13], lwd=4)
lines(chu14$threshold,chu14$number,col=col_vector[14], lwd=4)
lines(chu15$threshold,chu15$number,col=col_vector[15], lwd=4)


# Add legend to plot 
legend("bottomleft", 
       inset=.05, 
       cex = 3, 
       title="CHUV Strains", 
       c("CHUV01","CHUV02","CHUV03","CHUV04", "CHUV05","CHUV06","CHUV07","CHUV08", "CHUV09", "CHUV10", "CHUV11","CHUV12","CHUV13", "CHUV14", "CHUV15"), 
       ncol=5, 
       lty=c(1,1), 
       lwd=c(5,5), 
       col=c(col_vector[1],col_vector[2],col_vector[3],col_vector[4],col_vector[5],col_vector[6],col_vector[7],col_vector[8],col_vector[9],col_vector[10],col_vector[11],col_vector[12],col_vector[13],col_vector[14],col_vector[15]), 
       bg="grey96")

dev.off ();


###coverage
png(filename= "cov_multiple_lines_all_strains_1-25.png", width=2000, height=2100)

par(cex.main=5, cex.lab=4, cex.axis=4,  mgp=c(10,5,2), mar=c(15,20,15,15)+0.1)

plot(chu1_cov$threshold,
     chu1_cov$med,
     type="l",
     col = col_vector[1], 
     lwd=4, 
     main = "Coverage evolution depending on the \nminimal coverage threshold, for the 15 strains\n",
     ylab = "Coverage \n",
     xlab = "\nMinimal coverage threshold",
     ylim=c(0,275))

# Lines
lines(chu2_cov$threshold,chu2_cov$med,col=col_vector[2], lwd=4)
lines(chu3_cov$threshold,chu3_cov$med,col=col_vector[3], lwd=4)
lines(chu4_cov$threshold,chu4_cov$med,col=col_vector[4], lwd=4)
lines(chu5_cov$threshold,chu5_cov$med,col=col_vector[5], lwd=4)
lines(chu6_cov$threshold,chu6_cov$med,col=col_vector[6], lwd=4)
lines(chu7_cov$threshold,chu7_cov$med,col=col_vector[7], lwd=4)
lines(chu8_cov$threshold,chu8_cov$med,col=col_vector[8], lwd=4)
lines(chu9_cov$threshold,chu9_cov$med,col=col_vector[9], lwd=4)
lines(chu10_cov$threshold,chu10_cov$med,col=col_vector[10], lwd=4)
lines(chu11_cov$threshold,chu11_cov$med,col=col_vector[11], lwd=4)
lines(chu12_cov$threshold,chu12_cov$med,col=col_vector[12], lwd=4)
lines(chu13_cov$threshold,chu13_cov$med,col=col_vector[13], lwd=4)
lines(chu14_cov$threshold,chu14_cov$med,col=col_vector[14], lwd=4)
lines(chu15_cov$threshold,chu15_cov$med,col=col_vector[15], lwd=4)


# Add legend to plot 
legend("bottom", 
       inset=c(-0.2,0), 
       cex = 3, 
       title="CHUV Strains", 
       c("CHUV01","CHUV02","CHUV03","CHUV04", "CHUV05","CHUV06","CHUV07","CHUV08", "CHUV09", "CHUV10", "CHUV11","CHUV12","CHUV13", "CHUV14", "CHUV15"), 
       ncol=5, 
       lty=c(1,1), 
       lwd=c(5,5), 
       col=c(col_vector[1],col_vector[2],col_vector[3],col_vector[4],col_vector[5],col_vector[6],col_vector[7],col_vector[8],col_vector[9],col_vector[10],col_vector[11],col_vector[12],col_vector[13],col_vector[14],col_vector[15]), 
       bg="grey96")

dev.off();
