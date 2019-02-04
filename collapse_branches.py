from ete3 import PhyloTree
from ete3 import Tree
import os
import numpy as np
import matplotlib.pyplot as plt
import operator
import pandas as pd
from functools import reduce

path = "C:/Users/marie/Documents/PdM/Saureus/coverage_tests/all_strains_true/trees/contrees_renamed/C0_C1_collapsed"
os.chdir(path)


trees=list()
collapsed=list()
i=0

directory = os.fsencode(path)

for file in os.listdir(directory):
    filename = os.fsdecode(file)
    print(filename)
    if filename.endswith(".c"): 
        
        t=PhyloTree(filename, format=0)
        t.set_species_naming_function(lambda node: node.name.split("UU")[0] )
        print(t.get_ascii(attributes=["name", "species"], show_internal=False ))

        #print(t.get_ascii(attributes=["name", "species"], show_internal=False ))
        t1 = t.collapse_lineage_specific_expansions()
        print(t1.get_ascii(attributes=["name", "species"], show_internal=False ))
        collapsed.append(t1)
        print(collapsed[i].get_ascii(attributes=["name", "species"], show_internal=False ))
        i=i+1
        t1.write(format=1, outfile="c_%s.c" % filename)
        
### Manually go modify the names of the strains from C0 and C1 to C0 or C1.






