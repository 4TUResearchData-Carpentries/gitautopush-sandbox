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
      colour = "chocolate", # colour of all points
      alpha = 0.3, # set level of opacity (0-1)
      width = 0.2, # random noise on x-axis added to each point
      height = 0.2 # random noise on y-axis added to each point
    )








