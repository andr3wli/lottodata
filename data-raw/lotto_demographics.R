## code to prepare `lotto_demographics` dataset goes here
library(dplyr)
library(readr)
library(lubridate)

src <- "https://osf.io/utxjf/download"

raw <- read_csv(src)

lotto_demographics <- raw %>%
  select(-FSA_1) %>%
  rename(
    zip_code = FSA,
    geo_id = `GEO UID`,
    income = income,
    education = education,
    mbsa = mbsa,
    ses = ses,
    description = desc
  )

# usethis::use_data(lotto_demographics, overwrite = TRUE)
save(lotto_demographics, file = "data/lotto_demographics.rda", compress = "bzip2")
saveRDS(lotto_demographics, "tests/testthat/lotto_demographics.rds")
