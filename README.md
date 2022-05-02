# Project Description

This project seeks to replicate the primary findings of the paper “A Single-Cell Transcriptomic Map of the Human and Mouse Pancreas Reveals Inter- and Intra-Cell Population Structure.” by Barom M. et al by using sequencing data from a single human donor in order to perform cell-by-gene quantification and quality control on UMI counts as well as identify clusters marker genes for distinct cell type populations.

# Contributors

Luke Zhang, Benyu Zhou, Sri Veerisetti and Mano Ranaweera

# Repository Contents and the Order in which to run them
1. whitelist.qsub: Outputs read counts for each distinct barcode
2. filter.py: Filters barcodes by read count threshold 
3. salmonindex.qsub: Creates Salmon Index
4. salvein.qsub: Runs Salmon Alvein
5. Analyst.R: Labeling clusters and identifying marker genes for each cluster


Biologist- In this section, the goal was to utilize the marker genes obtained through the unbiased clustering process in order to confirm the cell type and function of the different clusters. The cluster .csv files were filtered via two criteria: p_val_adj < 0.05 and avg_log2FC > 0 and saved as another file. This was done to all clusters. The new files were saved for DAVID analysis. 
