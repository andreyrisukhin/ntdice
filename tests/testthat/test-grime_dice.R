test_that("generates Grime dice", {
  expect_equal(grime_dice(),
               list(c(4, 4, 4, 4, 4, 9), c(2, 2, 2, 7, 7, 7),
                    c(0, 5, 5, 5, 5, 5), c(3, 3, 3, 3, 8, 8),
                    c(1, 1, 6, 6, 6, 6)))
})
