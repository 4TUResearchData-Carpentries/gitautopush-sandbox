

## Basic calculations

3 + 5
12 / 3

## assign values to an object/variable

area_hectares <- 2.0

2.47 * area_hectares
area_acres <- 2.47 * area_hectares
print(area_acres)
area_hectares <- 50

## Exercise

r_width = 5
r_height = 10
r_area <- r_width * r_height
print(r_area)

## Functions

a <- sqrt(4)
pi <- 3.1415926
pi_rounded <- round(pi,digits=2)
print(pi_rounded)
pi_rounded <- round(pi)

## Vectors

hh_members <- c(3,5,6,3,8,2,4)
wall_type <- c("muddaub","burntbricks","sunbricks")
length(hh_members)
str(wall_type)
class(wall_type)
logical <- c(TRUE,TRUE,FALSE)

## Exercise

num_char <- c(1, 2, 3, "a")
num_logical <- c(1, 2, 3, TRUE)
char_logical <- c("a", "b", "c", TRUE)
tricky <- c(1, 2, 3, "4")

class(num_char)
class(num_logical)
class(char_logical)
class(tricky)

## Subsetting a vector

print(hh_members[2])
print(wall_type[1])
print(wall_type[c(1,2)])

hh_members>5

hh_members_filtered <- hh_members[hh_members>5]
print(hh_members_filtered)

## Missing values

rooms <- c( 2 , 4 , NA , 4 )
mean(rooms)  
mean(rooms,na.rm=TRUE)  
filtered_rooms <- rooms[is.na(rooms)]
print(filtered_rooms)
filtered_rooms <- rooms[!is.na(rooms)]
print(filtered_rooms)
filtered_rooms <- rooms[complete.cases(rooms)]
print(filtered_rooms)

## Exercise

# create the following vector:

rooms <- c(1, 2, 1, 1, NA, 3, 1, 3, 2, 1, 1, 8, 3, 1, NA, 1)

# use the function median() to calculate the median of
  # of the rooms vector

median(x = rooms, na.rm = T)
median(rooms, T)
median(na.rm = T, x = rooms)

# Use R to figure out how many households in the set
  # use more than 2 rooms for sleeping

rooms_above_2 <- rooms[rooms > 2]
rooms_above_2 <- na.omit(rooms_above_2)
length(rooms_above_2)
rooms_above_2
