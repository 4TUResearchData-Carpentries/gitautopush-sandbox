#install.packages("tidyverse")
library(tidyverse)
library(here)

interviews <- read_csv(here("data/SAFI_clean.csv"))
read.csv("data/SAFI_clean.csv")

view(interviews)
head(interviews)
class(interviews)

dim(interviews) # dimensions of the data frame
nrow(interviews) # number of rows
ncol(interviews) # number of columns

tail(interviews) # last 6 rows

names(interviews) # column names
str(interviews) # structure
summary(interviews)
glimpse(interviews)

## Subsetting data frames

