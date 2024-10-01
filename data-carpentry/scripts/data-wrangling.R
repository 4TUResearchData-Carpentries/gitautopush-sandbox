# for data wrangling we use two R packages that are part of the Tidyverse:
# dplyr and tidyr
# we can load the libraries individually or load the whole tidyverse:
library(dplyr)
library(tidyverse)
# load the here package
library(here)

# first load the SAFI dataset again
interviews <- read_csv(here("data/SAFI_clean.csv"), na = "NULL")

# inspect the data
interviews

# selecting columns and filtering rows ------------
select(interviews, village, no_membrs, months_lack_food) # select() function from dplyr to select columns from a dataframe
interviews[c("village", "no_membrs", "months_lack_food")] # select the same columns using subsetting
select(interviews, village:respondent_wall_type) # select a series of connected columns

## filter rows
filter(interviews, village == "Chirodzo") # filter observations where village name is Chirodzo
filter(interviews, village == "Chirodzo" &
         rooms > 1 &
         no_meals > 2) # filter observations with the "AND" operator, so the output dataframe satisfies ALL conditions

## select rows based on an "OR" statement (| logical operator - vertical bar)
# where at least one of the conditions must be met
filter(interviews, village == "Chirodzo" | village == "Ruaca")









