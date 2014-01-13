\name{ConvertUnigrams2Frequencies}
\alias{ConvertUnigrams2Frequencies}
\title{Looks up vectors of unigrams in frequency database}
\usage{
  ConvertUnigrams2Frequencies(unigram.vector,
    unigram.corpus, unigram.corpus.frequency)
}
\arguments{
  \item{unigram.vector}{vector of character unigrams that
  will be looked up in the user-specified frequency
  database.}

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
  Vector of unigram frequency counts found in
  user-specified unigram frequency database. Strings of
  length 0 return NA.
}
\description{
  Looks up unigram vectors of length >= 1 (such as the ones
  created by function \code{\link{ChunkNGrams}}) in a
  user-specified frequency database. Generalizes
  \code{\link{Unigram2Frequency}} to work with vectors of
  length > 1.
}
\examples{
with(unigram.frequencies,
  ConvertUnigrams2Frequencies(ConvertStrings2Unigrams("language"),
    unigram.corpus = Character, unigram.corpus.frequency = NYT
  )
)

#The following gives an error message:
\dontrun{
sentence <- c("R", "is", "a", "popular", "programming", "language")
with(unigram.frequencies,
  ConvertUnigrams2Frequencies(ConvertStrings2Unigrams(sentence),
    unigram.corpus = Character, unigram.corpus.frequency = NYT
  )
)
}
}
\seealso{
  \code{\link{ConvertBigrams2Frequencies}}
}

