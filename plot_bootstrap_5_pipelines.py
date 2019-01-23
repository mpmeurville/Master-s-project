# -*- coding: utf-8 -*-
"""
Created on Tue Sep 25 11:34:10 2018

@author: marie
"""


from ete3 import Tree
import os
import numpy
import matplotlib.pyplot as plt
import re
from collections import defaultdict
from operator import itemgetter

path= "C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/snippy_comparison_raw_reads_MW2/R2T_pipeline/"
tree3=Tree("C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/snippy_comparison_raw_reads_MW2/R2T_pipeline/tree_raw .contree", format=0)


path = "C:\\Users\\marie\\Documents\\PdM\\Saureus\\trees_comparisons\\Trees\\dna_tree\\bootstrap\\contrees"
os.chdir(path)


tree1=Tree("DNA_tree_R2T_GTR+R7_alrtbb_clean.contree", format=0)
tree2=Tree("DNA_tree_R2T_GTR+R7_alrtbb_Greub.contree", format=0)
tree4=Tree("DNA_tree_R2T_GTR+R7_alrtbb_raw.contree", format=0)
tree5=Tree("DNA_tree_R2T_GTR+R7_alrtbb_further.contree", format=0)


t1=[[] for x in range(5)]

trees=[tree2, tree1, tree3, tree4, tree5]


for i in range(5):
    for node in trees[i].traverse("levelorder"):
        #print(node)
        print(node.name)
        #print(node.is_leaf)
        if node.name:
            print("Fuck!")
        else:
        #if node.is_leaf==True:
            print(node.support)
            t1[i].append(node.support)
    
    #print(node.children)
import csv

with open('bootstrap values.csv', 'w') as csvfile:
    wr = csv.writer(csvfile, delimiter=',', quoting=csv.QUOTE_MINIMAL, lineterminator='\n')
    wr.writerows(map(lambda x: [x], t1))
    

    
    
t1[0]=list(filter(lambda a: a != 1.0, t1[0]))
t1[1]=list(filter(lambda a: a != 1.0, t1[1]))
t1[2]=list(filter(lambda a: a != 1.0, t1[2]))
t1[3]=list(filter(lambda a: a != 1.0, t1[3]))
t1[4]=list(filter(lambda a: a != 1.0, t1[4]))

import pandas

pd = pandas.DataFrame(t1)
pd.to_csv("bootstrap_values.csv.csv")

# Create a figure instance
fig = plt.figure(1, figsize=(9, 6))

# Create an axes instance
ax = fig.add_subplot(111)
ax.set_title("Boxplots of bootstrap values for 5 trees", fontsize=20)
ax.set_xlabel('Trees', fontsize=15)
ax.set_ylabel('Bootstrap values', fontsize=15)

# Create the boxplot
bp = ax.boxplot(t1)


              
b=ax.set_xticklabels(["Core genome \n(16 references)", "Trimmed reads + R2T \n(16 references)", "Raw reads + R2T \n(16 references)", "Raw reads + R2T \n(32 references)", "Raw reads + R2T \n(7 references)"])
plt.setp(b, rotation=90, fontsize=11)

# Save the figure
fig.savefig('bootstrap_boxplot.png', bbox_inches='tight')