library(tidyverse)
library(scales)
library(ggplot2)

# Review txhousing data to identify any trends by calendar month
txhousing_agg <- txhousing %>%
  group_by(month) %>%
  summarize(mean_price = mean(median, na.rm = TRUE),
            mean_sales = mean(sales, na.rm = TRUE),
            mean_listings = mean(listings, na.rm = TRUE),
            
            min_price = min(median, na.rm = TRUE), 
            min_sales = min(sales, na.rm = TRUE),
            min_listings = min(listings, na.rm = TRUE),
            
            max_price = max(median, na.rm = TRUE),
            max_sales = max(sales, na.rm = TRUE),
            max_listings = max(listings, na.rm = TRUE)
  )

ggplot(data = txhousing_agg, aes(month, sales_mean)) +
  geom_line() +
  scale_x_continuous(
    breaks = seq(1, 12, 1))+
  labs(title = "Average Sales by Month",
       x = "Month",
       y = "Average Sales")+
  theme_minimal()

git config --global user.email "you@example.com"
git config --global user.name "Your Name"

