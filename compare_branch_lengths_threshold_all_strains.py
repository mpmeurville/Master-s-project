# -*- coding: utf-8 -*-
"""
Created on Tue Nov  6 11:25:18 2018

@author: marie
"""

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

treeGreub=Tree("DNA_tree_R2T_GTR+R7_alrtbb_Greub.contree", format=0)


path = "C:\\Users\\marie\\Documents\\PdM\Saureus\\coverage_tests\\all_strains_true\\trees\\contrees"
os.chdir(path)


tree0=Tree("DNA_tree_R2T_GTR+R7_alrtbb_thr_0.contree", format=0)
tree1=Tree("DNA_tree_R2T_GTR+R7_alrtbb_thr_1.contree", format=0)
tree2=Tree("DNA_tree_R2T_GTR+R7_alrtbb_thr_2.contree", format=0)
tree3=Tree("DNA_tree_R2T_GTR+R7_alrtbb_thr_3.contree", format=0)
tree5=Tree("DNA_tree_R2T_GTR+R7_alrtbb_thr_5.contree", format=0)
tree10=Tree("DNA_tree_R2T_GTR+R7_alrtbb_thr_10.contree", format=0)
tree20=Tree("DNA_tree_R2T_GTR+R7_alrtbb_thr_20.contree", format=0)
tree25=Tree("DNA_tree_R2T_GTR+R7_alrtbb_thr_25.contree", format=0)
tree30=Tree("DNA_tree_R2T_GTR+R7_alrtbb_thr_30.contree", format=0)
tree50=Tree("DNA_tree_R2T_GTR+R7_alrtbb_thr_50.contree", format=0)
tree70=Tree("DNA_tree_R2T_GTR+R7_alrtbb_thr_70.contree", format=0)
tree100=Tree("DNA_tree_R2T_GTR+R7_alrtbb_thr_100.contree", format=0)
tree200=Tree("DNA_tree_R2T_GTR+R7_alrtbb_thr_200.contree", format=0)


trees=[treeGreub,tree0,tree1,tree2,tree3,tree5,tree10,tree20,tree25,tree30, tree50, tree70, tree100, tree200]#,tree35,tree40,tree45,tree50,tree60,tree70,tree80,tree90,tree100,tree120,tree140,tree160,tree180,tree200,tree250,tree300,tree500,tree1000]
lab=["tg","t0","t1","t2","t3","t5","t10","t20","t25","t30", "t50", "t70", "t100", "t200"]#,"t35","t40","t45","t50","t60","t70","t80","t90","t100","t120","t140","t160","t180","t200","t250","t300","t500","t1000"]


leaves_names=[]

    
###Get lists with the names of the leaves    
for tree in trees:
    li=[]

    for leaf in tree:
        li.append(leaf.name)
    leaves_names.append(li)
    

###Create a dictionnary containing for the 28 trees, the distance between each leaf and the root. 
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


#Write a function that outputs B to child name (dict) and B to A (dict)
    
def  clust0(tree, th, clust, outgroup):
    
    n_dist_c0 = {}
    mrca = tree.get_common_ancestor(clust)
    #print(mrca)
    ac=tree.get_common_ancestor([mrca, outgroup])
    #print(ac)
   

    for child in mrca.get_descendants():
        if child.name: #get only nodes that are a leaf (we don't want intermediate ndoes)
            #print(child.name)
            #print(tree.get_distance(mrca,child))
            #print(tree.get_distance(mrca,child)/max_val_per_tree[th])
            n_dist_c0[("B", child.name)] = tree.get_distance(mrca,child)/max_val_per_tree[th]
            #print(tree.get_distance(mrca,child))
            #print(max_val_per_tree[th])
            #print(n_dist_c0[("B", child.name)])
            
            n_dist_c0[("B", "A")] = tree.get_distance(mrca,ac)/max_val_per_tree[th]
            #print(tree.get_distance(mrca,ac))
            #print(max_val_per_tree[th])
            #print(n_dist_c0[("B", "A")])
   # print(mrca)

    return n_dist_c0

#Production of the dictionaries for each threshold, for
    #cluster0



n_dist_tg_c0=clust0(treeGreub,"tg",["CHU09", "CHU10", "CHU11"], "JKD6008" )

n_dist_t0_c0=clust0(tree0, "t0", ["CHU09", "CHU10", "CHU11"], "CHU15" )
n_dist_t1_c0=clust0(tree1, "t1",["CHU09", "CHU10", "CHU11"], "CHU15" )
n_dist_t2_c0=clust0(tree2,"t2",["CHU09", "CHU10", "CHU11"], "CHU15" )
n_dist_t3_c0=clust0(tree3,"t3",["CHU09", "CHU10", "CHU11"], "CHU15" )
n_dist_t5_c0=clust0(tree5, "t5",["CHU09", "CHU10", "CHU11"], "STAA0" )
n_dist_t10_c0=clust0(tree10, "t10",["CHU09", "CHU10", "CHU11"], "STAA0" )
#n_dist_t15_c0=clust0(tree15,"t15",["CHU09", "CHU10", "CHU11"], "CHU15" )
n_dist_t20_c0=clust0(tree20,"t20",["CHU09", "CHU10", "CHU11"], "CHU15" )
n_dist_t25_c0=clust0(tree25,"t25",["CHU09", "CHU10", "CHU11"], "CHU15" )
n_dist_t30_c0=clust0(tree30,"t30",["CHU09", "CHU10", "CHU11"], "CHU15" )
n_dist_t50_c0=clust0(tree50,"t50",["CHU09", "CHU10", "CHU11"], "CHU15" )
n_dist_t70_c0=clust0(tree70,"t70",["CHU09", "CHU10", "CHU11"], "STAA0" )
n_dist_t100_c0=clust0(tree100,"t100",["CHU09", "CHU10", "CHU11"], "STAA0" )
n_dist_t200_c0=clust0(tree200,"t200",["CHU09", "CHU10", "CHU11"], "STAAC" )

    #cluster1
n_dist_tg_c1=clust0(treeGreub,"tg",["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"], "CHU13" )


n_dist_t0_c1=clust0(tree0,"t0",["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"], "CHU13" )
n_dist_t1_c1=clust0(tree1,"t1",["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"], "CHU13" )
n_dist_t2_c1=clust0(tree2,"t2",["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"], "CHU13" )
n_dist_t3_c1=clust0(tree3,"t3",["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"], "CHU13" )
n_dist_t5_c1=clust0(tree5,"t5",["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"], "CHU13" )
n_dist_t10_c1=clust0(tree10,"t10",["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"], "CHU13" )
#n_dist_t15_c1=clust0(tree15,"t15",["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"], "CHU13" )
n_dist_t20_c1=clust0(tree20,"t20",["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"], "CHU13" )
n_dist_t25_c1=clust0(tree25,"t25",["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"], "CHU13" )
n_dist_t30_c1=clust0(tree30,"t30",["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"], "CHU13" )
n_dist_t50_c1=clust0(tree50,"t50",["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"], "CHU13" )
n_dist_t70_c1=clust0(tree70,"t70",["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"], "CHU13" )
n_dist_t100_c1=clust0(tree100,"t100",["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"], "CHU13" )
n_dist_t200_c1=clust0(tree200,"t200",["CHU01", "CHU02", "CHU03", "CHU04", "CHU05", "CHU06", "CHU07", "CHU08"], "CHU13" )



###Plot by grouping the lengths together: we will have multiple times the tree label.

###Create data frames grouping dictionnaries by cluster. 
labels_c1=["Core genome analysis \n(16 references)","Raw reads + R2T \n+ minimal coverage threshold = 0 \n(16 references)","Raw reads + R2T \n+ minimal coverage threshold = 1\n(16 references)","Raw reads + R2T \n+ minimal coverage threshold = 2\n(16 references)","Raw reads + R2T \n+ minimal coverage threshold = 3\n(16 references)","Raw reads + R2T \n+ minimal coverage threshold = 5\n(16 references)","Raw reads + R2T \n+ minimal coverage threshold = 10\n(16 references)","Raw reads + R2T \n+ minimal coverage threshold = 20\n(16 references)", "Raw reads + R2T \n+ minimal coverage threshold = 25\n(16 references)", "Raw reads + R2T \n+ minimal coverage threshold = 30\n(16 references)", "Raw reads + R2T \n+ minimal coverage threshold = 50\n(16 references)", "Raw reads + R2T \n+ minimal coverage threshold = 70\n(16 references)", "Raw reads + R2T \n+ minimal coverage threshold = 100\n(16 references)", "Raw reads + R2T \n+ minimal coverage threshold = 200\n(16 references)"]

labels_c0=["Core genome analysis \n(16 references)","Raw reads + R2T \n+ minimal coverage threshold = 0 \n(16 references)","Raw reads + R2T \n+ minimal coverage threshold = 1\n(16 references)","Raw reads + R2T \n+ minimal coverage threshold = 2\n(16 references)","Raw reads + R2T \n+ minimal coverage threshold = 3\n(16 references)","Raw reads + R2T \n+ minimal coverage threshold = 5\n(16 references)","Raw reads + R2T \n+ minimal coverage threshold = 10\n(16 references)","Raw reads + R2T \n+ minimal coverage threshold = 20\n(16 references)", "Raw reads + R2T \n+ minimal coverage threshold = 25\n(16 references)", "Raw reads + R2T \n+ minimal coverage threshold = 30\n(16 references)", "Raw reads + R2T \n+ minimal coverage threshold = 50\n(16 references)", "Raw reads + R2T \n+ minimal coverage threshold = 70\n(16 references)", "Raw reads + R2T \n+ minimal coverage threshold = 100\n(16 references)", "Raw reads + R2T \n+ minimal coverage threshold = 200\n(16 references)"]


df_c0 = pd.DataFrame([n_dist_tg_c0, n_dist_t0_c0, n_dist_t1_c0, n_dist_t2_c0, n_dist_t3_c0, n_dist_t5_c0, n_dist_t10_c0, n_dist_t20_c0, n_dist_t25_c0, n_dist_t30_c0,n_dist_t50_c0,n_dist_t70_c0,n_dist_t100_c0,n_dist_t200_c0], index=labels_c0)
df_c0 = df_c0.transpose()

df_c1 = pd.DataFrame([n_dist_tg_c1, n_dist_t0_c1, n_dist_t1_c1, n_dist_t2_c1, n_dist_t3_c1, n_dist_t5_c1, n_dist_t10_c1, n_dist_t20_c1, n_dist_t25_c1, n_dist_t30_c1,n_dist_t50_c1,n_dist_t70_c1,n_dist_t100_c1,n_dist_t200_c1], index=labels_c1)
df_c1 = df_c1.transpose()



### Bar chart
           #Size settings for graphs


SMALL_SIZE = 12
MEDIUM_SIZE = 15
BIGGER_SIZE = 16

plt.rc('font', size=SMALL_SIZE)          # controls default text sizes
plt.rc('axes', titlesize=SMALL_SIZE)     # fontsize of the axes title
plt.rc('axes', labelsize=MEDIUM_SIZE)    # fontsize of the x and y labels
plt.rc('xtick', labelsize=SMALL_SIZE)    # fontsize of the tick labels
plt.rc('ytick', labelsize=SMALL_SIZE)    # fontsize of the tick labels
plt.rc('legend', fontsize=SMALL_SIZE)    # legend fontsize
plt.rc('figure', titlesize=BIGGER_SIZE)  # fontsize of the figure title


        ### Bar chart for c0

df_c0_new=df_c0.loc[[('B', 'A'),('B', 'CHU09'), ('B', 'CHU10'), ('B', 'CHU11')]]

ax = df_c0_new.plot(kind='bar',figsize=(10,10), rot = 0)

# "Activate" minor ticks
ax.minorticks_on()

#Modify position legends
ax.legend(bbox_to_anchor=(1, 0.87),
           bbox_transform=plt.gcf().transFigure, title="Minimal coverage threshold")

# Get location of the center of each rectangle
rects_locs = map(lambda x: x.get_x() +x.get_width()/2., ax.patches)


# Add title
ax.set_title("C0 normalized length for the 28 trees (corresponding to 28 minimal coverage thresholds",
          size=16, verticalalignment='bottom')
ax.set_xlabel("Trees and branches labels")
ax.set_ylabel("Normalized length")

# Labels for the rectangles
new_ticks = reduce(lambda x, y: x + y, map(lambda x: [x] * df_c0_new.shape[0], df_c0_new.columns.tolist()))
#plt.xticks(rotation=90)

# Set the labels
#from matplotlib import ticker
#ax.xaxis.set_minor_formatter(ticker.FixedFormatter(new_ticks))  #add the custom ticks

# Move the category label further from x-axis
ax.tick_params(axis='x', which='major', pad=15)

# Remove minor ticks where not necessary
ax.tick_params(axis='x',which='both', top='off')
ax.tick_params(axis='y',which='both', left='off', right = 'off')




        ### Bar chart for c1
        
df_c1_new=df_c1.loc[[('B', 'A'),('B', 'CHU01'),('B', 'CHU02'),('B', 'CHU03'),('B', 'CHU04'),('B', 'CHU05'),('B', 'CHU06'),('B', 'CHU07'),('B', 'CHU08')]]

        
ax = df_c1_new.plot(kind='bar',figsize=(20,10), rot = 0)

# "Activate" minor ticks
ax.minorticks_on()

# Get location of the center of each rectangle
rects_locs = map(lambda x: x.get_x() +x.get_width()/2., ax.patches)

#Modify position legends
ax.legend(bbox_to_anchor=(1.05, 0.8),
           bbox_transform=plt.gcf().transFigure, title="Minimal coverage threshold")



# Add title
ax.set_title("C1 normalized length for the 28 trees (corresponding to 28 minimal coverage thresholds",
          size=16, verticalalignment='bottom')
ax.set_xlabel("Trees and branches labels")
ax.set_ylabel("Normalized length")

# Labels for the rectangles
new_ticks = reduce(lambda x, y: x + y, map(lambda x: [x] * df_c1_new.shape[0], df_c1_new.columns.tolist()))
#plt.xticks(rotation=90)

# Set the labels
#from matplotlib import ticker
#ax.xaxis.set_minor_formatter(ticker.FixedFormatter(new_ticks))  #add the custom ticks

# Move the category label further from x-axis
ax.tick_params(axis='x', which='major', pad=15)

# Remove minor ticks where not necessary
ax.tick_params(axis='x',which='both', top='off')
ax.tick_params(axis='y',which='both', left='off', right = 'off')



###Zoom on distance for A-B. Both clusters on same graph


        
df_c1_n=df_c1.loc[[('B', 'A')]]
df_c1_n=df_c1_n.rename(index={('B', 'A'): ('B1', 'A1')})
df_c0_n=df_c0.loc[[('B', 'A')]]
df_c0_n=df_c0_n.rename(index={('B', 'A'): ('B0', 'A0')})

ab=pd.concat([df_c0_n, df_c1_n])

my_colors = ('xkcd:sky blue', 'xkcd:dusty purple', 'xkcd:bubblegum pink', 'xkcd:lighter green', 'xkcd:soft green', 'xkcd:marigold', 'xkcd:dusky pink', 'xkcd:light indigo', 'xkcd:red pink', 'xkcd:brick', 'xkcd:dark sea green', 'xkcd:maize', 'xkcd:apricot', 'xkcd:pale brown')
        
ax = ab.plot(kind='bar',figsize=(10,17), rot = 0, color= my_colors)

# "Activate" minor ticks
ax.minorticks_on()

# Get location of the center of each rectangle
rects_locs = map(lambda x: x.get_x() +x.get_width()/2., ax.patches)

#Modify position legends
ax.legend(bbox_to_anchor=(1, 0.9),
           bbox_transform=plt.gcf().transFigure,
           title="Minimal coverage threshold",
           prop={'size': 18})

# Add title
ax.set_title("Normalized length for the trees resulting from \nminimal coverage thresholds for branch leading to each cluster",
          size=25, verticalalignment='bottom')
ax.set_xlabel("Trees and branches labels", fontsize=25)
ax.set_ylabel("Normalized length", fontsize=25)

# Labels for the rectangles
new_ticks = reduce(lambda x, y: x + y, map(lambda x: [x] * ab.shape[0], ab.columns.tolist()))
#plt.xticks(rotation=90)

# Set the labels
from matplotlib import ticker
#ax.xaxis.set_minor_formatter(ticker.FixedFormatter(new_ticks))  #add the custom ticks

# Move the category label further from x-axis
ax.tick_params(axis='x', which='major', pad=20)

# Remove minor ticks where not necessary
ax.tick_params(axis='x',which='both', top='off')
ax.tick_params(axis='y',which='both', left='off', right = 'off')
ax.tick_params(axis='both', which='major', labelsize=20)

       

###Get the normalized lengths within the clusters and calculate their mean and plot the means
df_c1_clus = df_c1_new.loc[[('B', 'CHU01'),('B', 'CHU02'),('B', 'CHU03'),('B', 'CHU04'),('B', 'CHU05'),('B', 'CHU06'),('B', 'CHU07'),('B', 'CHU08')]]
df_c0_clus = df_c0_new.loc[[('B', 'CHU09'),('B', 'CHU10'),('B', 'CHU11')]]

df_c1_clus_red= df_c1_clus
df_c0_clus_red= df_c0_clus

df_c1_mean=df_c1_clus_red.mean()
df_c0_mean=df_c0_clus_red.mean()

df_c0_mean=df_c0_mean.to_frame()
df_c1_mean=df_c1_mean.to_frame()

df4=pd.concat([df_c0_mean, df_c1_mean], axis=1)
df4=df4.iloc[::1].T


d1=df4.plot.bar(figsize=(15,5), color=('b', 'c'))

d1.set_title("Average of normalized branch length \n for branches within C0 and C1",
          size=20) #, verticalalignment='bottom')
d1.set_xlabel("Trees", size = 18)
d1.set_ylabel("Average normalized length ", size = 18)


