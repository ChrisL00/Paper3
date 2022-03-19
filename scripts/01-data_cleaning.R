#### Preamble ####
# Purpose: Prepare the survey data
# Author: Chenyu Lin, Yijun Shen, Wenxuan Li
# Data: 19 March 2022
# Contact: chrischenyu.lin@mail.utoronto.ca



#### Workspace setup ####
# Use R Projects, not setwd().
library(tidyverse)
library(knitr)

# Read data for estimates and standard errors
satisfac.est <- readxl::read_xlsx("inputs/GSS_Table8.xlsx", sheet=2, skip=6)
names(satisfac.est) <- c("Group", "Males", "Females", "Total", "...5", 
                         "Males", "Females", "Total", "...9", 
                         "Males", "Females", "Total")
satisfac.se <- readxl::read_xlsx("inputs/GSS_Table8.xlsx", sheet=3, skip=6)
names(satisfac.se) <- c("Group", "Males", "Females", "Total", "...5", 
                        "Males", "Females", "Total", "...9", 
                        "Males", "Females", "Total")
