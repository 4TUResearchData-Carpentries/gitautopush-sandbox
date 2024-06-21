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

select(interviews, village, no_membrs, months_lack_food)


