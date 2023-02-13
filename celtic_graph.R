library(tidyverse)
library(primer.data)
library(lubridate)
library(skimr)
library(gapminder)
library(mstknnclust)
library(gapminder)
library(skimr)
library(stats)
library(shiny)
library(ggplot2)
library(plotly)
library(graphics)
library(gplots)
library(plot.matrix)
library(corrplot)
data("dslanguages")



row_sums <- lapply(branch, rowSums)
row_sums_matrix <- do.call(cbind, row_sums)
M <- cor(row_sums_matrix)
colnames(M) <- rownames(M) <- c("Celtic", "Romance", 
                                "Germanic", "Balto-Slavic", "Indic",
                                "Greek", "Armenian", "Iranic", "Albanian")
x <- corrplot(M, method = 'color', is.corr = FALSE)

write_rds(x, "x.rds")