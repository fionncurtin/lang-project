library(tidyverse)
library(primer.data)
library(lubridate)
library(skimr)
library(nycflights13)
library(gapminder)
library(fivethirtyeight)
library(mstknnclust)
library(gapminder)
library(skimr)
data("dslanguages")

dslanguages["IrishA", "IrishB"]

celtic <- dslanguages |>
  select(IrishA, IrishB, WelshN, WelshC, 
         BretonList, BretonSE, BretonST) 



glimpse(dslanguages)

celtic
