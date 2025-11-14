# Data Analysis Script
# This script reads data and performs analysis

# Load libraries
library(dplyr)
library(ggplot2)

# Read data
df <- read.csv('data.csv')

# Remove duplicates
df <- df[!duplicated(df), ]

# Filter data
df <- df[df$age > 18, ]
df <- df[df$salary > 50000, ]

# Calculate statistics
for (i in 1:nrow(df)) {
  df$bonus[i] <- df$salary[i] * 0.1
}

# Print results
print(df)

# Create plot
png('plot.png')
plot(df$age, df$salary)
dev.off()
