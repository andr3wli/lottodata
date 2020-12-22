library(dplyr)
library(readr)
library(lubridate)

src <- "https://osf.io/6qcde/download"

raw <- read_csv(src)

jackpot_size <-raw %>%
  mutate(date = ymd(DATE)) %>%
  mutate_at(vars(DATE), funs(year, month, day)) %>%
  select(-date) %>%
  rename(
    zip_code = FSA,
    start_date = DATE,
    end_date = WEEK_ENDING_DATE,
    game = GAME,
    ticket_sales = TICKETS,
    net_sales = NET_SALES,
    jackpot_size = Jackpot
  )

# usethis::use_data(jackpot_sizes, overwrite = TRUE)
save(jackpot_size, file = "data/jackpot_size.rda", compress='bzip2')
saveRDS(jackpot_size, "tests/testthat/jackpot_size.rds")
