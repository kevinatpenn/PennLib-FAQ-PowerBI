# Load data

setwd("C:/Users/kevinat/Documents/PennLib-FAQ-PowerBI/data")

dat_old <- read.csv("la_queryanalyzer_store.csv")
dat_new <- read.csv("queryanalyzer_707_2022-09-26_12_03_12.csv") # Update this filename


# Restore column names

names(dat_old) <- c("Id",
                    sub(".", " ",
                        names(dat_old)[2:ncol(dat_old)],
                        fixed = TRUE))
names(dat_new) <- c("Id",
                    sub(".", " ",
                        names(dat_new)[2:ncol(dat_new)],
                        fixed = TRUE))


# Remove duplicate queries by ID

dat_new <- dat_new[!(dat_new$Id %in% unique(dat_old$Id)), ]


# Add empty IP address fields for alignment

dat_new <- cbind(dat_new[ , 1:5],
                 data.frame(IP = rep(NA, nrow(dat_new))),
                 dat_new[ , 6:ncol(dat_new)],
                 data.frame(IP_orig = rep(NA, nrow(dat_new))))


# Export full data

write.csv(rbind(dat_old, dat_new),
          file = "la_queryanalyzer_store.csv",
          na = "",
          row.names = FALSE)


# Remove query text

dat_old$Query <- NA
dat_new$Query <- NA


# Export data without IP addresses or query text
write.csv(rbind(dat_old[ , -ncol(dat_old)], dat_new[ , -ncol(dat_new)]),
          file = "la_queryanalyzer_clean.csv",
          na = "",
          row.names = FALSE)
