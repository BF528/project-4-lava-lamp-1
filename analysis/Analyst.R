#packages
library(dplyr)
install.packages('Seurat')
install.packages('R.filesets')
library(Seurat)
library(tidyr)
library(R.filesets)
library(readr)

#Loading RDS file into R
cells <- loadRDS("GSM2230760_seurat.rda")

#Identifying marker genes for each of the 12 clusters
cluster.markers <- FindAllMarkers(cells) #can filter by fold change threshold or min.pct
write.csv(cluster.markers, 'clusters.csv') #for biologist
cluster.markers.test <- FindAllMarkers(cells, only.pos = TRUE, min.pct = 0.25, logfc.threshold = 0.25) %>%
  group_by(cluster) %>% top_n(n=2, wt=avg_log2FC)
#write.csv(cluster.markers.test, 'top_gene_clusters.csv')

#DimPlot(cells, reduction = 'umap', label=TRUE, pt.size = 0.5)




#labeling clusters
new.cluster.ids <- c("0:T memory","1:Beta","2:Monocyte", "3:Acinar","4:Alpha",
                     "5:Cholangiocyte", "6:Delta","7:Mast","8:Podocyte","9:Fibroblast",
                     "10:Hepatocytes","11:Enterocytes","12:Osteoclast")
names(new.cluster.ids) <- levels(cells)
cells <- RenameIdents(cells, new.cluster.ids)

#Plot with cell type labels per cluster
DimPlot(cells, reduction = "umap", label = TRUE, pt.size = 0.5) + NoLegend()
DimPlot(cells, label = TRUE)
tsv <- read_tsv('PanglaoDB_markers_27_Mar_2020.tsv.gz') 


write.csv(tsv, 'ctype.csv')

#Heatmap
new.cluster.ids.1 <- c("0","1","2","3","4","5","6","7","8","9","10","11","12")
names(new.cluster.ids.1) <- levels(cells)
cells2<- RenameIdents(cells, new.cluster.ids.1)
top10 <- cluster.markers %>% group_by(cluster) %>% top_n(n = 2, wt = avg_log2FC)
DoHeatmap(cells2, features = top10$gene) + NoLegend()
