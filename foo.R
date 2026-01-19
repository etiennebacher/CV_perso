reprex::reprex({
  library(methods)
  library(Matrix)

  m <- setClass("A", contains = "dgCMatrix")
  isS4(m)

  is(m)

  testthat::expect_equal(
    is(m),
    c(
      "classGeneratorFunction",
      "function",
      "OptionalFunction",
      "PossibleMethod",
      "optionalMethod"
    )
  )

  testthat::expect_s4_class(
    m,
    c(
      "classGeneratorFunction",
      "function",
      "OptionalFunction",
      "PossibleMethod",
      "optionalMethod"
    )
  )
})

library(Matrix)
