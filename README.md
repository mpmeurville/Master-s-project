# Master-s-project

Streptos/first_try: code written to try to launch R2T on 100 secies of streptos.

Clean_data: scripts to launch R2T for the trimmed reads pipeline: start with ref, then m_clean, then merge
Same thing for Crossref raw_reads (raw reads + R2T (16 references), raw_analysis (raw reads + R2T (32 references)). 

Pipeline greub: scripts to replicate the core genome approach: start by trimming (no script) then BBmap, then spades, then parsnp (./parsnp -d ../09_crossed_ref_chuv/ -g ../Saureus_MW2_full.gb -o ../08_parsnp_refMw2_crossed_ref_MUM -c
), then snippy. Snippy can also be run using the snippy_scripts folder.

API.py: Collect 5 letter names of strains from OMA API.

SNP_comp_barplot.R: plot snp number between minima coverage thresholds.

SNP_comparison: count SNP in alignment

VirFactorsDetection.py: does not work. Tries to identify OGs corresponding to virulence factors, and to retrieve them in the strains of interest.

compare_branch_lengths: normalization of the branch length + plot

count_snippy_greub_r2t.R: Never really used. 

files_conversion: converts files from several formats. 

normalized_lengths.R: Attempt to norm branch length. Never used

number_ogs_threshold_all_strains: calculates and plots the number of OGs used for each strain, for several minimal coverage thresholds. 

plot_SNP_comparison: plot heatmaps from snippy

plot_bootstrap_5_pipelines.py and plot_bootstrap_thresholds.py: moustache plots of bootstrap values accros different trees. 

rename_strains.py: from 5 letter code to full strain name

robinson_foulds_threshold_trees.R: calculate RF between trees

snp_count_from_vcf.py: count snp number between strains from vcf file

collapse_branches.py: creates trees (nwk) that have their C0 and C1 branches collapsed

count_plot_seq_lengths.py: counts number of ATCG or N, and plot, for each strain, at each minimal coverage threshold

RF_collapsed_trees_thres.R:Counts Robinson-Foulds distance between Core genome pipeline and R2T



