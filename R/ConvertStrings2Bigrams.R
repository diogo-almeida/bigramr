#' @title Decomposes vectors of character strings into bigrams
#'
#' @description Takes any vector of character strings (e.g., word lists) and 
#'   extract their constituent bigrams (if there are any). Generalizes 
#'   \code{\link{ChunkNGrams}} to work with character string vectors of length > 1.
#'
#' @param word.vector vector of character strings (e.g., word lists).
#'
#' @return List structure containing the constituent bigrams of each string in 
#'   the input vector. Strings of length 0 or 1 return NA and raise warnings.
#'
#' @export
#'
#' @seealso \code{\link{ConvertStrings2Unigrams}}
#'
#' @examples
#'
#' sentence <- c("R", "is", "a", "popular", "programming", "language")
#' ConvertStrings2Bigrams(sentence)
ConvertStrings2Bigrams <- function(word.vector) {
  require(stringr)
  
  if(!is.list(word.vector)) {
    word.list <- as.list(word.vector)
    names(word.list) <- word.vector
  }
  
  output <- lapply(word.list, ChunkNGrams, n = 2)
  return(output)
}
