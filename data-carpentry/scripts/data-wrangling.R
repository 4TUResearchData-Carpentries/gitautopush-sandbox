# for data wrangling we use two R packages that are part of the Tidyverse:
# dplyr and tidyr
# we can load the libraries individually or load the whole tidyverse:
library(tidyverse)
# load the here package
library(here)

# first load the SAFI dataset again
interviews <- read_csv(here("data/SAFI_clean.csv"), na = "NULL")

## inspect the data
interviews


# selecting columns and filtering rows ------------------------------------

select(interviews, village, no_membrs, months_lack_food) # select() function from dplyr to select columns from dataframe
interviews[c("village", "no_membrs", "months_lack_food")] # select the same columns using subsetting
select(interviews, village:respondent_wall_type) # select a series of connected columns

## filter rows
filter(interviews, village == "Chirodzo") # filter observations where village name is Chirodzo

filter(interviews, village == "Chirodzo" &
         rooms > 1 &
         no_meals > 2) # filter observations with the "AND" operator > output dataframe satisfies ALL conditions

## select rows based on an "OR" statement (| logical operator - vertical bar)
# where at least one of the conditions must be met
filter(interviews, village == "Chirodzo" | village == "Ruaca") # filter observations satisfying one of these two criteria


# Pipes -------------------------------------------------------------------

## What if we want to select and filter at the same time?
## We can use multiple steps
interviews2 <- filter(interviews, village == "Chirodzo") # we make a new dataframe to filter on village
interviews3 <- select(interviews2, village:respondent_wall_type) # next, we select a number of columns from the new dataframe

## another option is to nest functions:
interviews3 <- select(filter(interviews, village == "Chirodzo"),
                      village:respondent_wall_type) ## downsides of nesting: difficult to read
# need to consider the order (R evaluates from the inside out: here first filtering, then selecting)

## more recent addition to R are pipes: %>% (part of the magrittr package in tidyverse)
## pipes let you take the output of one funtion to the next function
## shortcut: Ctrl + Shift + M and for Mac: Cmd + Shift + M

