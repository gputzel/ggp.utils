#' Decorator operator
#'
#' @param decorator The decorator functional
#' @param f The function to be decorated
#' @return The decorated function
#' @export
`%decorate%` <- function(decorator, f) {
    decorator(f)
}
