# Project Description

This project seeks to replicate the primary findings of the paper “A Single-Cell Transcriptomic Map of the Human and Mouse Pancreas Reveals Inter- and Intra-Cell Population Structure.” by Barom M. et al by using sequencing data from a single human donor in order to perform cell-by-gene quantification and quality control on UMI counts as well as identify clusters marker genes for distinct cell type populations.

# Contributors

Luke Zhang, Benyu Zhou, Sri Veerisetti and Mano Ranaweera

# Repository Contents

Provide a brief description of each script/code file in this repo, what it does, and how to execute it

Biologist- In this section, the goal was to utilize the marker genes obtained through the unbiased clustering process in order to confirm the cell type and function of the different clusters. The cluster .csv files were filtered via two criteria: p_val_adj < 0.05 and avg_log2FC > 0 and saved as another file. This was done to all clusters. The new files were saved for DAVID analysis. 
