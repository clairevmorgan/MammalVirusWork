## Mammal Virus Data 

## Install necessary package and load data set
install.packages(readxl)

setwd("~/Rstudio/Park-Lab/Mammal Viruses Work") # set working directory
library(readxl) # load in excel reading package
mammalvirusdf <- read_excel("CLOVER_0.1_MammalViruses_AssociationsFlatFile.xlsx") # import dataframe

## Count Host and Virus Species
library(dplyr) # load package

hostspeciesvalue <- n_distinct(mammalvirusdf$...2) %>% # count distinct host species
  print(.)
hostspeciesdf <- mammalvirusdf %>% # create table showing values of each host species in data
  group_by(...2) %>%
  summarize(distinct_values = n_distinct(CLOVER_0.1_MammalViruses_AssociationsFlatFile))
View(hostspeciesdf) # view table of host species values

virusspeciesvalue <- n_distinct(mammalvirusdf$...9) %>% # count distinct virus species
  print(.)
virusspeciesdf <- mammalvirusdf %>% # create table showing values of each virus species in data
  group_by(...9) %>%
  summarize(distinct_values = n_distinct(CLOVER_0.1_MammalViruses_AssociationsFlatFile))
View(virusspeciesdf) # view table of virus species values

## Count & Retrieve Host Orders 
hostordervalues <- unique(mammalvirusdf$...4) %>% # collect host order names
  print(.) 
distincthostorders <- n_distinct(mammalvirusdf$...4) %>% # count distinct host orders
  print(.)

## Count & Retrieve Virus Families
virusfamilyvalues <- unique(mammalvirusdf$...12) %>% # collect virus family names
  print(.)
distinctvirusfamilies <- n_distinct(mammalvirusdf$...12) %>% # count distinct virus families
  print(.)

| Ask about removing "NA" and identifying values (host order and virus family)
