# Meta-analysis of 23 studies, generating a summary and forest plot
library(tidyverse)
library(meta)


my_data <- read_csv("meta_data.csv")


m <- metagen(TE = logTE,
             seTE = seTE,
             studlab = study,
             data = my_data,
             sm = "OR",
             method.tau = "REML")

print(summary(m), digits = 2)

png("forest_plot.png", width = 10, height = 7, units = "in", res = 300)

forest(m, layout = "meta")

dev.off()
