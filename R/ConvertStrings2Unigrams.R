#' @title Decomposes vectors of character strings into unigrams
#'
#' @description Takes any vector of character strings (e.g., word lists) and 
#'   extract their constituent unigrams. Generalizes 
#'   \code{\link{ChunkNGrams}} to work with character string vectors of length > 1.
#'
#' @param word.vector vector of character strings (e.g., word lists).
#'
#' @return List structure containing the constituent unigrams of each string in 
#'   the input vector. Strings of length 0 return NA and raise warnings.
#'
#' @export
#'
#' @seealso \code{\link{ConvertStrings2Bigrams}}
#'
#' @examples
#'
#' sentence <- c("R", "is", "a", "popular", "programming", "language")
#' ConvertStrings2Unigrams(sentence)
ConvertStrings2Unigrams <- function(word.vector) {
  require(stringr)
  
  if(!is.list(word.vector)) {
    word.list <- as.list(word.vector)
    names(word.list) <- word.vector
  }
  
  output <- lapply(word.list, ChunkNGrams, n = 1)
  return(output)
}
