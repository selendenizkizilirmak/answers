library(dplyr)

data = read.csv("country_vaccination_stats.csv", header = T)
head(data)
summary(data)
sum(is.na(data))

data <- data %>%
  mutate(daily_vaccinations  = ifelse(is.na(daily_vaccinations), min(na.omit(daily_vaccinations)), daily_vaccinations))

sum(is.na(data))
