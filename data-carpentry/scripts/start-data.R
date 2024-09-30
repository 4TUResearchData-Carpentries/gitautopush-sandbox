
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

# basic statistical data
summary(interviews)
