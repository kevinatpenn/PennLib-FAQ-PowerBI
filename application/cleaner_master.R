# Set data file location and names

setwd("~/Documents/GitHub/PennLib-FAQ-PowerBI/data")

allfaqviews_old <- "allfaqviews_clean.csv"
allfaqviews_new <- "allfaqviews_2023_7_25.csv" # Update this filename
allfaqviews_out <- allfaqviews_old

faq_export_old <- "la_faq_export_clean.csv"
faq_export_new <- "la_faq_export2023-07-25_10_23_57.csv" # Update this filename
faq_export_out <- faq_export_old

queryanalyzer_old <- "la_queryanalyzer_store.csv"
queryanalyzer_new <- "queryanalyzer_707_2023-07-25_10_24_09.csv" # Update this filename
queryanalyzer_out <- "la_queryanalyzer_clean.csv"


# Run scripts

source("~/Documents/GitHub/PennLib-FAQ-PowerBI/application/cleaner_allfaqviews.R")
source("~/Documents/GitHub/PennLib-FAQ-PowerBI/application/cleaner_faq_export.R")
source("~/Documents/GitHub/PennLib-FAQ-PowerBI/application/cleaner_queryanalyzer.R")
