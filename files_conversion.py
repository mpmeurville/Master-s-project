# -*- coding: utf-8 -*-
"""
Created on Tue Aug 21 16:20:36 2018

@author: marie
"""

from Bio import SeqIO

with open("C:/Users/marie/Documents/PdM/Saureus/pipeline_greub/08_bis_verif_parsnp_out/parsnp_win.xmfa", "rU") as input_handle:
    with open("C:/Users/marie/Documents/PdM/Saureus/pipeline_greub/08_bis_verif_parsnp_out/parsnp_win.phy", "w") as output_handle:
        sequences = SeqIO.parse(input_handle, "mauve")
        count = SeqIO.write(sequences, output_handle, "phylip")

print("Converted %i records" % count)
