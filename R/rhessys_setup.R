#' Functions for producing RHESSys folders
#'
#' Description. Note that many RHESSys files are produced via GRASS


#' @export
make_rhessys_folders <- function(extra_folders=NA){
  # Code currently only works with one extra folder input

  tmp <- sprintf("mkdir analysis; mkdir auxdata; mkdir awks; mkdir clim; mkdir defs;
                mkdir flowtables; mkdir out; mkdir R; mkdir tecfiles; mkdir worldfiles")
  system(tmp)

  if (is.na(extra_folders) == F){
    tmp1 <- function(x){paste("mkdir ", x, sep="")}
    tmp2 <- as.vector(sapply(extra_folders, tmp1))
    system(tmp2)
  }
}






