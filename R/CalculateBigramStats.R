#' @title Calculates Sum and Mean Bigram frequency of arbitrary vector of strings
#' 
#' @description Wrapper function that allows one to pass a vector of strings 
#'   (e.g., a word list) and get their Sum and Mean Bigram Frequencies as a 
#'   result. 
#'
#' @param list.of.words Vector of strings (e.g., words or pseudowords).
#'
#' @template bgcorpus
#'
#' @return Matrix containing the Sum and Mean frequency count of the bigrams of
#'   each input string.
#'
#' @export
#'
#' @seealso \code{\link{CalculateUnigramStats}}
#'
#' @examples
#'
#' #It works with a vector of size 1:
#' with(bigram.frequencies, CalculateBigramStats("glurb", Bigram, NYT))
#' with(bigram.frequencies, CalculateBigramStats("glurb", Bigram, Encycl))
#' with(bigram.frequencies, CalculateBigramStats("glurb", Bigram, Web))
#' with(bigram.frequencies, CalculateBigramStats("glurb", Bigram, Usenet))
#'
#' #It also works with vectors of size > 1:
#' sentence <- c("R", "is", "a", "popular", "programming", "language")
#' with(bigram.frequencies, CalculateBigramStats(sentence, Bigram, NYT))
#' with(bigram.frequencies, CalculateBigramStats(sentence, Bigram, Encycl))
#' with(bigram.frequencies, CalculateBigramStats(sentence, Bigram, Web))
#' with(bigram.frequencies, CalculateBigramStats(sentence, Bigram, Usenet))
#'
#' #Vector of type logical does not work:
#' \dontrun{
#' with(bigram.frequencies, CalculateBigramStats(c(T, F), Bigram, Web))
#' #This goes through, but it should not:
#' with(bigram.frequencies, CalculateBigramStats(c(T, "glurb"), Bigram, Web))
#' }
CalculateBigramStats <- function(list.of.words, bigram.corpus, 
                                 bigram.corpus.frequency) {
  # Wrapper function that take as input a vector of words and a bigram corpus
  # and returns the sum and mean of the bigram counts (equivalent to the 
  # BG_Sum and BG_Mean of the English Lexicon Project)
  
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
  bigrams <- ConvertStrings2Bigrams(list.of.words)
  bigrams.frequencies <- lapply(bigrams, ConvertBigrams2Frequencies,
    bigram.corpus = bigram.corpus, 
    bigram.corpus.frequency = bigram.corpus.frequency
  )
  bigrams.summary <- t(sapply(bigrams.frequencies, SumAndMeanBigrams))
  return(bigrams.summary)
}
