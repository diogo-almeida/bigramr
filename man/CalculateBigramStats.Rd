\name{CalculateBigramStats}
\alias{CalculateBigramStats}
\title{Calculates Sum and Mean Bigram frequency of arbitrary vector of strings}
\usage{
  CalculateBigramStats(list.of.words, bigram.corpus,
    bigram.corpus.frequency)
}
\arguments{
  \item{list.of.words}{Vector of strings (e.g., words or
  pseudowords).}

  \item{bigram.corpus}{vector of bigrams that are
  associated with frequencies in a bigram frequency
  database, like dataset \code{\link{bigram.frequencies}}.}

  \item{bigram.corpus.frequency}{vector of frequencies that
  are associated with bigrams in a bigram frequency
  database, like dataset \code{\link{bigram.frequencies}}.}
}
\value{
  Matrix containing the Sum and Mean frequency count of the
  bigrams of each input string.
}
\description{
  Wrapper function that allows one to pass a vector of
  strings (e.g., a word list) and get their Sum and Mean
  Bigram Frequencies as a result.
}
\examples{
#It works with a vector of size 1:
with(bigram.frequencies, CalculateBigramStats("glurb", Bigram, NYT))
with(bigram.frequencies, CalculateBigramStats("glurb", Bigram, Encycl))
with(bigram.frequencies, CalculateBigramStats("glurb", Bigram, Web))
with(bigram.frequencies, CalculateBigramStats("glurb", Bigram, Usenet))

#It also works with vectors of size > 1:
sentence <- c("R", "is", "a", "popular", "programming", "language")
with(bigram.frequencies, CalculateBigramStats(sentence, Bigram, NYT))
with(bigram.frequencies, CalculateBigramStats(sentence, Bigram, Encycl))
with(bigram.frequencies, CalculateBigramStats(sentence, Bigram, Web))
with(bigram.frequencies, CalculateBigramStats(sentence, Bigram, Usenet))

#Vector of type logical does not work:
\dontrun{
with(bigram.frequencies, CalculateBigramStats(c(T, F), Bigram, Web))
#This goes through, but it should not:
with(bigram.frequencies, CalculateBigramStats(c(T, "glurb"), Bigram, Web))
}
}
\seealso{
  \code{\link{CalculateUnigramStats}}
}

