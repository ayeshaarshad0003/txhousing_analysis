library(tidyverse)
library(scales)
library(ggplot2)

# Review txhousing data to identify any trends by calendar month
txhousing_agg <- txhousing %>%
  group_by(month) %>%
  summarise_at(vars(median, sales, listings), 
               list(mean = mean, min = min, max = max), 
               na.rm = TRUE)
