

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



