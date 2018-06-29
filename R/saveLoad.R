#' A decorator to allow easy caching of function output
#'
#' @param f Function to be decorated
#' @return Decorated function that takes an additional argument `filename`
#' @export
saveLoad <- function(f){
    function(filename,...){
        if(file.exists(filename)){
            ## Get the answer, it's already there
            return(readRDS(filename))
        } else {
            ## Run f, save the results, return value
            res <- f(...)
            if(!dir.exists(dirname(filename))){
                dir.create(dirname(filename),recursive = T)
            }
            saveRDS(object=res,file=filename)
            return(res)
        }
    }
}
