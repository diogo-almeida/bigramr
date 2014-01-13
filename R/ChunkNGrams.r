#' @title Decomposes character string into n-grams
#'
#' @description Takes any string and extracts constituent n-grams
#'
#' @param string character string to be decomposed into n-grams. If of type 
#'   'logical', the function halts and throws an error message. Otherwise, if 
#'   input is not of type 'character', the function attempts to coerce it, but 
#'   it displays a warning message.
#'
#' @param n size of the n-gram to be used for chunking 
#'   (e.g., 1 = unigram, 2 = bigram, etc). If of type 'logical', the function 
#'   halts and throws an error message. Otherwise, the function attempts to 
#'   coerce \code{n} to integer.
#'
#' @return Vector of n-grams. Strings of length 0 or < n return NA.
#'
#' @export
#'
#' @seealso \code{\link{String2Bigram}} (now deprecated).
#'
#' @examples
#'
#' ChunkNGrams("programming", n = 1)
#' ChunkNGrams("programming", n = 2)
#' ChunkNGrams("programming", n = 3)
#' ChunkNGrams("R", n = 1)
#' \dontrun{
#' ChunkNGrams("R", n = 2)
#' }
ChunkNGrams <- function(string, n) {
  require(stringr)

  # Checks if 'string' is of correct type
  if (is.logical(string)) {
    stop("string cannot be of type 'logical'!")
  } else {
    if (!is.character(string)) {
      warning("string is not of type 'character', but will coerced to it.\nCheck results to see if they make sense.")
    }
  }

  # Checks if 'n' is of correct type
  if (is.logical(n)) {
    stop("n cannot be of 'logical' type, needs to be a numerical value.")
  }
  n <- as.integer(n)  # coerces doubles to integer and characters to NA
  if (is.na(n) || (n == 0)) {
    stop("n needs to be an integer larger than 0")
  }
  
  # Chunks strings into ngrams of size n
  string.length <- str_length(string)
  if (string.length < n) {
    warning("N-gram requested is longer than string!")
    ngrams <- NA
  } else {
    ngrams <-  string.length - (n-1)
    start.idx <- 1:ngrams
    end.idx <- n:string.length
    ngrams <- str_sub(string, start.idx, end.idx)
  }
  return(ngrams)
}