#' @title Looks up vectors of bigrams in frequency database
#'
#' @description Looks up bigram vectors of length >= 1 (such as the ones created
#'   by function \code{\link{ChunkNGrams}}) in a user-specified frequency 
#'   database. Generalizes \code{\link{Bigram2Frequency}} to work with vectors 
#'   of length > 1.
#'
#' @param bigram.vector vector of character bigrams that will be looked up in 
#'   the user-specified frequency database.
#'
#' @template bgcorpus
#'
#' @return Vector of bigram frequency counts found in user-specified bigram 
#'   frequency database. Strings of length 0 or 1 return NA.
#'
#' @export
#'
#' @seealso \code{\link{ConvertUnigrams2Frequency}}
#'
#' @examples
#'
#' with(bigram.frequencies, 
#'   ConvertBigrams2Frequencies(ConvertStrings2Bigrams("language"), 
#'     bigram.corpus = Bigram, bigram.corpus.frequency = NYT
#'   )
#' )
#'
#' #The following gives an error message:
#' \dontrun{
#' sentence <- c("R", "is", "a", "popular", "programming", "language")
#' with(bigram.frequencies,
#'   ConvertBigrams2Frequencies(ConvertStrings2Bigrams(sentence), 
#'     bigram.corpus = Bigram, bigram.corpus.frequency = NYT
#'   )
#' )
#' }
ConvertBigrams2Frequencies <- function(bigram.vector, bigram.corpus, 
                                       bigram.corpus.frequency) {
  if(!(is.list(bigram.vector))) {
    # input is a vector of bigrams, and needs to be transformed into a list of 
    # bigrams
    bigram.list <- as.list(bigram.vector)
    names(bigram.list) <- bigram.vector
  } else {
    # input is a vector embedded in a list (regular output of 
    # ConvertStrings2Bigrams), and needs to be transformed into a vector first, 
    # so that the vector can be then transformed into a list of bigrams.
    if (length(bigram.vector) > 1) {
      stop("You are trying to pass several vectors to this function, probably in the form of a list!
        Unfortunately, this function can only deal with one vector at a time.
        Try again with just one vector.
        The correct way of dealing with several vectors at once is to use lapply
        or the wrapper function CalculateBigramStats.")
    }
    bigram.list <- unlist(bigram.vector)
    bigram.list <- as.list(bigram.list)
    names(bigram.list) <- bigram.vector[[1]]
  }
  
  bigram.frequencies <- sapply(bigram.list, Bigram2Frequency, 
    bigram.corpus = bigram.corpus, 
    bigram.corpus.frequency = bigram.corpus.frequency
  )
  return(bigram.frequencies)
}
