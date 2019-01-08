# Oleksiy Anokhin
# January 18, 2018

# Objective: build a simple Shiny app to visualize the WBG data on a simple line chart

# Set working directory

# Install packages
library(shiny)
library(ggplot2)
library(ggthemes)

# Read data
dat <- read.csv("Immunization measles.csv", header = TRUE)