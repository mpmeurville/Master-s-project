#install.packages("treeman")

library(treeman)
library(ggplot2)
library(stringr)
library(RColorBrewer)


setwd("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/trees/contrees_renamed/C0_C1_collapsed")

#Collapsed

tree_1 <- readTree(file="c_thr_gr.c.c")
tree_2 <- readTree(file="c_thr_1.c.c")
tree_3 <- readTree(file="c_thr_2.c.c")
tree_4 <- readTree(file="c_thr_3.c.c")
tree_5 <- readTree(file="c_thr_5.c.c")
tree_6 <- readTree(file="c_thr_10.c.c")
tree_7 <- readTree(file="c_thr_20.c.c")
tree_8 <- readTree(file="c_thr_25.c.c")
tree_9 <- readTree(file="c_thr_30.c.c")
tree_10 <- readTree(file="c_thr_50.c.c")
tree_11 <- readTree(file="c_thr_70.c.c")


RF=c(as.integer(calcDstRF(tree_1, tree_1)), as.integer(calcDstRF(tree_1, tree_2)), as.integer(calcDstRF(tree_1, tree_3)), as.integer(calcDstRF(tree_1, tree_4)), as.integer(calcDstRF(tree_1, tree_5)), as.integer(calcDstRF(tree_1, tree_6)), as.integer(calcDstRF(tree_1, tree_7)), as.integer(calcDstRF(tree_1, tree_8)), as.integer(calcDstRF(tree_1, tree_9)), as.integer(calcDstRF(tree_1, tree_10)), as.integer(calcDstRF(tree_1, tree_11)) )
RF[11]="08"

thresh=c("00", "01", "02", "03", "05", "10", "20", "25", "30", "50", "70")

t=cbind(RF, thresh)

ggplot(as.data.frame(t), aes(x = t[,2], y = t[,1])) +
  geom_bar(stat="identity",fill="steelblue") + ggtitle("RF of trees compared to greub") + xlab("Tree (for each minimal coverage threshold)") + ylab("Number of CHUV strains") + 
  theme(text = element_text(size=16),axis.text.x = element_text(angle=90, hjust=1)) +   theme(plot.title = element_text(hjust = 0.5))



#not collapsed
setwd("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/trees/contrees_renamed/")


tree_1 <- readTree(file="thr_-1.c")
tree_2 <- readTree(file="thr_1.c")
tree_3 <- readTree(file="thr_2.c")
tree_4 <- readTree(file="thr_3.c")
tree_5 <- readTree(file="thr_5.c")
tree_6 <- readTree(file="thr_10.c")
tree_7 <- readTree(file="thr_20.c")
tree_8 <- readTree(file="thr_25.c")
tree_9 <- readTree(file="thr_30.c")
tree_10 <- readTree(file="thr_50.c")
tree_11 <- readTree(file="thr_70.c")


RF=c(as.integer(calcDstRF(tree_1, tree_1)), as.integer(calcDstRF(tree_1, tree_2)), as.integer(calcDstRF(tree_1, tree_3)), as.integer(calcDstRF(tree_1, tree_4)), as.integer(calcDstRF(tree_1, tree_5)), as.integer(calcDstRF(tree_1, tree_6)), as.integer(calcDstRF(tree_1, tree_7)), as.integer(calcDstRF(tree_1, tree_8)), as.integer(calcDstRF(tree_1, tree_9)), as.integer(calcDstRF(tree_1, tree_10)), as.integer(calcDstRF(tree_1, tree_11)) )

t=cbind(RF, thresh)

ggplot(as.data.frame(t), aes(x = t[,2], y = t[,1])) +
  geom_bar(stat="identity",fill="steelblue") + ggtitle("RF of trees compared to greub") + xlab("Tree (for each minimal coverage threshold)") + ylab("Number of CHUV strains") + 
  theme(text = element_text(size=16),axis.text.x = element_text(angle=90, hjust=1)) +   theme(plot.title = element_text(hjust = 0.5))

