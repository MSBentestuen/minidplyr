#' Subset variables from data frame
#' 
#' A function that helps you select variables of a data frame
#'
#' @param df A data frame
#' @param vars A vector of either characters (variable names), 
#'     integers (variable indices), or booleans. 
#'
#' @return A data frame with the subsetted variables.
#' @export
#'
#' @examples
#' select2(iris, c("Sepal.Length", "Species"))
#' select2(iris, 1:2)
#' select2(iris, c(TRUE, TRUE, FALSE, FALSE, FALSE))
select2 <- function(df, vars) {
  df[vars]
  # or: df[, vars, drop = FALSE]
}
