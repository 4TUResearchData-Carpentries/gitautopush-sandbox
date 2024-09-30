
library(tidyverse)
library(here)

## read CSV
interviews <- read_csv( here("data","SAFI_clean.csv"),na="NULL")

## first 6 rows
head(interviews)

## last 6 rows
tail(interviews)

## number of rows and columns
dim(interviews)

# Columns names
names(interviews)

# Basic statistical data
summary(interviews)

## Subsetting

# First row, first column
interviews[1,1]

# Select row 1 to 3, and columns 5 up and until 6
interviews[ 1:3 , 5:6 ]

# select a full row
interviews[1,]

# Select a full column
interviews[,1]

## Select everything EXCEPT column 1
interviews[,-1]

# Exercise 1

#row on index 100
interviews_100 <- interviews[100,]
# Last row
n_row <- nrow(interviews)
interviews_last <- interviews[n_row,]
interviews_tail <- interviews[(nrow(interviews)-5):nrow(interviews), ]
interviews_head <- interviews[ -(7:n_row), ]

## Factors: for categorical variables






