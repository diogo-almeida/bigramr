\name{Unigram2Frequency}
\alias{Unigram2Frequency}
\title{Looks up a unigram in a frequency database}
\usage{
  Unigram2Frequency(unigram, unigram.corpus,
    unigram.corpus.frequency)
}
\arguments{
  \item{unigram}{character unigram that will be looked up
  in the user-specified frequency database.}

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
  Frequency count from user-specified unigram frequency
  database.  Strings of length 0 return NA.
}
\description{
  Looks up a single unigram in a user-specified frequency
  database.
}
\examples{
with(unigram.frequencies,
  Unigram2Frequency(unigram = "p", unigram.corpus = Character,
    unigram.corpus.frequency = NYT)
)

#The following gives error messages
\dontrun{
with(unigram.frequencies,
  Unigram2Frequency(unigram = "pro",
    unigram.corpus = Character, unigram.corpus.frequency = NYT
  )
)
}
}
\seealso{
  \code{\link{Bigram2Frequency}}
}

