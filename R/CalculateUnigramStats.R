#' @title Calculates Sum and Mean Unigram frequency of arbitrary vector of 
#'   strings
#' 
#' @description Wrapper function that allows one to pass a vector of strings 
#'   (e.g., a word list) and get their Sum and Mean Unigram Frequencies as a 
#'   result. 
#'
#' @param list.of.words Vector of strings (e.g., words or pseudowords).
#'
#' @template ugcorpus
#'
#' @return Matrix containing the Sum and Mean frequency count of the unigrams of
#'   each input string.
#'
#' @export
#'
#' @seealso \code{\link{CalculateBigramStats}}
#'
#' @examples
#'
#' #It works with a vector of size 1:
#' with(unigram.frequencies, CalculateUnigramStats("glurb", Character, NYT))
#' with(unigram.frequencies, CalculateUnigramStats("glurb", Character, Encycl))
#' with(unigram.frequencies, CalculateUnigramStats("glurb", Character, Web))
#' with(unigram.frequencies, CalculateUnigramStats("glurb", Character, Usenet))
#'
#' #It also works with vectors of size > 1:
#' sentence <- c("R", "is", "a", "popular", "programming", "language")
#' with(unigram.frequencies, CalculateUnigramStats(sentence, Character, NYT))
#' with(unigram.frequencies, CalculateUnigramStats(sentence, Character, Encycl))
#' with(unigram.frequencies, CalculateUnigramStats(sentence, Character, Web))
#' with(unigram.frequencies, CalculateUnigramStats(sentence, Character, Usenet))
#'
#' \dontrun{
#' #Vector of type logical does not work:
#' with(unigram.frequencies, CalculateUnigramStats(c(T, F), Character, Web))
#' #This goes through, but it should not:
#' with(unigram.frequencies, CalculateUnigramStats(c(T, "glurb"), Character, Web))
#' }
CalculateUnigramStats <- function(list.of.words, unigram.corpus, 
                                 unigram.corpus.frequency) {
  # Wrapper function that take as input a vector of words and a unigram corpus
  # and returns the sum and mean of the unigram counts
  
  if (is.logical(list.of.words)) {
    # logical values (T, F) throw off the results, because they are coerced to
    # the string "TRUE" and "FALSE". Therefore, they are not valid inputs.
    stop("Input cannot be a vector of type 'logical'!")
  }
  
  if (is.list(list.of.words)) {
    list.of.words <- unlist(list.of.words)
  } else {
    if (!is.vector(list.of.words)) {
      list.of.words <- as.vector(list.of.words)
      warning("Input is neither a vector nor a list. The input will be coerced to vector, but there is a chance that the results will not make sense!
        You are advised to try again, but passing a vector or a list of strings."
      )
    }
  }
  unigrams <- ConvertStrings2Unigrams(list.of.words)
  unigrams.frequencies <- lapply(unigrams, ConvertUnigrams2Frequencies,
    unigram.corpus = unigram.corpus, 
    unigram.corpus.frequency = unigram.corpus.frequency
  )
  unigrams.summary <- t(sapply(unigrams.frequencies, SumAndMeanUnigrams))
  return(unigrams.summary)
}
