\name{Bigram2Frequency}
\alias{Bigram2Frequency}
\title{Looks up a bigram in a frequency database}
\usage{
  Bigram2Frequency(bigram, bigram.corpus,
    bigram.corpus.frequency)
}
\arguments{
  \item{bigram}{character bigram that will be looked up in
  the user-specified frequency database.}

  \item{bigram.corpus}{vector of bigrams that are
  associated with frequencies in a bigram frequency
  database, like dataset \code{\link{bigram.frequencies}}.}

  \item{bigram.corpus.frequency}{vector of frequencies that
  are associated with bigrams in a bigram frequency
  database, like dataset \code{\link{bigram.frequencies}}.}
}
\value{
  Frequency count from user-specified bigram frequency
  database.  Strings of length 0 or 1 return NA.
}
\description{
  Looks up a single bigram in a user-specified frequency
  database.
}
\examples{
with(bigram.frequencies, Bigram2Frequency(bigram = "pr",
  bigram.corpus = Bigram, bigram.corpus.frequency = NYT)
)

#The following gives error messages
\dontrun{
with(bigram.frequencies, Bigram2Frequency(bigram = "r",
  bigram.corpus = Bigram, bigram.corpus.frequency = NYT)
)

with(bigram.frequencies, Bigram2Frequency(bigram = "pro",
  bigram.corpus = Bigram, bigram.corpus.frequency = NYT)
)
}
}
\seealso{
  \code{\link{Unigram2Frequency}}
}

