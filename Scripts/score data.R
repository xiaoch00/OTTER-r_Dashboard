library(here)
library(tidyverse)
library(knitr)
library(kableExtra)
library(haven)
library(janitor)
library(jsonlite)
library(readr)
library(zoo) # for rolling averages and sums!

master = read_csv(here("~akunerth/Dropbox (University of Oregon)/SEAL R01/_Remote SEAL Pilot/rSEAL_Dashboard"/rSEAL_Data/Test_Data.csv")))

#master = filter(master, SLID != "") 
#master = unique(maslibter)

# source functions --------------------------------------------------------

#source(here("Functions/score_report.R"))
#source(here("Scripts/demo groups.R"))

# score data --------------------------------------------------------------

#scored = score_report(data = master, master = T)

