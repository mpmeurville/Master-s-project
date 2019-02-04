# -*- coding: utf-8 -*-
"""
Created on Mon Feb  4 11:19:32 2019

@author: marie
"""

from Bio import AlignIO
import glob, os
import matplotlib.pyplot as plt
import re
import numpy as np


all_nns = {}
all_acgt = {}
for f in glob.glob("C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/concat_merge_dna/*.phy"):
    chu04=AlignIO.read(f, 'phylip-relaxed')
    nns = {}
    acgt = {}
    for rec in chu04:
        nns[rec.id] = str(rec.seq).count('N')
        acgt[rec.id] = len(rec.seq ) - str(rec.seq).count('N') - str(rec.seq).count('-')
    all_nns[os.path.basename(f).split("_")[1]] = nns
    all_acgt[os.path.basename(f).split("_")[1]] = acgt
    
   



all_actg_plot={}

for thr, dico in all_acgt.items():
    print("thr:", thr)
    for s, value in dico.items():
 

        print("strain:", s)
        print("ACTG:", value)
        
        if "CHU" in s:
            all_actg_plot[s]={}
            
for thr, dico in all_acgt.items():
    for s, value in dico.items():
        for st in all_actg_plot.keys():
            print(st)
            if s == st:
                all_actg_plot[st][thr]=value


NUM_COLORS = 15

cm = plt.get_cmap('tab20')
fig = plt.figure(figsize=(10,10))
ax = fig.add_subplot(111)
ax.set_color_cycle([cm(1.*i/NUM_COLORS) for i in range(NUM_COLORS)])
for i in range(NUM_COLORS):
    ax.plot(np.arange(10)*(i+1))
            
for k, v in sorted(all_actg_plot.items()):
    #print(k)
    
    fig=plt.plot(*zip(*sorted(all_actg_plot[k].items())), label = k)
    fig=plt.gca().legend(bbox_to_anchor=(0.5, 1.02, 1., .102))



all_nns_plot={}

for thr, dico in all_nns.items():
    print("thr:", thr)
    for s, value in dico.items():
 

        print("strain:", s)
        print("ACTG:", value)
        
        if "CHU" in s:
            all_nns_plot[s]={}
            
for thr, dico in all_nns.items():
    for s, value in dico.items():
        for st in all_nns_plot.keys():
            print(st)
            if s == st:
                all_nns_plot[st][thr]=value


NUM_COLORS = 15

cm = plt.get_cmap('tab20')
fig = plt.figure(figsize=(10,10))
ax = fig.add_subplot(111)
ax.set_color_cycle([cm(1.*i/NUM_COLORS) for i in range(NUM_COLORS)])
for i in range(NUM_COLORS):
    ax.plot(np.arange(10)*(i+1))
            
for k, v in sorted(all_nns_plot.items()):
    #print(k)
    
    fig=plt.plot(*zip(*sorted(all_nns_plot[k].items())), label = k)
    fig=plt.gca().legend(bbox_to_anchor=(0.5, 1.02, 1., .102))
