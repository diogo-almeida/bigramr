\name{CalculateUnigramStats}
\alias{CalculateUnigramStats}
\title{Calculates Sum and Mean Unigram frequency of arbitrary vector of
  strings}
\usage{
  CalculateUnigramStats(list.of.words, unigram.corpus,
    unigram.corpus.frequency)
}
\arguments{
  \item{list.of.words}{Vector of strings (e.g., words or
  pseudowords).}

  \item{unigram.corpus}{vector of bigrams that are
  associated with frequencies in a bigram frequency
  database, like dataset
  \code{\link{unigram.frequencies}}.}

  \item{unigram.corpus.frequency}{vector of frequencies
  that are associated with bigrams in a bigram frequency
  database, like dataset
  \code{\link{unigram.frequencies}}.}
}
\value{
  Matrix containing the Sum and Mean frequency count of the
  unigrams of each input string.
}
\description{
  Wrapper function that allows one to pass a vector of
  strings (e.g., a word list) and get their Sum and Mean
  Unigram Frequencies as a result.
}
\examples{
#It works with a vector of size 1:
with(unigram.frequencies, CalculateUnigramStats("glurb", Character, NYT))
with(unigram.frequencies, CalculateUnigramStats("glurb", Character, Encycl))
with(unigram.frequencies, CalculateUnigramStats("glurb", Character, Web))
with(unigram.frequencies, CalculateUnigramStats("glurb", Character, Usenet))

#It also works with vectors of size > 1:
sentence <- c("R", "is", "a", "popular", "programming", "language")
with(unigram.frequencies, CalculateUnigramStats(sentence, Character, NYT))
with(unigram.frequencies, CalculateUnigramStats(sentence, Character, Encycl))
with(unigram.frequencies, CalculateUnigramStats(sentence, Character, Web))
with(unigram.frequencies, CalculateUnigramStats(sentence, Character, Usenet))

\dontrun{
#Vector of type logical does not work:
with(unigram.frequencies, CalculateUnigramStats(c(T, F), Character, Web))
#This goes through, but it should not:
with(unigram.frequencies, CalculateUnigramStats(c(T, "glurb"), Character, Web))
}
}
\seealso{
  \code{\link{CalculateBigramStats}}
}

