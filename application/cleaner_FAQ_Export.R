# Load data

setwd("C:/Users/kevinat/Documents/PennLib-FAQ-PowerBI/data")

names_old <- read.csv("la_faq_list_clean.csv",
                    header = FALSE,
                    nrows = 1)
dat_new <- read.csv("la_faq_export2022-12-28_04_20_18.csv") # Update this filename


# Remove new columns

dat_new <- dat_new[ , -6] # Short Answer


# Restore column names

names_old[1, 1] <- "Id"
names(dat_new) <- names_old


# Export new data

write.csv(dat_new,
          file = "la_faq_export_clean.csv",
          na = "",
          row.names = FALSE)
