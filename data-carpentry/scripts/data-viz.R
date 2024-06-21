library(tidyverse)
library(here)

interviews_plotting <- read_csv(
  here("data_output/interviews_plotting.csv")
)

interviews_plotting %>% 
  ggplot(aes(x = no_membrs, y = number_items)) +
    geom_point(
      alpha = 0.3
    )

interviews_plotting %>% 
  ggplot(aes(x = no_membrs, y = number_items)) +
    geom_jitter(
      width = 0.2,
      height = 0.2,
      alpha = 0.3,
      colour = "#000" # add colour to points
    )

# map colour to aes
interviews_plotting %>% 
  ggplot(aes(
    x = no_membrs, 
    y = number_items, 
    colour = village)) +
  geom_jitter(
    width = 0.2,
    height = 0.2,
    alpha = 0.6
  )

## Exercise 1

interviews_plotting %>% 
  ggplot(aes(x = village, y = rooms)) +
    geom_jitter(aes(colour = respondent_wall_type))

interviews_plotting %>% 
  ggplot(aes(x = village, y = rooms)) +
   geom_boxplot(aes(fill = respondent_wall_type))

interviews_plotting %>% 
  ggplot(aes(x = village, y = rooms)) +
  geom_boxplot() +
  geom_jitter(
    width = 0.2,
    height = 0.2
  )

## Exercise 2

interviews_plotting %>% 
  ggplot(aes(x = village, y = rooms)) +
    geom_violin()

