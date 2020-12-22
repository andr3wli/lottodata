test_that("jackpot sizes has not changed", {
  expect_equal_to_reference(jackpot_size, "jackpot_size.rda")
})

test_that("jackpot_size contains the columns: game and zip_code",{
  expect_true("game" %in% colnames(jackpot_size))
  expect_true("zip_code" %in% colnames(jackpot_size))
})

test_that("jackpot_size has the correct number of columns and rows", {
  expect_equal(nrow(jackpot_size), 430579)
  expect_equal(ncol(jackpot_size), 10)
})

test_that("jackpot_size contains the correct data", {
  expect_equal(dim(jackpot_size), c(430579, 10))
  expect_equal(colnames(jackpot_size), c("zip_code", "start_date", "end_date", "game",
                                         "ticket_sales", "net_sales", "jackpot_size",
                                         "year", "month", "day"))
  expect_equal(round(mean(jackpot_size$net_sales, na.rm = TRUE)), 3187)
  expect_equal(class(jackpot_size$game), "character")
  expect_equal(class(jackpot_size$day), "integer")
})
