#' @title Calculates Sum and Mean Bigram Frequencies
#'
#' @description Calculates Sum and Mean Bigram Frequencies based on a vector of 
#'   bigram frequencies (such as the ones created by function 
#'   \code{\link{ConvertBigrams2Frequencies}}).
#'
#' @param frequency.vector vector of frequencies such as the ones created by 
#'   function \code{\link{ConvertBigrams2Frequencies}}.
#'
#' @return Vector containing Sum Bigram Frequency and Mean Bigram frequency
#'   counts
#'
#' @export
#'
#' @seealso \code{\link{SumAndMeanUnigrams}}; \code{\link{CalculatesBigramStats}}
#'
#' @examples
#' 
#' v.frequencies <- c(1000, 200, 4, 50, 80)
#' SumAndMeanBigrams(v.frequencies)
#'
#' x <- with(bigram.frequencies, 
#'   ConvertBigrams2Frequencies(ConvertStrings2Bigrams("language"), 
#'     bigram.corpus = Bigram, bigram.corpus.frequency = NYT
#'   )
#' )
#' SumAndMeanBigrams(x)
#' 
#' \dontrun{
#' sentence <- c("R", "is", "a", "popular", "programming", "language")
#' with(bigram.frequencies, ConvertBigrams2Frequencies(
#'   ConvertStrings2Bigrams(sentence), bigram.corpus = Bigram, 
#'     bigram.corpus.frequency = NYT
#'   )
#' )
#' }
SumAndMeanBigrams <- function(frequency.vector) {
  v.sum <- sum(frequency.vector)
  v.mean <- mean(frequency.vector)
  output <- c(v.sum, v.mean)
  names(output) <- c("BigramSum", "BigramMean")
  return(output)
}
