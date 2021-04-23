#' Verbose version of ggplot2::ggsave
#'
#' @param object The R value to be saved in the RDS file
#' @export
ggsave.ggp <- function(filename,plot=NULL,overwrite=FALSE,...){
    if(file.exists(filename)){
        if(!overwrite){
            cat(paste0('File already exists: `',gsub('[.][.]/','',filename),'`'))
            return(FALSE)
        }
    }
    ggplot2::ggsave(filename=filename,plot=plot,...)
    cat(paste0('Figure saved as `',gsub('[.][.]/','',filename),'`'))
}
