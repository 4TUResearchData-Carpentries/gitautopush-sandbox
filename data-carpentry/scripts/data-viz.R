library(tidyverse)
library(here)

# load our new dataset that we created at the end of data wrangling
interviews_plotting <- read_csv(here("data_output/interviews_plotting.csv"))

# Anatomy of a ggplot
# <DATA> %>%
#   ggplot(aes(<MAPPINGS>)) +
#   <GEOM_FUNCTION>() +
#   <CUSTOMISATION>

# create a basic scatter plot with no_membrs on x and number_items on y

interviews_plotting %>% 
  ggplot(mapping = aes(x = no_membrs, y = number_items)) +
    geom_point(alpha = 0.3) # set level of opacity (0-1)

# maybe a different type of plot

interviews_plotting %>% 
  ggplot(mapping = aes(x = no_membrs, y = number_items)) +
    geom_jitter(
      colour = "#00A6D6", # colour of all points
      alpha = 0.3, # set level of opacity (0-1)
      width = 0.2, # random noise on x-axis added to each point
      height = 0.2 # random noise on y-axis added to each point
    )

# map a variable to the colour aesthetic

interviews_plotting %>% 
  ggplot(aes(x = no_membrs, y = number_items, colour = village)) + # colour added to aes() instead of geom_*()
    geom_count()

## Exercise 1

interviews_plotting %>%
  ggplot(aes(x = village, y = rooms, colour = respondent_wall_type)) +
  geom_jitter()

# categorical and numeric variables

interviews_plotting %>% 
  ggplot(aes(x = village, y = rooms)) +
  geom_boxplot() +
  geom_jitter(
    colour = "tomato",
    alpha = 0.3,
    width = 0.2,
    height = 0.2
  )

interviews_plotting %>% 
  ggplot(aes(x = village, y = rooms)) +
  geom_violin() +
  geom_jitter(
    colour = "tomato",
    alpha = 0.3,
    width = 0.2,
    height = 0.2
  )



