#' @title Looks up a unigram in a frequency database
#'
#' @description Looks up a single unigram in a user-specified frequency database.
#'
#' @param unigram character unigram that will be looked up in the user-specified 
#'   frequency database.
#'
#' @template ugcorpus
#'
#' @return Frequency count from user-specified unigram frequency database. 
#'   Strings of length 0 return NA.
#'
#' @export
#'
#' @seealso \code{\link{Bigram2Frequency}}
#'
#' @examples
#'
#' with(unigram.frequencies, 
#'   Unigram2Frequency(unigram = "p", unigram.corpus = Character, 
#'     unigram.corpus.frequency = NYT)
#' )
#'
#' #The following gives error messages
#' \dontrun{
#' with(unigram.frequencies,
#'   Unigram2Frequency(unigram = "pro", 
#'     unigram.corpus = Character, unigram.corpus.frequency = NYT
#'   )
#' )
#' }
Unigram2Frequency <- function(unigram, unigram.corpus, unigram.corpus.frequency) {  
  require(stringr)
  
  if ((str_length(unigram) != 1) || !is.character(unigram)) {
    warning("string is not a unigram!")
    unigram.frequency <- NA
  } else {
    unigram.frequency <- unigram.corpus.frequency[which(unigram == as.character(unigram.corpus))]
  }
  return(unigram.frequency)
}
