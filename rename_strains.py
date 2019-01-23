#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun May 27 11:03:43 2018

@author: marie
"""


### CREATE A LIST FROM THE INPUT FILE WITH 5 LETTERS CODES FROM OMA. NOT USED ANYMORE. HAS BEEN IMPLEMENTED IN BASH.


def create_list(inputf, path):
    import os
    os.chdir (path)
    
    liste=[]
    
    with open(inputf) as f:
        for line in f:
            liste.append(line)
    return (liste)


### BUILD DICTIONNARY OF EQUIVALENCE: 
## INPUT =  RESULT FROM SCRIPT: script_coreAPI
## OUTPUT = DICTIONNARY OF EQUIVALENCES. 

def create_equivalences (API_file):

    equi= {}
    
    with open(API_file) as f:
        for line in f:
                            
            if len(line)== 6: # 5 letters code + newline
                temp=line
            elif "name" in line: 
                line = line.split("\"")[3]
                stp, strain =line.split("(")
                line=stp+strain
                line = line.rstrip (')')
                line=line.split("/")[0]
                print('A')
                print(line)
                equi[temp] = line
                
    return (equi)



### REPLACE KEYS WITH THEIR VALUES IN NEWICK

def rename_strains (inputf, outputf, dico):
    with open(inputf, "rt") as fin:
        line = fin.readline()
        with open(outputf, "wt") as fout:
                
            for i, j in dico.items():
                line = line.replace(i.rstrip("\n"), j)
                #print(line)
                #print ('A')
            fout.write(line)

    return()



### FAST CALLING: TREES BUILT WITH OMA

def rename_tree(pathAPI, pathTree, input_API_OMA, input_tree, output_tree):
    
    import os
    os.chdir (pathAPI)
    #oma = create_list (input_strains_OMA)
    eq= create_equivalences (input_API_OMA)
    
    
    os.chdir (pathTree)

    rename_strains(input_tree,output_tree, eq)

    return()
    

rename_tree('C:/Users/marie/Documents/PdM/Saureus/trees_comparisons/API_rename_strains', 'C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/trees/contrees_renamed/', 'API_strains_OMA.txt', 'thr_50.c', 'thr_50_renamed.contree')

### REPLACE NAMES FROM JATON (REFERENCE LIST MANUALLY CREATED)
## CREATION OF A DICTIONNARY FROM A COMMA SEPARATED LIST OF STRAINS
def create_equivalences_ncbi (API_file):


    equi= {}
    
    with open(API_file) as f:
        for line in f:
            if not line.startswith('\n'):
    
                key, value = line.split(',')

                if value.startswith('CHUV'):
                    value = value.replace('CHUV_', 'CHU')
                
                
                
                value=value.split("_")[0]
                value=value.rstrip('\n')
                value=value.rstrip(' DNA')
                value=value.rstrip(' plasmid')

                equi[key.rstrip('\n')]=value




            
    return (equi)


### FAST CALLING

def rename_NCBI_tree(path_API, listFile, pathTree, inputTree, outputTree):
    
    import os
    os.chdir (path_API)
    eq=create_equivalences_ncbi(listFile)
    
    os.chdir(pathTree)
    
    rename_strains(inputTree, outputTree, eq)
    
    return()

rename_NCBI_tree('/home/marie/Documents/PdM/Saureus/trees_comparisons/API_rename_strains','list_strains_NCBI_codes_saureus_renamed_CHUV','/home/marie/Documents/PdM/Saureus/trees_comparisons/trees_Greub', 'saureus_pvl_jaton_parsnp.nwk', 'saureus_pvl_jaton_parsnp_renamed_CHUV.nwk' )




'''

### FOR GETTING NCBI STRAINS

strainsNCBI= create_list('list_strains_NCBI_codes_saureus', '/home/marie/Documents/PdM/Saureus/trees_comparisons/API_rename_strains')

import urllib.request
from Bio import Entrez

def import_strain_ID(list_strains, path):
    os.chdir(path)
    for ID in list_strains:
        url='https://www.ncbi.nlm.nih.gov/nuccore/{}'.format(ID)
        print (url)

        ftosave=open(ID+'.txt', 'w')
        #print('B')
        ftosave.write(str(urllib.request.urlretrieve(url, ID)))
        #print('C')
        ftosave.close()
        #print('D')
        
        return()
        
'''
        
