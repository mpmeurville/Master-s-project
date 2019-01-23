setwd('C:/Users/marie/Documents/PdM/Saureus/trees_comparisons/Trees/dna_tree/bootstrap/contrees')

#install.packages('ggpubr')
library(ggpubr)

boot=read.csv('bootstrap_values.csv')


cl=ggdensity(boot$Clean, 
          main = "Density plot of Clean bootstraps",
          xlab = "Bootstrap values")
gr=ggdensity(boot$Greub, 
          main = "Density plot of Greub bootstraps",
          xlab = "Bootstrap values")
cr=ggdensity(boot$Cross, 
          main = "Density plot of Cross bootstraps",
          xlab = "Bootstrap values")
ra=ggdensity(boot$Raw, 
          main = "Density plot of Raw bootstraps",
          xlab = "Bootstrap values")

ggarrange(cl,gr,cr,ra, ncol = 2, nrow = 2)