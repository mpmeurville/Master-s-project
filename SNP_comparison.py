#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jun  5 10:13:51 2018

@author: marie
"""
### cREATE A LIST FROM THE FILE: EACH LINE = SEQUENCE CORRESPONDS TO A ROW. 
def create_list(inputf, path):
    from Bio import SeqIO
    import os
    os.chdir (path)
    #align = SeqIO.parse(inputf, "phylip") ### We have only 1 alignment here, so we do not need AignIO.parse()
    #print(align)

    
    liste=[]
    
    for record in SeqIO.parse(inputf, "phylip"):
        record.name= record.name.split(' ')[0]
        liste.append(record)
        #print(record.name)
    return (liste)

def select_strains(listinput, liststrains):
    listoutput=[]
    for record in listinput:
        for s in liststrains:
            if record.id.startswith(s):
                listoutput.append(record)
    return(listoutput)
    
def seq_pairwise(tup, gap, listinput): #strain1 is the reference, strain2 is the strain compared, Gap is a boolean (true or false, depending on if we want to take it into account), listinput is a list of SeqIO objects
    
    score=0
    seq1=''
    seq2=''
    #print(tup)
    for entry in listinput:
        if tup[0] == entry.name:
            seq1=entry.seq
            name1=entry.name
            #print(tup[0])
            #print(name1)
 
        if tup[1] == entry.name:
            seq2=entry.seq
            name2=entry.name  
            #print(tup[1])
            #print(name2)
            
    if gap == False: ### We consider gaps as a mismatch
        for i, letter in enumerate(seq1):
            #print(i)
            #print(letter)
            if letter != seq2[i]:
                score+=1
            else:
                score+=0
    if gap == True: ### We do not consider gaps
        for i, letter in enumerate(seq1):
            #print(i)
            #print(letter)            
            if letter == seq2[i]:
                score+=0
                
            elif (letter == '-') or (seq2[i] == '-'):
                score+=0
                
                
            else :
                score+=1
        
    
    return (score/1738320)  

### Get all possible combinaisons of the different strains to compare. 
def permutations(liste):
    import itertools
    perm=list(itertools.combinations_with_replacement(liste,2))
    return (perm)

###run!
    
clusters = [['STAAW', 'CHU01', 'CHU07', 'CHU08', 'CHU04', 'CHU02', 'CHU03', 'CHU05', 'CHU06'], ['STAAW', 'CHU11', 'CHU10', 'CHU09']]

def compute(clust, g, finput, path ):
    liste= create_list(finput, path)
    liststrains=select_strains(liste, clusters[clust])
    gap=g
    perm=permutations(clusters[clust])

    d={}
    for p in perm: 
        d[p]=seq_pairwise(p,gap, liststrains)
    
    return (d)

d= compute(0, True, 'concat_merge_dna_spaced.phy', '/home/marie/Documents/PdM/Saureus/SNP_comparison' )
e= compute(0, False, 'concat_merge_dna_spaced.phy', '/home/marie/Documents/PdM/Saureus/SNP_comparison' )
f= compute(1, True, 'concat_merge_dna_spaced.phy', '/home/marie/Documents/PdM/Saureus/SNP_comparison' )
g= compute(1, False, 'concat_merge_dna_spaced.phy', '/home/marie/Documents/PdM/Saureus/SNP_comparison' )

