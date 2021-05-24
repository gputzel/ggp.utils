#' Save R object along with context
#'
#' @param object The R value to be saved in the RDS file
#' @export
saveRDS.ggp <- function(object, file, ...) {
    attr(object, "sessionInfo") <- sessionInfo()
    if (rstudioapi::isAvailable()) {
        #If we are in an RStudio notebook, then we have additional context to
        attr(object, "context") <- rstudioapi::getActiveDocumentContext()
    }
    saveRDS(object = object, file = file, ...)
}
