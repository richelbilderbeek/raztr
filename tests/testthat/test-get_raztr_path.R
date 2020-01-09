test_that("use", {

  # Long form
  expect_equal(
    system.file(
      "extdata", "razzo_project", "data", "0.2-0.15-1-0.1", "1",
      "parameters.RDa",
      package = "raztr"
    ),
    get_raztr_path("razzo_project/data/0.2-0.15-1-0.1/1/parameters.RDa")
  )

  # Short form
  expect_equal(
    system.file(
      "extdata", "razzo_project", "data", "0.2-0.15-1-0.1", "1",
      "parameters.RDa",
      package = "raztr"
    ),
    get_raztr_path("parameters.RDa")
  )
})

test_that("abuse", {

  expect_error(
    get_raztr_path("abs.ent"),
    "'filename' must be the name of a file in 'inst/extdata'"
  )
})
