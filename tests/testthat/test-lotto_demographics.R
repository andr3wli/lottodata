
test_that("lotto demographics has not changed", {
  expect_equal_to_reference(lotto_demographics, "lotto_demographics.rds")
})

test_that("lotto demographics has the following columns: ses and mbsa", {
  expect_true("ses" %in% colnames(lotto_demographics))
  expect_true("mbsa" %in% colnames(lotto_demographics))
})

test_that("lotto demographics has the correct number of rows and columns", {
  expect_equal(nrow(lotto_demographics), 96)
  expect_equal(ncol(lotto_demographics), 7)
})

test_that("lotto demographics contains the correct data", {
  expect_equal(round(dim(lotto_demographics)), c(96, 7))
  expect_equal(round(sum(lotto_demographics$education, na.rm = TRUE)), 912)
  expect_equal(round(mean(lotto_demographics$income, na.rm = TRUE)), 31481)
  expect_equal(class(lotto_demographics$description), "character")
  expect_equal(class(lotto_demographics$ses), "numeric")
  expect_equal(colnames(lotto_demographics), c("zip_code", "geo_id", "income",
                                               "education", "mbsa", "ses", "description"))
})
