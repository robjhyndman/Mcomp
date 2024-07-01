context("Mcomp")

test_that("plot and autoplot return the right classes", {
  expect_equal(plot(M1[[1]]), NULL)
  expect_is(autoplot(M3[[1]]), "gg")
  expect_is(autoplot(M3[[1]]), "ggplot")
  expect_equal(length(autoplot(M3[[1]])), 11)
})

test_that("subset returns the right number of series using examples in help file", {
  expect_equal(length(subset(M3,4)), 756)
  expect_equal(length(subset(M1,1,"industry")), 35)
})

