
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
# last 6 rows
interviews_tail <- interviews[(nrow(interviews)-5):nrow(interviews), ]
# first 6 rows
interviews_head <- interviews[ -(7:n_row), ]

## Factors: for categorical variables

## creation of the factor
levels_walls <- factor(interviews$respondent_wall_type)

# list of the various levels
levels(levels_walls)

# number of levels
nlevels(levels_walls)

# see the first level in the factor
levels(levels_walls)[1]

# see the second level in the factor
levels(levels_walls)[2] 

## renaming levels
levels(levels_walls)[1] <- "Burntbricks"
levels(levels_walls)

## Second method for renaming levels
levels_walls <- fct_recode(levels_walls,Cement='cement')
levels(levels_walls)

plot(levels_walls)



