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
      height = 0.2
    )

