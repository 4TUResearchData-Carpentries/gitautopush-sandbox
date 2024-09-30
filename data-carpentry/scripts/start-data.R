
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


