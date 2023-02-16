library(tidyverse)
library(mstknnclust)
library(corrplot)
library(ggplot2)
data("dslanguages")



row_sums <- lapply(branch, rowSums)
row_sums_matrix <- do.call(cbind, row_sums)
M <- cor(row_sums_matrix)
colnames(M) <- rownames(M) <- c("Celtic", "Romance", 
                                "Germanic", "Balto-Slavic", "Indic",
                                "Greek", "Armenian", "Iranic", "Albanian")
x <- corrplot(M, method = 'color', is.corr = FALSE)


