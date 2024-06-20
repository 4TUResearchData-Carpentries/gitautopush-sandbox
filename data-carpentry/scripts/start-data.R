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

# test gitautopush
