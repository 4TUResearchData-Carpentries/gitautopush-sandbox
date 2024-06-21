#install.packages("tidyverse")
library(tidyverse)
library(here)

interviews <- read_csv(here("data/SAFI_clean.csv"), na = "NULL")
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

interviews[1, 1] # first row, first column
interviews[1, 6] # first row, sixth column
interviews[[2]] # column 2 as vector
interviews[2] # column 2 as tibble
interviews[1,] # row 1
interviews[,1]
interviews[[2]]
interviews["memb_assoc"]
interviews$memb_assoc # index memb_assoc variable

head_interviews <- interviews[1:6,]
interviews[-1,]
interviews[-c(7:131),] # show first 6 rows


# Create a tibble (interviews_100) containing only
# the data in row 100 of the interviews dataset.
interviews_100 <- interviews[100,]
# Now, continue using interviews for each of the
# following activities:
#   
# Notice how nrow() gave you the number of rows in the tibble?
#   
# Use that number to pull out just that last row in the tibble.
# Compare that with what you see as the last row using tail()
  # to make sure it’s meeting expectations.
n_rows <- nrow(interviews)
# Pull out that last row using nrow() instead of the row number.
interviews[n_rows,]
# Create a new tibble (interviews_last) from that last row.
interviews_last <- interviews[n_rows,]
# Using the number of rows in the interviews dataset that
# you found in question 2, extract the row that is in the
# middle of the dataset. Store the content of this middle
# row in an object named interviews_middle.
# (hint: This dataset has an odd number of rows.
# Use the median() function and what you’ve learned
# about sequences in R to extract the middle row!)
interviews_middle <- interviews[median(1:n_rows), ]
# Combine nrow() with the - notation to reproduce the behavior of head(interviews), keeping just the first through 6th rows of the interviews dataset.


# Factors -----------------------------------------------------------------

respondent_floor_type <- factor(c("earth", "cement", "cement", "earth")) # create a short factor
# R will assign 1 to "cement" and 2 to "earth" (alphabetically):
# let's have a look:
levels(respondent_floor_type)
respondent_floor_type
respondent_floor_type <- factor(respondent_floor_type,
                                levels = c("earth", "cement")) # reorder the levels
respondent_floor_type # after re-ordering
respondent_floor_type <- fct_recode(respondent_floor_type,
                                    brick = "cement") # recode "cement" to "brick
respondent_floor_type # after renaming
# factor is unordered, but we can make an ordinal variable out of it
respondent_floor_type <- factor(respondent_floor_type,
                                ordered = TRUE)
respondent_floor_type # after setting it as ordered variable

## Converting factors
as.character(respondent_floor_type) # convert it to character vector
# converting factors to numeric vectors should be done in steps:
year_fct <- factor(c(2023, 1986, 2015, 1994, 1974)) # create a factor with years
year_fct
as.numeric(year_fct) # look at the output, that is not what we want!
as.numeric(as.character(year_fct)) # first convert to character, then to numeric
as.numeric(levels(year_fct))[year_fct] # the recommended way: first obtain factor levels using levels() function
# then we convert these levels into numeric values using as.numeric
# finally we access these numeric values using the integers inside the square brackets

## Renaming factors
memb_assoc <- interviews$memb_assoc # create a vector from the "memb_assoc" column in the interviews data
memb_assoc <- as.factor(memb_assoc) # convert it into factor
memb_assoc
plot(memb_assoc) # bar plot of respondents who are members of an irrigation association

memb_assoc <- interviews$memb_assoc
memb_assoc[is.na(memb_assoc)] <- "undetermined" # replace the missing data with "undetermined"
memb_assoc <- as.factor(memb_assoc) # convert into factor
plot(memb_assoc) # bar plot with NA / undetermined respondents


# Exercise ----------------------------------------------------------------

# 1. replace first letter with capital letter
memb_assoc <- fct_recode(memb_assoc,
                         No = "no", Yes = "yes",
                         Undetermined = "undetermined")
plot(memb_assoc)

# 2. change the order of the categories in the plot
memb_assoc <- factor(memb_assoc,
                     levels = c("No", "Yes", "Undetermined"))
plot(memb_assoc)


# Formatting dates --------------------------------------------------------

library(lubridate)
dates <- interviews$interview_date # extract the interview_date column
str(dates)
interviews$day <- day(dates) # create day column from dates
interviews$month <- month(dates) # create month column from dates
interviews$year <- year(dates) # create year column from dates
interviews
