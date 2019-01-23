  setwd('C:/Users/marie/Documents/PdM/Saureus/coverage_tests/CHU02_CHU06')
  
  files <- list.files("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/CHU02_CHU06", recursive=TRUE, full.names=TRUE)
  
  #h=c(0,1,2,3,5,10,20,30,50,70,100,200,500,1000)
  
  
  chu2 = matrix(0,nrow=2,ncol=29)
  #chu2[1,]=as.integer(h)
  rownames(chu2)=c('threshold', 'number of ogs')
  #colnames(chu2)=h
  
  # chu4 = matrix(0,nrow=2,ncol=15)
  # rownames(chu4)=c('threshold', 'number of ogs')
  # #colnames(chu4)=h
  # 
  chu6 = matrix(0,nrow=2,ncol=29)
  rownames(chu6)=c('threshold', 'number of ogs')
  #colnames(chu6)=h
  
  
  chu2_cov = matrix(0,nrow=2,ncol=29)
  #chu2[1,]=as.integer(h)
  rownames(chu2)=c('threshold', 'mean of cov')
  #colnames(chu2)=h
  
  # chu4_cov = matrix(0,nrow=2,ncol=15)
  # rownames(chu4)=c('threshold', 'mean of cov')
  # #colnames(chu4)=h
  # 
  chu6_cov = matrix(0,nrow=2,ncol=29)
  rownames(chu6)=c('threshold', 'mean of cov')
  #colnames(chu6)=h
  
 
  b6=matrix(NA, ncol=29, nrow = 2100)
  #b4=matrix(NA, ncol=15, nrow = 2092)
  b2=matrix(NA, ncol=29, nrow = 2110)
  
  t=0
  
  for (file in files)
  {
    if (basename(file) == 'CHU02_1_all_cov_win.txt'){
      i=as.integer(strsplit(strsplit(file, '/')[[1]][9], '_')[[1]][2])
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
        
  # t=0
  # 
  # for (file in files)
  # {
  #   if (basename(file) == 'CHU04_1_all_cov_win.txt'){
  #     i=as.integer(strsplit(strsplit(file, '/')[[1]][9], '_')[[1]][4])
  #     #print(i)
  #     #print(file)
  #     t=t+1
  #     temp= try(read.table(file, sep=','))
  #     
  #     print(nrow(temp))
  #     
  #     if (inherits(temp, 'try-error')){
  #       print('A')
  #       chu4[1,t]=i
  #       chu4[2,t]=0
  #       
  #       chu4_cov[1,t]=i
  #       chu4_cov[2,t]=0
  #       
  #       b4[1,t]=i
  #       
  #     }
  #     else
  #     {
  #       
  #       
  #       chu4[1,t]=i
  #       
  #       #print(nrow(temp))
  #       chu4[2,t]=nrow(temp)
  #       
  #       chu4_cov[1,t]=i
  #       chu4_cov[2,t]=mean(temp[,4])
  #       
  #       for (j in 2:nrow(b4)){
  #         b4[1,t]=i
  #         b4[j,t]=temp[j,4]
  #         
  #         
  #       }              }
  #     
  #   }
  #   
  # }
  # 
  
  t=0
  
  for (file in files)
  {
    if (basename(file) == 'CHU06_1_all_cov_win.txt'){
      i=as.integer(strsplit(strsplit(file, '/')[[1]][9], '_')[[1]][2])
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
  
  
  library(ggplot2)
  
  threshold=chu2[1,]
  number=chu2[2,]  
  chu2=data.frame(threshold, number)
  chu2=chu2[order(threshold),]
  #chu2=chu2[1:12,]
  
  # threshold=chu4[1,]
  # number=chu4[2,]  
  # chu4=data.frame(threshold, number)
  # chu4=chu4[order(threshold),]
  # chu4=chu4[1:12,]
  
  threshold=chu6[1,]
  number=chu6[2,]  
  chu6=data.frame(threshold, number)
  chu6=chu6[order(threshold),]
  #chu6=chu6[1:12,]
  
  png(filename= "threshold_number_ogs_all_strains1-1000.png", width=1000, height=1200)
  
  par(mfrow=c(2,1), cex.axis= 3, cex.lab=4, cex.main=5, mar=c(9,6,9,5)+.1)
  plot(chu2, type='b',lwd=3, cex=2, main='Number of OGs for \nthresholds for CHU2', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
  #plot(chu4, type='b', main='Number of OGs for thresholds for CHU4', xlab='Minimal coverage threshold', ylab='Number of OGs', cex.axis=1.5, cex.main=2)
  plot(chu6, type='b',lwd=3,cex=2,  main='Number of OGs for \nthresholds for CHU6', xlab='\nMinimal coverage threshold', ylab='Number of OGs')
  
  dev.off ();
  ### Plot mean cov for threshold between 1-100
  
  
  threshold=chu2_cov[1,]
  med=chu2_cov[2,] 
  chu2_cov=data.frame(threshold, med)
  chu2_cov=chu2_cov[order(threshold),]
  #chu2_cov=chu2_cov[1:13,]
  
  # threshold=chu4_cov[1,]
  # med=chu4_cov[2,] 
  # chu4_cov=data.frame(threshold, med)
  # chu4_cov=chu4_cov[order(threshold),]
  # chu4_cov=chu4_cov[1:13,]
  
  threshold=chu6_cov[1,]
  med=chu6_cov[2,] 
  chu6_cov=data.frame(threshold, med)
  chu6_cov=chu6_cov[order(threshold),]
  #chu6_cov=chu6_cov[1:13,]
  
  png(filename= "threshold_coverage_all_strains_mean1-1000.png", width=900, height=1200)
  
  par(mfrow=c(2,1), cex.axis= 3, cex.lab=4, cex.main=5, mar=c(9,9,9,5)+.1)
  plot(chu2_cov, type ='b' , cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU2', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
  #plot(chu4_cov, type ='b' ,main='Mean coverage of OGs for each threshold for strain CHU4', xlab='Minimal coverage thresholds', ylab='Mean coverage', cex.axis=1.5, cex.main=2)
  plot(chu6_cov, type ='b' ,cex=2, lwd=3 , main='Mean coverage of OGs f\nfor thresholds for CHU6', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
  
  dev.off ();
  
  
  ########################################################################################################¶
  ### SAME but other types of graphs
  
  
  
  
  
  setwd('C:/Users/marie/Documents/PdM/Saureus/coverage_tests/second_tests')
  
  files <- list.files("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/second_tests", recursive=TRUE, full.names=TRUE)
  
  #h=c(0,1,2,3,5,10,20,30,50,70,100,200,500,1000)
  
  
  chu2 = matrix(0,nrow=2,ncol=29)
  #chu2[1,]=as.integer(h)
  rownames(chu2)=c('threshold', 'number of ogs')
  #colnames(chu2)=h
  
  # chu4 = matrix(0,nrow=2,ncol=15)
  # rownames(chu4)=c('threshold', 'number of ogs')
  # #colnames(chu4)=h
  # 
  chu6 = matrix(0,nrow=2,ncol=29)
  rownames(chu6)=c('threshold', 'number of ogs')
  #colnames(chu6)=h
  
  
  chu2_cov = matrix(0,nrow=2,ncol=29)
  #chu2[1,]=as.integer(h)
  rownames(chu2)=c('threshold', 'mean of cov')
  #colnames(chu2)=h
  
  # chu4_cov = matrix(0,nrow=2,ncol=15)
  # rownames(chu4)=c('threshold', 'mean of cov')
  # #colnames(chu4)=h
  # 
  chu6_cov = matrix(0,nrow=2,ncol=29)
  rownames(chu6)=c('threshold', 'mean of cov')
  #colnames(chu6)=h
  
  
  b6=matrix(NA, ncol=29, nrow = 2100)
  #b4=matrix(NA, ncol=15, nrow = 2092)
  b2=matrix(NA, ncol=29, nrow = 2110)
  
  t=0
  
  for (file in files)
  {
    if (basename(file) == 'CHU02_1_all_cov_win.txt'){
      i=as.integer(strsplit(strsplit(file, '/')[[1]][9], '_')[[1]][2])
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
  
  # t=0
  # 
  # for (file in files)
  # {
  #   if (basename(file) == 'CHU04_1_all_cov_win.txt'){
  #     i=as.integer(strsplit(strsplit(file, '/')[[1]][9], '_')[[1]][4])
  #     #print(i)
  #     #print(file)
  #     t=t+1
  #     temp= try(read.table(file, sep=','))
  #     
  #     print(nrow(temp))
  #     
  #     if (inherits(temp, 'try-error')){
  #       print('A')
  #       chu4[1,t]=i
  #       chu4[2,t]=0
  #       
  #       chu4_cov[1,t]=i
  #       chu4_cov[2,t]=0
  #       
  #       b4[1,t]=i
  #       
  #     }
  #     else
  #     {
  #       
  #       
  #       chu4[1,t]=i
  #       
  #       #print(nrow(temp))
  #       chu4[2,t]=nrow(temp)
  #       
  #       chu4_cov[1,t]=i
  #       chu4_cov[2,t]=mean(temp[,4])
  #       
  #       for (j in 2:nrow(b4)){
  #         b4[1,t]=i
  #         b4[j,t]=temp[j,4]
  #         
  #         
  #       }              }
  #     
  #   }
  #   
  # }
  # 
  
  t=0
  
  for (file in files)
  {
    if (basename(file) == 'CHU06_1_all_cov_win.txt'){
      i=as.integer(strsplit(strsplit(file, '/')[[1]][9], '_')[[1]][2])
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
  
  
  ### Plot number OGs for threshold between 1-100
  
  
  threshold=chu2[1,]
  number=chu2[2,]  
  chu2=data.frame(threshold, number)
  chu2=chu2[order(threshold),]
  chu2=chu2[1:20,]
  
  # threshold=chu4[1,]
  # number=chu4[2,]  
  # chu4=data.frame(threshold, number)
  # chu4=chu4[order(threshold),]
  # chu4=chu4[1:8,]
  
  threshold=chu6[1,]
  number=chu6[2,]  
  chu6=data.frame(threshold, number)
  chu6=chu6[order(threshold),]
  chu6=chu6[1:20,]
  
  png(filename= "threshold_number_ogs_all_strains1-100.png", width=900, height=1200)
  
  
  par(mfrow=c(2,1), cex.axis= 3, cex.lab=4, cex.main=5, mar=c(9,9,9,5)+.1)
  plot(chu2, type='b', cex=2,  lwd=3 , main='Number of OGs \nfor thresholds for CHU2', xlab='Minimal coverage threshold', ylab='Number of OGs')
  #plot(chu4, type='b', main='Number of OGs for thresholds for CHU4', xlab='Minimal coverage threshold', ylab='Number of OGs', cex.axis=1.5, cex.main=2)
  plot(chu6, type='b', cex=2, lwd=3 , main='Number of OGs \nfor thresholds for CHU6', xlab='Minimal coverage threshold', ylab='Number of OGs')
  
  dev.off ();
  
  ### Plot mean cov for threshold between 1-30
  
  
  threshold=chu2_cov[1,]
  med=chu2_cov[2,] 
  chu2_cov=data.frame(threshold, med)
  chu2_cov=chu2_cov[order(threshold),]
  chu2_cov=chu2_cov[1:20,]
  
  # threshold=chu4_cov[1,]
  # med=chu4_cov[2,] 
  # chu4_cov=data.frame(threshold, med)
  # chu4_cov=chu4_cov[order(threshold),]
  # chu4_cov=chu4_cov[1:8,]
  
  threshold=chu6_cov[1,]
  med=chu6_cov[2,] 
  chu6_cov=data.frame(threshold, med)
  chu6_cov=chu6_cov[order(threshold),]
  chu6_cov=chu6_cov[1:20,]
  
  png(filename= "threshold_coverage_all_strains_mean1-100.png", width=900, height=1200)
  
  
  par(mfrow=c(2,1), cex.axis= 3, cex.lab=4, cex.main=5, mar=c(9,9,9,5)+.1)
  plot(chu2_cov, type ='b' ,cex=2, lwd=3 ,main='Mean coverage of OGs \nfor thresholds for CHU2', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
  #plot(chu4_cov, type ='l' ,main='Mean coverage of OGs for each threshold for strain CHU4', xlab='Minimal coverage thresholds', ylab='Mean coverage', cex.axis=1.5, cex.main=2)
  plot(chu6_cov, type ='b' ,cex=2, lwd=3 , main='Mean coverage of OGs \nfor thresholds for CHU6', xlab='Minimal coverage thresholds', ylab='Mean coverage\n')
  
  dev.off ();
  
  ### Boxplots
b2 = b2[,order(b2[1,])]
colnames(b2)=b2[1,]
b2 = as.data.frame(b2[2:nrow(b2),])

# b4 = b4[,order(b4[1,])]
# colnames(b4)=b4[1,]
# b4 = as.data.frame(b4[2:nrow(b4),])

b6 = b6[,order(b6[1,])]
colnames(b6)=b6[1,]
b6 = as.data.frame(b6[2:nrow(b6),])


par(mfrow=c(2,1))
boxplot(b2, main='CHU2 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')  
#boxplot(b4, main='CHU4 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')  
boxplot(b6, main='CHU6 coverage depending on minimal coverage thresholds', xlab='Minimal coverage threshold', ylab='Coverage')




#te=read.table('C:/Users/marie/Documents/PdM/Saureus/coverage_tests/th3_command_10000/CHU02_1_all_cov_win.txt', sep=',', header = T)


