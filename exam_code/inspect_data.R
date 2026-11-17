rm(list=ls())

# install.packages('Seurat')
# library(hdf5r)
# library(Seurat)
# library(SeuratDisk)
remotes::install_github("PMBio/MuDataSeurat")
remotes::install_github("cellgeni/sceasy")
library(reticulate)
reticulate::py_install("anndata")

library(sceasy)
library(Seurat)


path = '/Users/penghao.xia/Documents/GitHub/bioinfo_ki_penghao/data/exam/scRNA_human_dev.rds'
path_out = gsub('.rds', '.h5ad', path)

df = readRDS(path)

sceasy::convertFormat(
  df,
  from = "seurat",
  to   = "anndata",
  outFile = path_out
)
