library(ggplot2)
library(tidyverse)

startups <- read.csv("Startups (1).csv")






mod <-lm(Profit~R.D.Spend, data = startups)
coef(mod)
