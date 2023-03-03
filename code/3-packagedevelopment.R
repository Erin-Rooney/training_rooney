#creating packages

#load packages

source("code/0-packages.R")
library(devtools)
library(usethis)
library(roxygen2)

#don't create nested git project (no git folders within other git folder)
#violate cardinal rule
#move working directory up one level
