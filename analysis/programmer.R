library(dplyr)
library(Seurat)
library(patchwork)
#Need to install seurat-wrappers if not installed
#remotes::install_github('satijalab/seurat-wrappers')
library(tximport)
library(EnsDb.Hsapiens.v79)
#BiocManager::install("EnsDb.Hsapiens.v79")
library(RColorBrewer)
#txi <- tximport("/projectnb/bf528/project_4_scrnaseq/GSM2230760__salmon_quant/alevin/quants_mat.gz", type="alevin")
txi <- tximport("/projectnb/bf528/users/lava-lamp/project4NONGITHUB/analysis/alveinoutput/alevin/quants_mat.gz", type="alevin")
#get gene symbols using EnsDb.Hsapiens.v79
txicts <- txi$counts
pbmc <- CreateSeuratObject(counts = txicts, min.cells = 3, min.features = 200, project = "lava-lamp-proj4")

#Filter out low-quality cell
#Check mitochondria percentage.
#Low-quality / dying cells often exhibit extensive mitochondrial contamination
pbmc[["percent.mt"]] <- PercentageFeatureSet(pbmc, pattern = "^MT-")
VlnPlot(pbmc, features = c("nFeature_RNA", "nCount_RNA", "percent.mt"), ncol = 3)
plot1 <- FeatureScatter(pbmc, feature1 = "nCount_RNA", feature2 = "percent.mt")
plot2 <- FeatureScatter(pbmc, feature1 = "nCount_RNA", feature2 = "nFeature_RNA")
plot1 + plot2

#filter cells that have unique feature counts over 2,500 (Cell doublets or multiplets)
#or less than 200 (Low-quality cells or empty droplets)
#filter cells that have >5% mitochondrial counts
pbmc <- subset(pbmc, subset = nFeature_RNA > 200 & nFeature_RNA < 2500 & percent.mt < 5)

#Normalize before filter out low variance genes
pbmc <- NormalizeData(pbmc, normalization.method = "LogNormalize", scale.factor = 10000)

pbmc <- FindVariableFeatures(pbmc, selection.method = "vst")

# Identify the 10 most highly variable genes
top10 <- head(VariableFeatures(pbmc), 10)

#convert Ensembl gene identifiers to gene symbol 
#first get rid of Ensembl gene identifiers' decimal part 
gene_names <- sub("[.][0-9]*$", "", top10)
geneIDs <- ensembldb::select(EnsDb.Hsapiens.v79, keys= gene_names, keytype = "GENEID", columns = c("SYMBOL","GENEID"))

# plot variable features with and without labels
plot3 <- VariableFeaturePlot(pbmc)
plot4 <- LabelPoints(plot = plot3, points = top10, repel = TRUE)
plot3 + plot4

#PCA
all.genes <- rownames(pbmc)
pbmc <- ScaleData(pbmc, features = all.genes)
pbmc <- RunPCA(pbmc, features = VariableFeatures(object = pbmc))
# Examine and visualize PCA results a few different ways
print(pbmc[["pca"]], dims = 1:5, nfeatures = 5)
plot5 <- VizDimLoadings(pbmc, dims = 1:2, reduction = "pca")
plot6 <-DimPlot(pbmc, reduction = "pca")
DimHeatmap(pbmc, dims = 1, cells = 500, balanced = TRUE)
DimHeatmap(pbmc, dims = 1:20, cells = 500, balanced = TRUE)

#Determine the ‘dimensionality’ of the dataset
pbmc <- JackStraw(pbmc, num.replicate = 100)
pbmc <- ScoreJackStraw(pbmc, dims = 1:20)

plot7 <-JackStrawPlot(pbmc, dims = 1:20)
plot8 <-ElbowPlot(pbmc)

#Cluster the cells
pbmc <- FindNeighbors(pbmc, dims = 1:20)
pbmc <- FindClusters(pbmc, resolution = 0.5)
# Look at cluster IDs of the first 5 cells
head(Idents(pbmc), 5)

# If you haven't installed UMAP, you can do so via reticulate::py_install(packages =
# 'umap-learn')
pbmc <- RunUMAP(pbmc, dims = 1:15)
# note that you can set `label = TRUE` or use the LabelClusters function to help label individual clusters
DimPlot(pbmc, reduction = "umap",label = TRUE)

###SAVE RDS###
saveRDS(pbmc, file = "/projectnb2/bf528/users/lava-lamp/project4NONGITHUB/analysis/proj4-seurat.rds")

###################################
#Create pie chart to display relative proportions of count in each cluster
#stores the cluster number and count of cell number in each cluster
cluster_counts <- as.data.frame(table(Idents(pbmc)))
cluster_counts <- paste(cluster_counts$Var1, cluster_counts$Freq, sep=" - ")

#stores the cluster number and the relative proportions
cluster_plot <- as.data.frame(prop.table(table(Idents(pbmc))))
cluster_plot$Percents <- paste(cluster_plot$Freq %>% `*`(100) %>% round(2),"%", sep="")
#Set colors
nb.cols <- nrow(cluster_plot)
mycolors <- colorRampPalette(brewer.pal(8, "Set2"))(nb.cols)
#plot the piechart
pie(cluster_plot$Freq, labels=cluster_plot$Percents, col=mycolors, main = "Relative Proportions of Cell Numbers\nFor the Identified Clusters")
legend(1.45, 1, legend=cluster_counts, cex = 0.8, fill = mycolors, bty="n", title="Clusters")

