#' @title Looks up vectors of unigrams in frequency database
#'
#' @description Looks up unigram vectors of length >= 1 (such as the ones 
#'   created by function \code{\link{ChunkNGrams}}) in a user-specified 
#'   frequency database. Generalizes \code{\link{Unigram2Frequency}} to work 
#'   with vectors of length > 1.
#'
#' @param unigram.vector vector of character unigrams that will be looked up in 
#'   the user-specified frequency database.
#'
#' @template ugcorpus
#'
#' @return Vector of unigram frequency counts found in user-specified unigram 
#'   frequency database. Strings of length 0 return NA.
#'
#' @export
#'
#' @seealso \code{\link{ConvertBigrams2Frequencies}}
#'
#' @examples
#'
#' with(unigram.frequencies,
#'   ConvertUnigrams2Frequencies(ConvertStrings2Unigrams("language"), 
#'     unigram.corpus = Character, unigram.corpus.frequency = NYT
#'   )
#' )
#'
#' #The following gives an error message:
#' \dontrun{
#' sentence <- c("R", "is", "a", "popular", "programming", "language")
#' with(unigram.frequencies, 
#'   ConvertUnigrams2Frequencies(ConvertStrings2Unigrams(sentence), 
#'     unigram.corpus = Character, unigram.corpus.frequency = NYT
#'   )
#' )
#' }
ConvertUnigrams2Frequencies <- function(unigram.vector, unigram.corpus, 
                                        unigram.corpus.frequency) {
  if(!(is.list(unigram.vector))) {
    # input is a vector of unigrams, and needs to be transformed into a list of 
    # unigrams
    unigram.list <- as.list(unigram.vector)
    names(unigram.list) <- unigram.vector
  } else {
    # input is a vector embedded in a list (regular output of 
    # ConvertStrings2Unigrams), and needs to be transformed into a vector first, 
    # so that the vector can be then transformed into a list of bigrams.
    if (length(unigram.vector) > 1) {
      stop("You are trying to pass several vectors to this function, probably in the form of a list!
        Unfortunately, this function can only deal with one vector at a time.
        Try again with just one vector.
        The correct way of dealing with several vectors at once is to use lapply
        or the wrapper function CalculateUnigramStats.")
    }
    unigram.list <- unlist(unigram.vector)
    unigram.list <- as.list(unigram.list)
    names(unigram.list) <- unigram.vector[[1]]
  }
  
  unigram.frequencies <- sapply(unigram.list, Unigram2Frequency, 
    unigram.corpus = unigram.corpus, 
    unigram.corpus.frequency = unigram.corpus.frequency
  )
  return(unigram.frequencies)
}
