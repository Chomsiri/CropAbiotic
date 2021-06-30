#Install Package####
install.packages("dplyr")
library(dplyr)
install.packages("ggplot2")
library(ggplot2)
install.packages("tidyverse")
library(tidyverse)
install.packages('png')
library(png)
#Input data####

Submergence <- read.csv("Submergence_data.csv")
Iron <- read.csv("Iron_data.csv")
IronUV <- read.csv("IronUV_data.csv")

colnames(Submergence)
colnames(Iron)
colnames(IronUV)
 
#Date of treatment Submergence####

    ggplot(data = Submergence,
           aes(y = Height, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() + 
      facet_grid(~DATrt) + 
      ggtitle("The hight differences between IR64 and IR64 Sub1 with two treatments in different time periods")

ggplot(data = Submergence,
       aes(y = Height, x = Treatment, fill = Genotype,
           group = interaction(Genotype, Treatment))) +
  geom_boxplot() + 
  facet_grid(~DATrt) + 
  ggtitle("The hight differences between Treatments with IR64 and IR64 in different time periods")

               
    ggplot(data = Submergence,
           aes(y = Tillers_number, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~DATrt) + 
      ggtitle("The difference in number of Tillers between IR64 and IR64 Sub1 
              with two treatments in different time periods")

    
    #filter the data with dplyr
    SubmergenceChl <- filter(Submergence, !is.na(Chl) | Chl != "")

    ggplot(data = SubmergenceChl,
           aes(y = Chl, x = Genotype, fill = Treatment, na.rm = TRUE,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot(na.rm = TRUE) +
      facet_grid(~DATrt) +
      ggtitle("The difference in Chlorophyll value between IR64 and IR64 Sub1 
              with two treatments in different time periods")
    
    SubmergenceFlav <- filter(Submergence, !is.na(Flav) | Flav != "")
    
    ggplot(data = SubmergenceFlav,
           aes(y = Flav, x = Genotype, fill = Treatment, na.rm = TRUE,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot(na.rm = TRUE) +
      facet_grid(~DATrt) +
      ggtitle("The difference in Flavonoid value between IR64 and IR64 Sub1 
              with two treatments in different time periods")
    
    SubmergenceNBI <- filter(Submergence, !is.na(NBI) | NBI != "")
    ggplot(data = SubmergenceNBI,
           aes(y = NBI, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~DATrt) +
      ggtitle("The difference in Nitrogen balance index between IR64 and IR64 Sub1 
              with two treatments in different time periods")
    
    SubmergenceSPAD <- filter(Submergence, !is.na(SPAD) | SPAD != "")
    ggplot(data = SubmergenceSPAD,
           aes(y = SPAD, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~DATrt) +
    ggtitle("The difference in SPAD between IR64 and IR64 Sub1 
              with two treatments in different time periods")
    
    #Date of treatment Iron####
    ggplot(data = Iron,
           aes(y = Height, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~DATrt)
    ggplot(data = Iron,
           aes(y = Tillers_number, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~DATrt)
    ggplot(data = Iron,
           aes(y = SPAD, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~DATrt)
    
    ggplot(data = Iron,
           aes(y = Chl, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~DATrt)
    
    ggplot(data = Iron,
           aes(y = Flav, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~DATrt)
    
    ggplot(data = Iron,
           aes(y = NBI, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~DATrt)
    
    ggplot(data = Iron,
           aes(y = affected.Tillers, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~DATrt)
    
    #Iron UV####
    
    ggplot(data = IronUV,
           aes(y = Height, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~Date)
    
    ggplot(data = IronUV,
           aes(y = Height, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~Date)
    
    ggplot(data = IronUV,
           aes(y = DeadLeaves, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~Date)
    
    ggplot(data = IronUV,
           aes(y = Chl, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~Date)
    ggplot(data = IronUV,
           aes(y = Flav, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~Date)
    
    ggplot(data = IronUV,
           aes(y = NBI, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~Date)
    
    ggplot(data = IronUV,
           aes(y = SPAD, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~Date)
    
    
    
    #Bronze score with SPAD
    
    ggplot(data = Iron, 
           aes(x = SPAD, 
               y = Bronze_Score 
            )) + 
      geom_point() +
      geom_smooth(method = "glm") +
      ggtitle("The correlation between SPAD and Bronzing score")
    
    