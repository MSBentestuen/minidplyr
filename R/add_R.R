#' My title
#'
#' This will automatically be the description, no need to insert "@description"
#' 
#' After another blank line: the details
#' 
#' @param x 
#' @param y 
#'
#' @return A numeric
#' @export is needed to make functions available to the user(s)
#'
#' @examples 
#' my_fancy_add(2, 3)
#' my_fancy_add(1:2, 2:3)
my_fancy_add <- function(x, y) {
  x + y
}
