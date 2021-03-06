library(lubridate)
library(lubridateExtras)
context("Round Functions")

test_that("round_hms", {
  x <- lubridate::hms("12:34:56")
  expect_equal(round_hms(x, "5 seconds"), lubridate::hms("12:34:55"))
  expect_equal(round_hms(x, "5 minutes"), lubridate::hms("12:35:00"))
})

test_that("floor_hms", {
  x <- lubridate::hms("12:34:56")
  expect_equal(floor_hms(x, "5 seconds"), lubridate::hms("12:34:55"))
  expect_equal(floor_hms(x, "5 minutes"), lubridate::hms("12:30:00"))
})

test_that("ceiling_hms", {
  x <- lubridate::hms("12:34:56")
  expect_equal(ceiling_hms(x, "5 seconds"), lubridate::hms("12:35:00"))
  expect_equal(ceiling_hms(x, "5 minutes"), lubridate::hms("12:35:00"))
})
