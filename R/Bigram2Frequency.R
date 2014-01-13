#' @title Looks up a bigram in a frequency database
#'
#' @description Looks up a single bigram in a user-specified frequency database.
#'
#' @param bigram character bigram that will be looked up in the user-specified 
#'   frequency database.
#'
#' @template bgcorpus
#'
#' @return Frequency count from user-specified bigram frequency database. 
#'   Strings of length 0 or 1 return NA.
#'
#' @export
#'
#' @seealso \code{\link{Unigram2Frequency}}
#'
#' @examples
#'
#' with(bigram.frequencies, Bigram2Frequency(bigram = "pr", 
#'   bigram.corpus = Bigram, bigram.corpus.frequency = NYT)
#' )
#'
#' #The following gives error messages
#' \dontrun{
#' with(bigram.frequencies, Bigram2Frequency(bigram = "r", 
#'   bigram.corpus = Bigram, bigram.corpus.frequency = NYT)
#' )
#'
#' with(bigram.frequencies, Bigram2Frequency(bigram = "pro", 
#'   bigram.corpus = Bigram, bigram.corpus.frequency = NYT)
#' )
#' }
Bigram2Frequency <- function(bigram, bigram.corpus, bigram.corpus.frequency) {  
  require(stringr)
  
  if ((str_length(bigram) != 2) || !is.character(bigram)) {
    warning("string is not a bigram!")
    bigram.frequency <- NA
  } else {
    bigram.frequency <- bigram.corpus.frequency[which(bigram == as.character(bigram.corpus))]
  }
  return(bigram.frequency)
}
