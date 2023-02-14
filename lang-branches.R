library(tidyverse)
library(mstknnclust)
data("dslanguages")

celtic <- dslanguages |>
  select(IrishA, IrishB, WelshN, WelshC, 
         BretonList, BretonSE, BretonST)

romance <- dslanguages |>
  select(RumanianList:Catalan)


germanic <- dslanguages |>
  select(GermanST:Takitaki)


balto_slavic <- dslanguages |>
  select(Latvian:Serbocroatian)

indic <- dslanguages |>
select(GypsyGk:Khaskura)


greek <- dslanguages |>
  select(GreekML:GreekK)

armenian <- dslanguages |>
  select(ArmenianMod:ArmenianList)

iranic <- dslanguages |>
  select(Ossetic:Wakhi)

albanian <- dslanguages |>
  select(AlbanianT:AlbanianC)

branch <- list(celtic, romance, germanic, balto_slavic, indic,
               greek, armenian, iranic, albanian)



