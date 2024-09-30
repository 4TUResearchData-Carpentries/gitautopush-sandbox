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
