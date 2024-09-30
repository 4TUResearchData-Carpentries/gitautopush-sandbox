3 + 5

# Install packages ----
# install.packages("tidyverse")
# install.packages("here")

# Download data
download.file("https://ndownloader.figshare.com/files/11492171",
              "data/SAFI_clean.csv", mode = "wb")

# R as calculator 
3 + 5 
12/7
12*7
3^2

# Create an object 

area_hectares <- 1
area_hectares

area_hectares * 2.47

area_hectares <- 2.5
area_hectares *2.47

area_acres <- area_hectares * 2.47
area_acres

area_hectares <- 50

area_acres

# exercise 1 
r_length <- 3
r_width <- 2
r_area <- r_length * r_width
r_area

# Functions 
sqrt(9)

round(3.1415)
args(round)

round(3.1415, digits = 2)


# exercise 2 
floor(1.624)

# Vectors 

hh_members <- c(3, 7, 10 , 6)
hh_members

respondent_wall_type  <- c("muddaub",
                           "burntbricks",
                           "sunbricks")
length(respondent_wall_type)
str(hh_members)

# Add elements to a vector

possessions <- c("bicycle",
                 "radio",
                 "television")
possessions <- c(possessions,
                 "mobile phone")
possessions <- c("car", possessions)
possessions


# Exercise 3 

num_char <- c(1, 2, 3, "a")
num_logical <- c(1, 2L, 3, TRUE)
char_logical <- c("a", "b", "c", TRUE)
tricky <- c(1, 2, 3, "4")

typeof(num_char)
typeof(num_logical)
typeof(char_logical)
typeof(tricky)
# subsetting vectors 

respondent_wall_type[2]
respondent_wall_type[c(1,3)]
respondent_wall_type[2:3]

#subset by logical vector 
hh_members[c(TRUE, FALSE, TRUE, TRUE)]

# subset by condition 
hh_members > 5

hh_members[hh_members > 5]

hh_members[hh_members < 4  | hh_members > 7 ]

hh_members[hh_members >= 4 & hh_members <= 7 ]

possessions[possessions == "car" | 
              possessions == "bicycle"]

possessions %in% c("car", "bicycle")

possessions[possessions %in% c("car",
                               "bicycle")]

# Missing data 
rooms <- c(2 , 1 ,1 , NA, 7)

