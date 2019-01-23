library(ape)

setwd("C:/Users/marie/Documents/PdM/Saureus/trees_comparisons/Trees/dna_tree/bootstrap/contrees")

files <- list.files("C:/Users/marie/Documents/PdM/Saureus/trees_comparisons/Trees/dna_tree/bootstrap/contrees", recursive=TRUE, full.names=TRUE)

for (file in files){

  
  if (grepl(".contree", basename(file)))
  {
    
    tree=read.tree(basename(file))
    
    as.phylo(tree)
    
    
    norm=compute.brlen(as.phylo(tree))
    
    print(norm)
    #setwd("C:/Users/marie/Documents/PdM/Saureus/trees_comparisons/Trees/dna_tree/bootstrap/contrees/normalized_trees")
    write(write.tree(norm), paste0("C:/Users/marie/Documents/PdM/Saureus/trees_comparisons/Trees/dna_tree/bootstrap/contrees/normalized_trees/normalized" , basename(file)))
    
  }
  
}


