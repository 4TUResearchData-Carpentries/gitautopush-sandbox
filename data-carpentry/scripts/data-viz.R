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
    geom_point()










