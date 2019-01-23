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

#cd C:\Users\marie\Documents\PdM\Saureus\coverage_tests\trees_all_strains_thresholds
path = "C:\\Users\\marie\\Documents\\PdM\\Saureus\\coverage_tests\\all_strains_true\\trees\\contrees"
os.chdir(path)

trees = {}
t1=defaultdict(list)



for file in os.listdir('C:\\Users\\marie\\Documents\\PdM\\Saureus\\coverage_tests\\all_strains_true\\trees\\contrees'):
    print(file)
    trees[re.search('alrtbb_thr_(.+?).con', file).group(1)]=Tree(file, format=0)



for key, value in trees.items():
    for node in value.traverse("levelorder"):
        #print(node)
            print(node.name)
        #print(node.is_leaf)
            if node.name:
                print("Fuck!")
            else:
        #if node.is_leaf==True:
                print(node.support)
                t1[key].append(node.support)
    
    #print(node.children)


# =============================================================================
# import csv
# 
# with open('bootstrap_values_thresholds.csv', 'w') as csvfile:
#     wr = csv.writer(csvfile, delimiter=',', quoting=csv.QUOTE_MINIMAL, lineterminator='\n')
#     wr.writerows(map(lambda x: [x], t1))
#     
# import pandas
# 
# pd = pandas.DataFrame(t1)
# pd.to_csv("bootstrap_values_thresholds.csv")
#     
# 
# =============================================================================

#remove 1.0 values that ar enot bootstraps but still present in the dico
for key, value in t1.items():
    t1[key]=list(filter(lambda a: a != 1.0, t1[key]))

red=["0","1","2","3","5","10","20","25","30","50","70","100","200","-1"]

sub={}

for e in t1: 
    if e in red: 
        sub[e]=t1[e]

# Create a figure instance
fig = plt.figure(1, figsize=(9, 6))

# Create an axes instance
ax = fig.add_subplot(111)
ax.set_title("Boxplots of bootstrap values for trees \nresulting in various minimal coverage thresholds and core analysis", fontsize=20)
ax.set_xlabel('Analysis', fontsize=20)
ax.set_ylabel('Bootstrap values', fontsize=20)
ax.tick_params(rotation=90,axis = 'both', which = 'major', labelsize = 15)
ax.tick_params(which='x', pad=30)

#Change he dictionary into list of tuples (key, [list of bootstravalues])
new_t1 = [(int(key), value) for key, value in sub.items()]
new_t1.sort(key = itemgetter(0))


# =============================================================================
  #Create the boxplot
bp = ax.boxplot([i[1] for i in new_t1]) 
ax.set_xticklabels([i[0] for i in new_t1])
  
# plt.plot(new_t1)
# =============================================================================
plt.setp(fontsize=11)

# Save the figure
fig.savefig('C:/Users/marie/Documents/PdM/Saureus/coverage_tests/plot_all_strains_thresholds/bootstrap_boxplot_thresholds.png', bbox_inches='tight')
