# Load data

setwd("C:/Users/kevinat/Downloads/")

dat_old <- read.csv("la_queryspy_store.csv")
dat_new <- read.csv("la_queryspy2021-11-30.csv") # Update this filename


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


# Add anonymous IP addresses

IP_lookup <- (max(dat_old$IP) + 1):(max(dat_old$IP) + length(unique(dat_new$IP)))
names(IP_lookup) <- unique(dat_new$IP)

dat_new$IP_orig <- dat_new$IP
dat_new$IP <- unname(IP_lookup[dat_new$IP])


# Export full data

write.csv(rbind(dat_old, dat_new),
          file = "la_queryspy_store.csv",
          na = "",
          row.names = FALSE)


# Remove query text

dat_old$Query <- NA
dat_new$Query <- NA

## Export data without IP addresses
write.csv(rbind(dat_old[ , -ncol(dat_old)], dat_new[ , -ncol(dat_new)]),
          file = "la_queryspy_clean.csv",
          na = "",
          row.names = FALSE)

