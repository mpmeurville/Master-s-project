# -*- coding: utf-8 -*-
"""
Created on Tue Sep 25 11:34:10 2018

@author: marie
"""


from ete3 import Tree
import os
import numpy
import matplotlib.pyplot as plt


path = "C:\\Users\\marie\\Documents\\PdM\\Saureus\\trees_comparisons\\Trees\\dna_tree\\bootstrap\\contrees"
os.chdir(path)

tree1=Tree("DNA_tree_R2T_GTR+R7_alrtbb_clean.contree", format=0)
tree2=Tree("DNA_tree_R2T_GTR+R7_alrtbb_Greub.contree", format=0)
tree3=Tree("DNA_tree_R2T_GTR+R7_alrtbb_cross.contree", format=0)
tree4=Tree("DNA_tree_R2T_GTR+R7_alrtbb_raw.contree", format=0)
tree5=Tree("DNA_tree_R2T_GTR+R7_alrtbb_further.contree", format=0)


t1=[[] for x in range(5)]

trees=[tree2, tree1, tree4, tree3, tree5]

for i in range(4):
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
    
import pandas

pd = pandas.DataFrame(t1)
pd.to_csv("bootstrap_values.csv.csv")
    
    
t1[0]=list(filter(lambda a: a != 1.0, t1[0]))
t1[1]=list(filter(lambda a: a != 1.0, t1[1]))
t1[2]=list(filter(lambda a: a != 1.0, t1[2]))
t1[3]=list(filter(lambda a: a != 1.0, t1[3]))



# Create a figure instance
fig = plt.figure(1, figsize=(9, 6))

# Create an axes instance
ax = fig.add_subplot(111)
ax.set_title("Boxplots of bootstrap values for 4 trees", fontsize=20)
ax.set_xlabel('Trees', fontsize=15)
ax.set_ylabel('Bootstrap values', fontsize=15)

# Create the boxplot
bp = ax.boxplot(t1)


              
b=ax.set_xticklabels(["Clean data", "Golden standard", "Raw reads (16 references)", "Raw reads (32 references)"])
plt.setp(b, rotation=45, fontsize=11)

# Save the figure
fig.savefig('bootstrap_boxplot.png', bbox_inches='tight')