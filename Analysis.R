# 1. Load required packages
library(tidyverse)
library(meta)

# 2. Import prepared dataset
# Assumes 'meta_data.csv' is in the same directory
my_data <- read_csv("meta_data.csv")

# 3. Run random-effects meta-analysis
# sm="OR" as data is log-Odds Ratios
# method.tau="REML" is the standard estimator for heterogeneity
m <- metagen(TE = logTE,
             seTE = seTE,
             studlab = study,
             data = my_data,
             sm = "OR",
             method.tau = "REML")

# 4. Print summary of results (pooled OR, I^2, p-value)
print(summary(m), digits = 2)

# 5. Generate and save the forest plot
# Open a high-resolution PNG device
png("forest_plot.png", width = 10, height = 7, units = "in", res = 300)

# Create the plot using the standard 'meta' layout
forest(m, layout = "meta")

# Close the PNG device to save the file
dev.off()
