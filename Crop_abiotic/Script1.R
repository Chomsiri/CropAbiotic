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
      facet_grid(~DATrt)
               
    ggplot(data = Submergence,
           aes(y = Tillers_number, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~DATrt)

    ggplot(data = Submergence,
           aes(y = Chl, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~DATrt)
    
    ggplot(data = Submergence,
           aes(y = Flav, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~DATrt)
    
    ggplot(data = Submergence,
           aes(y = NBI, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~DATrt)
    
    ggplot(data = Submergence,
           aes(y = SPAD, x = Genotype, fill = Treatment,
               group = interaction(Genotype, Treatment))) +
      geom_boxplot() +
      facet_grid(~DATrt)
    
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
      geom_smooth(method = "glm")
    