test_that("select2() works with variable names", {
  df1 <- select2(iris, c("Sepal.Length", "Species"))
  expect_s3_class(df1, "data.frame")
  expect_equal(dim(df1), c(nrow(iris), 2))
  expect_equal(df1, dplyr::select(iris, c(Sepal.Length, Species)))
  
  df2 <- select2(iris, "Species")
  expect_s3_class(df2, "data.frame")
  expect_equal(dim(df2), c(nrow(iris), 1))
  expect_equal(df2, dplyr::select(iris, c(Species)))
})

test_that("select2() works with variables names", {
  for (vars in list(c("Sepal.Length", "Species"),      # create for-loop of vars possibilies instead of creating multiple df's
                    "Species",
                    character(0),
                    names(iris))) {
    df1 <- select2(iris, vars)
    expect_s3_class(df1, "data.frame")
    expect_equal(dim(df1), c(nrow(iris), length(vars)))
    expect_equal(df1, dplyr::select(iris, dplyr::all_of(vars)))
  }
})
