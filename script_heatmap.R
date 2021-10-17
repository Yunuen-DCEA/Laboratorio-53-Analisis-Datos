
###############################################
# 2.A SACAR HEATMAP DE LA MATRIZ RCA BINARIA #####
##############################################

# install.packages("pheatmap")
library(pheatmap)
# viridis, magma, plasma, cividis, inferno
# install.packages("viridisLite")
library(viridis)

file.choose()

heatmap_1 <- as.matrix(
  read.csv("C:\\Users\\yunh_\\Desktop\\DOCTORADO\\4to. SEMESTRE\\ANÁLISIS DE DATOS\\Tareas\\Laboratorios\\Lab 53 - Heatmap\\INPUT\\RCABIN.csv" ,
           sep = "," ,
           header = T,
           row.names = 1))

#Plotting with pheatmap!
pheatmap(heatmap_1)

colorz <- c('white', 'navyblue')

library(viridis)
pheatmap(heatmap_1, frontsize = 6, cluster_rows = T, cluster_cols = F, treeheight_row = 1, treeheight_col = 0, 
         main = "", fontsize = 12, annotation_legend = FALSE, display_numbers = FALSE, 
         fontsize_number = 6, col = colorz)

