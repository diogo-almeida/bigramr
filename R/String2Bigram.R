#' @title Decomposes character string into bigrams
#'
#' @description Takes any string and extract constituent bigrams if there are 
#'   any.
#'
#' @note This function is now deprecated, and has been superseded by the more 
#'   general function \link{ChunkNGrams}.
#'
#' @param word character string to be decomposed into bigrams. If of type 
#'   'logical', the function halts and throws an error message. Otherwise, if 
#'   input is not of type 'character', the function attempts to coerce it, but 
#'   it displays a warning message.
#'
#' @return Vector of bigrams. Strings of length 0 or 1 return NA.
#'
#' @export
#'
#' @seealso \code{\link{ChunkNGrams}}
#'
#' @examples
#'
#' String2Bigram("programming")
#' String2Bigram("in")
#' String2Bigram("R") # throws a warning and returns NA
#'
#' # Function ChunkNGrams does the same job:
#' String2Bigram("programming")
#' ChunkNGrams("programming", n = 2)
String2Bigram <- function(word) {
  require(stringr)
  
  if (is.logical(word)) {
    stop("string cannot be of type 'logical'!")
  } else {
    if (!is.character(word)) {
      warning("string is not of type 'character', but will coerced to it.\nCheck results to see if they make sense.")
    }
  }
  
  word.length <- str_length(word)
  if (word.length < 2) {
    warning("string is less than two characters long; does not have bigrams!")
    bigrams <- NA
  } else {
    n.bigrams <-  word.length - 1
    start.idx <- 1:n.bigrams
    end.idx <- 2:word.length
    bigrams <- str_sub(word, start.idx, end.idx)
  }
  return(bigrams)
}
