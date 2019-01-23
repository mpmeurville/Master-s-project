#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Mar 26 13:37:48 2018

@author: marie
"""

### LOOP OVER ORTHOLOGS ALIGNED
import os

ref='CHU01'

os.chdir('/home/marie/Documents/PdM/Saureus/SaureusResults/04_ogs_map_{}'.format(ref))

directory_ref= os.fsencode('/home/marie/Documents/PdM/Saureus/SaureusResults/04_ogs_map_{}'.format(ref))
ID_ref=[]

for file in os.listdir(directory_ref):
    #print(file)
    #print(type(file))

    file = file.decode("utf-8")
    #print(type(file))

    file=open(file, 'r')
    #print('B')
    
    line = file.readlines
    for line in file:
        #print(line[0])
        if line[0] == '>':
            if '|' in line:
                #print (line)
                temp=line.split('|')[2]

                ID_ref.append(temp.split(' ')[1].lower())
                #print(temp.split(' ')[1])
    


    ID_ref[:] = (value for value in ID_ref if value != '')
  
    file.close
    
    
### Retrieve virulence factors from Uniprot

import urllib.request

def importprot(path, prot, genre, species): #path is where vir factors are, vir is a prot virulencefactor
    os.chdir(path)
    file_name= '{}_{}_{}'.format(prot, genre, species)
    url='http://www.uniprot.org/uniprot/?sort=score&desc=&compress=no&query={}%20AND%20organism:%22{}%20{}%22&fil=&format=txt'.format(prot, genre, species)
    #print (prot)
    print (url)

    ftosave=open(file_name, 'w')
    #print('B')
    ftosave.write(str(urllib.request.urlretrieve(url, file_name)))
    #print('C')
    ftosave.close()
    #print('D')
    return()


    # Create a list from a text file

#vir =['lukf', 'hla']
vir = []
for line in open('/home/marie/Documents/PdM/VirulenceDetection/KnownVirFac/List/VirFact_S_aureus.txt'):
    vir.append(line.strip('\n').lower())
    
    # Get the UniProt text files corresponding o a reseqrch for each virulence factor from the list 'vir'
for prot in vir:
    #print('A')
    #print(prot)
    importprot('/home/marie/Documents/PdM/VirulenceDetection/KnownVirFac/UniProt', prot, 'Staphylococcus', 'aureus')

### Loop over the known virulence factors and create a dictionnary of them, by retrieving accession number / entry from UNIPROT
    #keys = name of the virulence factor, values correspond to respectively, Accession number or ID in UniProt

os.chdir('/home/marie/Documents/PdM/VirulenceDetection/KnownVirFac/UniProt')

directory_vir= os.fsencode('/home/marie/Documents/PdM/VirulenceDetection/KnownVirFac/UniProt')

ID_vir={}
AC_vir={}

for file in os.listdir(directory_vir):
    #print(file)
    #print(type(file))

    file = file.decode("utf-8")
    #print(type(file))

    file=open(file, 'r')
    #print('B')
    virulence_factor=''
    line = file.readlines
    
    for i,line in enumerate(file):
        #print(line[:2])
        if i==0:
            
            keys=line.split("'")[1].lower()
            virulence_factor=keys
            
            ID_vir[keys] = []
            AC_vir[keys] = []
            
        elif line[:2] == 'ID':
            prot=line.split('   ')[1].lower()
            ID_vir[keys].append(prot)
            AC_vir[keys].append(prot.split('_')[0])
            
### Compare the two lists


ID_ref_vir={}

for key in ID_vir:
    #print(key)
    ID_ref_vir[key]=[]

    for element in ID_vir[key]:
        #print(element)
        #print (el)
        if element in ID_ref:
            #print(element)
            #print('YES')
            ID_ref_vir[key].append(element)
        #else:
            #print ('NO')
                
AC_ref_vir={}

for key in AC_vir:
    #print(key)
    AC_ref_vir[key]=[]

    for element in AC_vir[key]:
        #print(element)
        #print (el)
        if element in ID_ref:
            
            #print(element)
            #print('YES')
            AC_ref_vir[key].append(element)
        #else:
            #print ('NO')
            
### Output: a string that says which strain has which virulence factors:             

def StrainContent(AC, ID, ref): #AC and ID: dictionaries 
    output=[]
    for key, value in AC.items():
        if value:
            output.append(key)
    for key, value in ID.items():
        if value:
            output.append(key)
    return (print('Strain {} has genes {}'.format(ref, output)))
        
StrainContent(AC_ref_vir, ID_ref_vir, ref)



### BLAST sequences we don't have accession number

import Bio.Blast.NCBIWWW as blast
blast.qblast('blastp', 'swissprot', 'MKQKKSKNIFWVFSILAVVFLVLFSFAVGASNVPMMILTFILLVATFGIGFTTKKKYRENDWL' )

fasta_string = open("OG58534.fa").read()
result_handle = blast.qblast("blastp", "swissprot", fasta_string)

