# -*- coding: utf-8 -*-
"""
Created on Wed Sep 26 14:19:25 2018

@author: marie
"""

### Normalize all distances in the trees:

from ete3 import Tree
import os
import numpy as np
import matplotlib.pyplot as plt
import operator
import pandas as pd
from functools import reduce

path = "C:\\Users\\marie\\Documents\\PdM\\Saureus\\trees_comparisons\\Trees\\dna_tree\\bootstrap\\contrees"
os.chdir(path)



tree1=Tree("DNA_tree_R2T_GTR+R7_alrtbb_clean.contree", format=0)
#tree2=Tree("DNA_tree_R2T_GTR+R7_alrtbb_Greub.contree", format=0)
tree2=Tree("greub_rooted.nwk", format=0)# rooted the same way than the others
#tree3=Tree("DNA_tree_R2T_GTR+R7_alrtbb_cross.contree", format=0)
tree4=Tree("DNA_tree_R2T_GTR+R7_alrtbb_raw.contree", format=0)
tree5=Tree("DNA_tree_R2T_GTR+R7_alrtbb_further.contree", format=0)

### raw reads 16 references
path= "C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/snippy_comparison_raw_reads_MW2/R2T_pipeline"
tree3=Tree("C:/Users/marie/Documents/PdM/Saureus/SNP_comparison/snippy_comparison_raw_reads_MW2/R2T_pipeline/tree_raw .contree", format=0)


trees=[tree2,tree1,tree4, tree3,tree5]
lab=["Core genome (16 references)","Trimmed reads + R2T (16 references)",  "Raw reads + R2T (16 references)","Raw reads + R2T (32 references)", "Raw reads + R2T (7 references)"]


leaves_names=[]

    
###Get lists with the names of the leaves    
for tree in trees:
    li=[]

    for leaf in tree:
        li.append(leaf.name)
    leaves_names.append(li)
    

###Create a dictionnary containing for the 4 trees, the distance between each leaf and the root. 
dist_val=[]

for i,tree in enumerate(trees):
    d={}
    temp=0
    for leaf in tree:
        d[leaf.name]=tree.get_distance(leaf)

    dist_val.append(d)    

#For each tree, find the longest distance between a leaf and the root
    
max_dist_val=[]
for dico in dist_val:
    data=(max(dico.items(), key=operator.itemgetter(1))[0], dico[max(dico.items(), key=operator.itemgetter(1))[0]])
    max_dist_val.append(data)
    
    
 #For each tree, find the longest distance between a leaf and the root
    
max_dist_val=[]
for dico in dist_val:
    data=(max(dico.items(), key=operator.itemgetter(1))[0], dico[max(dico.items(), key=operator.itemgetter(1))[0]])
    max_dist_val.append(data)



max_val_per_tree = {}
for i,tree in enumerate(trees):
    max_val_per_tree[lab[i]]=max_dist_val[i][1]
   
###For each tree, divide every length by the maximum value


#n = 4
#m = 4
#norm_lengths = [0] * n
#for i in range(n):
#    norm_lengths[i] = [0] * m


###A = MRCA's parent. B = MRCA cluster.


            ### TREE1: clean data
            ##C0
            
n_dist_t1_c0 = {}
        
t1MRCAc0 = tree1.get_common_ancestor(["CHU09", "CHU10", "CHU11"])
t1ac0=tree1.get_common_ancestor([t1MRCAc0,"CHU15"])

for child in t1MRCAc0.get_descendants():
    if child.name:
    #print(child.name)
        print(tree1.get_distance(t1MRCAc0,child))
        n_dist_t1_c0[("B", child.name)] = tree1.get_distance(t1MRCAc0,child)/max_dist_val[1][1]
        n_dist_t1_c0[("B", "A")] = tree1.get_distance(t1MRCAc0,t1ac0)/max_dist_val[1][1]
        

            ##C1

t1MRCAc1 = tree1.get_common_ancestor(["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"])
t1ac1=tree1.get_common_ancestor([t1MRCAc1,"CHU13"])

n_dist_t1_c1 = {}


for child in t1MRCAc1.get_descendants():
    if child.name:

    #print(child.name)
        n_dist_t1_c1[("B", child.name)] = tree1.get_distance(t1MRCAc1,child)/max_dist_val[1][1]
        n_dist_t1_c1[("B", "A")] = tree1.get_distance(t1MRCAc1,t1ac1)/max_dist_val[1][1]



            ### TREE2: greub
            ##C0
            
n_dist_t2_c0 = {}
        
t2MRCAc0 = tree2.get_common_ancestor(["CHU09", "CHU10", "CHU11"])
t2ac0=tree2.get_common_ancestor([t2MRCAc0,"JKD6008"])

for child in t2MRCAc0.get_descendants():
    if child.name:

    #print(child.name)
        n_dist_t2_c0[("B", child.name)] = tree2.get_distance(t2MRCAc0,child)/max_dist_val[0][1]
        n_dist_t2_c0[("B", "A")] = tree2.get_distance(t2MRCAc0,t2ac0)/max_dist_val[0][1]

            ##C1

t2MRCAc1 = tree2.get_common_ancestor(["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"])
t2ac1=tree2.get_common_ancestor([t2MRCAc1,"CHU13"])

n_dist_t2_c1 = {}

for child in t2MRCAc1.get_descendants():
    if child.name:

    #print(child.name)
        n_dist_t2_c1[("B", child.name)] = tree2.get_distance(t2MRCAc1,child)/max_dist_val[0][1]
        n_dist_t2_c1[("B", "A")] = tree2.get_distance(t2MRCAc1,t2ac1)/max_dist_val[0][1]



 ### TREE3: cross references data
            ##C0
            
n_dist_t3_c0 = {}

            
t3MRCAc0 = tree3.get_common_ancestor(["CHU09", "CHU10", "CHU11"])
t3ac0=tree3.get_common_ancestor([t3MRCAc0,"CHU15"])

for child in t3MRCAc0.get_descendants():
    if child.name:
    #print(child.name)
        n_dist_t3_c0[("B", child.name)] = tree3.get_distance(t3MRCAc0,child)/max_dist_val[3][1]
        n_dist_t3_c0[("B", "A")] = tree3.get_distance(t3MRCAc0,t3ac0)/max_dist_val[3][1]

            ##C1
            
n_dist_t3_c1 = {}

            
t3MRCAc1 = tree3.get_common_ancestor(["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"])
t3ac1=tree3.get_common_ancestor([t3MRCAc1,"CHU13"])

for child in t3MRCAc1.get_descendants():
    if child.name:
        print(child.name)
        n_dist_t3_c1[("B", child.name)] = tree3.get_distance(t3MRCAc1,child)/max_dist_val[3][1]
        n_dist_t3_c1[("B", "A")] = tree3.get_distance(t3MRCAc1,t3ac1)/max_dist_val[3][1]



### TREE4: raw references data
            ##C0
            
n_dist_t4_c0 = {}
 
           
t4MRCAc0 = tree4.get_common_ancestor(["CHU09", "CHU10", "CHU11"])
t4ac0=tree4.get_common_ancestor([t4MRCAc0,"CHU15"])

for child in t4MRCAc0.get_descendants():
    if child.name:
    #print(child.name)
        n_dist_t4_c0[("B", child.name)] = tree4.get_distance(t4MRCAc0,child)/max_dist_val[2][1]
        n_dist_t4_c0[("B", "A")] = tree4.get_distance(t4MRCAc0,t4ac0)/max_dist_val[2][1]

            ##C1
            
n_dist_t4_c1 = {}

            
t4MRCAc1 = tree4.get_common_ancestor(["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"])
t4ac1=tree4.get_common_ancestor([t4MRCAc1,"CHU13"])

for child in t4MRCAc1.get_descendants():
    if child.name:
    #print(child.name)
        n_dist_t4_c1[("B", child.name)] = tree4.get_distance(t4MRCAc1,child)/max_dist_val[2][1]
        n_dist_t4_c1[("B", "A")] = tree4.get_distance(t4MRCAc1,t4ac1)/max_dist_val[2][1]


### TREE5: further strains
            ##C0
            
n_dist_t5_c0 = {}
 
           
t5MRCAc0 = tree5.get_common_ancestor(["CHU09", "CHU10", "CHU11"])
t5ac0=tree5.get_common_ancestor([t5MRCAc0,"CHU15"])

for child in t5MRCAc0.get_descendants():
    if child.name:
    #print(child.name)
        n_dist_t5_c0[("B", child.name)] = tree5.get_distance(t5MRCAc0,child)/max_dist_val[4][1]
        n_dist_t5_c0[("B", "A")] = tree5.get_distance(t5MRCAc0,t5ac0)/max_dist_val[4][1]

            ##C1
            
n_dist_t5_c1 = {}

            
t5MRCAc1 = tree5.get_common_ancestor(["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"])
t5ac1=tree5.get_common_ancestor([t5MRCAc1,"CHU13"])

for child in t5MRCAc1.get_descendants():
    if child.name:
    #print(child.name)
        n_dist_t5_c1[("B", child.name)] = tree5.get_distance(t5MRCAc1,child)/max_dist_val[4][1]
        n_dist_t5_c1[("B", "A")] = tree5.get_distance(t5MRCAc1,t5ac1)/max_dist_val[4][1]






###Create data frames grouping dictionnaries by cluster. 
labels=lab

df_c0 = pd.DataFrame([n_dist_t2_c0,n_dist_t1_c0, n_dist_t4_c0,n_dist_t3_c0, n_dist_t5_c0], index=labels)
df_c0p= pd.DataFrame([n_dist_t2_c0,n_dist_t1_c0, n_dist_t3_c0,n_dist_t4_c0, n_dist_t5_c0], index=labels)
df_c0p = df_c0p.transpose()

df_c1 = pd.DataFrame([n_dist_t2_c1,n_dist_t1_c1, n_dist_t4_c1, n_dist_t3_c1, n_dist_t5_c1], index=labels)
df_c1p = pd.DataFrame([n_dist_t2_c1,n_dist_t1_c1, n_dist_t3_c1, n_dist_t4_c1, n_dist_t5_c1], index=labels)
df_c1p = df_c1p.transpose()


### Plot dist A-B for each tree
# For c0

df_c1_n=df_c1p.loc[[('B', 'A')]]


df_c0_n=df_c0p.loc[[('B', 'A')]]


barWidth = 0.25

ab=pd.concat([df_c0_n, df_c1_n])


ax=ab.plot(kind='bar', rot=0)
       
plt.xlabel('Clusters of CHUV strains', fontweight='bold')
plt.xticks([r for r in range(len(ab))], ['C0', 'C1'])
ax.legend(bbox_to_anchor=(0.9, 0.9),
           bbox_transform=plt.gcf().transFigure, title="Pipelines")
ax.set_title("Normalized length for the 5 trees\nfor branch leading to cluster C0 and C1")

# "Activate" minor ticks
ax.minorticks_on()

# Get location of the center of each rectangle
rects_locs = map(lambda x: x.get_x() +x.get_width()/2., ax.patches)

#Modify position legends
ax.legend(bbox_to_anchor=(1.2, 0.9),
           bbox_transform=plt.gcf().transFigure, title="Minimal coverage threshold")

# Add title
ax.set_title("Normalized length for the 5 trees for branch leading to cluster C0",
          size=16, verticalalignment='bottom')
ax.set_xlabel("Trees and branches labels")
ax.set_ylabel("Normalized length")

# Labels for the rectangles
new_ticks = reduce(lambda x, y: x + y, map(lambda x: [x] * df_c0_n.shape[0], df_c0_n.columns.tolist()))

# Set the labels
from matplotlib import ticker
#ax.xaxis.set_minor_formatter(ticker.FixedFormatter(new_ticks))  #add the custom ticks

# Move the category label further from x-axis
ax.tick_params(axis='x', which='major', pad=15)

# Remove minor ticks where not necessary
ax.tick_params(axis='x',which='both', top='off')
ax.tick_params(axis='y',which='both', left='off', right = 'off')






###Get the normalized lengths within the clusters and calculate their mean and plot the means

df_c0_new=df_c0p.loc[[('B', 'A'),('B', 'CHU09'), ('B', 'CHU10'), ('B', 'CHU11')]]
df_c1_new=df_c1p.loc[[('B', 'A'),('B', 'CHU01'),('B', 'CHU02'),('B', 'CHU03'),('B', 'CHU04'),('B', 'CHU05'),('B', 'CHU06'),('B', 'CHU07'),('B', 'CHU08')]]


df_c1_clus = df_c1_new.loc[[('B', 'CHU01'),('B', 'CHU02'),('B', 'CHU03'),('B', 'CHU04'),('B', 'CHU05'),('B', 'CHU06'),('B', 'CHU07'),('B', 'CHU08')]]
df_c0_clus = df_c0_new.loc[[('B', 'CHU09'),('B', 'CHU10'),('B', 'CHU11')]]


df_c1_mean=df_c1_clus.mean()
df_c0_mean=df_c0_clus.mean()



d = df_c0_mean.plot(kind='bar',figsize=(10,10), rot = 90, color=(0.2, 0.4, 0.6, 0.6))


# Add title
d.set_title("Average of normalized length for the 5 trees \n for branch lengths within C0",
          size=20) #, verticalalignment='bottom')
d.set_xlabel("Trees", size = 18)
d.set_ylabel("Average normalized length", size = 18)
plt.xticks(size=15)


d = df_c1_mean.plot(kind='bar',figsize=(10,10), rot = 90, color=(0.2, 0.4, 0.6, 0.6))


# Add title
#d.set_title("Average of normalized length for the 5 trees \n for branch lengths within C1",
          size=20) #, verticalalignment='bottom')
d.set_xlabel("Trees", size = 18)
d.set_ylabel("Average normalized length", size = 18)
plt.xticks(size=15)

dif=df_c1_mean-df_c0_mean

#####
df_c1_clus_red= df_c1_clus
df_c0_clus_red= df_c0_clus


std=df_c1_clus_red.std(axis=0, skipna=None, level=None, ddof=1, numeric_only=None)


df_c1_mean=df_c1_clus_red.mean()
df_c0_mean=df_c0_clus_red.mean()

df_c0_mean=df_c0_mean.to_frame()
df_c1_mean=df_c1_mean.to_frame()


df4=pd.concat([df_c0_mean, df_c1_mean], axis=1)
#df4=df4.iloc[::1].T
df4=df4.iloc[::1]

d1=df4.plot.bar(figsize=(15,5), color=('b', 'c'), yerr=std)

d1.set_xlabel("Trees", size = 18)
d1.set_ylabel("Average normalized length ", size = 18)
d1.legend("topleft")
#####
