
#Method 1: choose manually
stats <- read.csv(file.choose())

#Method 2: getwd()

getwd()
setwd("/Users/james.chan/Documents/R code/kirill r course")
rm(stats)
stats <- read.csv("P2-Demographic-Data.csv")