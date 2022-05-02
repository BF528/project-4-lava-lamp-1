#import tidyverse package so that the genes can be properly filtered
library(tidyverse)

#store the marker_genes.csv file into a variable that reads in the .csv file
mano_genes_file <- "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/mano_clusters.csv"
mano_marker_gene <- read_csv(mano_genes_file)

#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_0 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on ONLY the cluster 
  filter(cluster == 0) 

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_0, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_0.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_0 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on the cluster AND p_val_adj and avg_logFC
  filter(cluster == 0) %>%
  filter(p_val_adj < 0.05) %>%
  filter(avg_log2FC > 0)

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_0, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_0_filtered.csv", row.names = TRUE)




#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_1 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on ONLY the cluster 
  filter(cluster == 1) 

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_1, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_1.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_1 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on the cluster AND p_val_adj and avg_logFC
  filter(cluster == 1) %>%
  filter(p_val_adj < 0.05) %>%
  filter(avg_log2FC > 0)

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_1, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_1_filtered.csv", row.names = TRUE)



#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_2 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on ONLY the cluster 
  filter(cluster == 2) 

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_2, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_2.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_2 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on the cluster AND p_val_adj and avg_logFC
  filter(cluster == 2) %>%
  filter(p_val_adj < 0.05) %>%
  filter(avg_log2FC > 0)

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_2, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_2_filtered.csv", row.names = TRUE)



#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_3 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on ONLY the cluster 
  filter(cluster == 3) 

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_3, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_3.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_3 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on the cluster AND p_val_adj and avg_logFC
  filter(cluster == 3) %>%
  filter(p_val_adj < 0.05) %>%
  filter(avg_log2FC > 0)

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_3, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_3_filtered.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_4 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on ONLY the cluster 
  filter(cluster == 4) 

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_4, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_4.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_4 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on the cluster AND p_val_adj and avg_logFC
  filter(cluster == 4) %>%
  filter(p_val_adj < 0.05) %>%
  filter(avg_log2FC > 0)

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_4, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_4_filtered.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_5 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on ONLY the cluster 
  filter(cluster == 5) 

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_5, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_5.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_5 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on the cluster AND p_val_adj and avg_logFC
  filter(cluster == 5) %>%
  filter(p_val_adj < 0.05) %>%
  filter(avg_log2FC > 0)

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_6, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_5_filtered.csv", row.names = TRUE)

#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_6 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on ONLY the cluster 
  filter(cluster == 6) 

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_6, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_6.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_6 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on the cluster AND p_val_adj and avg_logFC
  filter(cluster == 6) %>%
  filter(p_val_adj < 0.05) %>%
  filter(avg_log2FC > 0)

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_6, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_6_filtered.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_7 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on ONLY the cluster 
  filter(cluster == 7) 

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_7, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_7.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_7 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on the cluster AND p_val_adj and avg_logFC
  filter(cluster == 7) %>%
  filter(p_val_adj < 0.05) %>%
  filter(avg_log2FC > 0)

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_7, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_7_filtered.csv", row.names = TRUE)

#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_8 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on ONLY the cluster 
  filter(cluster == 8) 

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_8, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_8.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_8 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on the cluster AND p_val_adj and avg_logFC
  filter(cluster == 8) %>%
  filter(p_val_adj < 0.05) %>%
  filter(avg_log2FC > 0)

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_8, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_8_filtered.csv", row.names = TRUE)



#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_9 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on ONLY the cluster 
  filter(cluster == 9) 

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_9, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_9.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_9 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on the cluster AND p_val_adj and avg_logFC
  filter(cluster == 9) %>%
  filter(p_val_adj < 0.05) %>%
  filter(avg_log2FC > 0)

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_9, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_9_filtered.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_10 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on ONLY the cluster 
  filter(cluster == 10) 

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_10, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_10.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_10 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on the cluster AND p_val_adj and avg_logFC
  filter(cluster == 10) %>%
  filter(p_val_adj < 0.05) %>%
  filter(avg_log2FC > 0)

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_10, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_10_filtered.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_11 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on ONLY the cluster 
  filter(cluster == 11) 

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_11, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_11.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_11 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on the cluster AND p_val_adj and avg_logFC
  filter(cluster == 11) %>%
  filter(p_val_adj < 0.05) %>%
  filter(avg_log2FC > 0)

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_11, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_11_filtered.csv", row.names = TRUE)

#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_12 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on ONLY the cluster 
  filter(cluster == 12) 

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_12, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_12.csv", row.names = TRUE)


#Assign a variable to read in the csv file specific for the cluster group #0 
gene_cluster_12 <- read_csv(mano_genes_file) %>%
  #Using dplyr we can select only the cluster, p_val_adj, avg_logFC variables in 
  #the tibble
  dplyr::select(gene, cluster, p_val_adj, avg_log2FC) %>%
  #Here we want to filter out based on the cluster AND p_val_adj and avg_logFC
  filter(cluster == 12) %>%
  filter(p_val_adj < 0.05) %>%
  filter(avg_log2FC > 0)

#Here we are converting our tibble to a .csv file
write.csv(gene_cluster_12, "/usr4/bf528/sv/Documents/BF_528_Project_4/mano/gene_cluster_12_filtered.csv", row.names = TRUE)
