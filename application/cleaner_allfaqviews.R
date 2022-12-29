# Check for and install required packages

if( !("tidyr" %in% installed.packages()) ){
  install.packages("tidyr")
}


# Load data

#setwd("C:/Users/kevinat/Documents/PennLib-FAQ-PowerBI/data")

names_old <- read.csv(allfaqviews_old,
                    header = FALSE,
                    nrows = 1)
dat_new <- read.csv(allfaqviews_new, # Update this filename
                    skip = 3)


# Restore initial column names

names_old[1, 1] <- "FAQID"
names(dat_new)[1:2] <- names_old[1:2]


# Lengthen data

dat_new <- tidyr::pivot_longer(dat_new,
                               cols = -1:-2,
                               names_to = "Year.Month",
                               names_prefix = "X",
                               values_to = names_old[ , ncol(names_old)])
dat_new <- dat_new[dat_new[ , ncol(dat_new)] != 0, ]
dat_new <- tidyr::separate(dat_new,#[ , "Year.Month"],
                           col = "Year.Month",
                           into = unlist(names_old[ , 3:4]),
                           sep = "\\.")


# Export new data

write.csv(dat_new,
          file = allfaqviews_out,
          na = "",
          row.names = FALSE)
