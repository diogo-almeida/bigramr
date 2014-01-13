\name{ConvertBigrams2Frequencies}
\alias{ConvertBigrams2Frequencies}
\title{Looks up vectors of bigrams in frequency database}
\usage{
  ConvertBigrams2Frequencies(bigram.vector, bigram.corpus,
    bigram.corpus.frequency)
}
\arguments{
  \item{bigram.vector}{vector of character bigrams that
  will be looked up in the user-specified frequency
  database.}

  \item{bigram.corpus}{vector of bigrams that are
  associated with frequencies in a bigram frequency
  database, like dataset \code{\link{bigram.frequencies}}.}

  \item{bigram.corpus.frequency}{vector of frequencies that
  are associated with bigrams in a bigram frequency
  database, like dataset \code{\link{bigram.frequencies}}.}
}
\value{
  Vector of bigram frequency counts found in user-specified
  bigram frequency database. Strings of length 0 or 1
  return NA.
}
\description{
  Looks up bigram vectors of length >= 1 (such as the ones
  created by function \code{\link{ChunkNGrams}}) in a
  user-specified frequency database. Generalizes
  \code{\link{Bigram2Frequency}} to work with vectors of
  length > 1.
}
\examples{
with(bigram.frequencies,
  ConvertBigrams2Frequencies(ConvertStrings2Bigrams("language"),
    bigram.corpus = Bigram, bigram.corpus.frequency = NYT
  )
)

#The following gives an error message:
\dontrun{
sentence <- c("R", "is", "a", "popular", "programming", "language")
with(bigram.frequencies,
  ConvertBigrams2Frequencies(ConvertStrings2Bigrams(sentence),
    bigram.corpus = Bigram, bigram.corpus.frequency = NYT
  )
)
}
}
\seealso{
  \code{\link{ConvertUnigrams2Frequency}}
}

