\name{SumAndMeanBigrams}
\alias{SumAndMeanBigrams}
\title{Calculates Sum and Mean Bigram Frequencies}
\usage{
  SumAndMeanBigrams(frequency.vector)
}
\arguments{
  \item{frequency.vector}{vector of frequencies such as the
  ones created by function
  \code{\link{ConvertBigrams2Frequencies}}.}
}
\value{
  Vector containing Sum Bigram Frequency and Mean Bigram
  frequency counts
}
\description{
  Calculates Sum and Mean Bigram Frequencies based on a
  vector of bigram frequencies (such as the ones created by
  function \code{\link{ConvertBigrams2Frequencies}}).
}
\examples{
v.frequencies <- c(1000, 200, 4, 50, 80)
SumAndMeanBigrams(v.frequencies)

x <- with(bigram.frequencies,
  ConvertBigrams2Frequencies(ConvertStrings2Bigrams("language"),
    bigram.corpus = Bigram, bigram.corpus.frequency = NYT
  )
)
SumAndMeanBigrams(x)

\dontrun{
sentence <- c("R", "is", "a", "popular", "programming", "language")
with(bigram.frequencies, ConvertBigrams2Frequencies(
  ConvertStrings2Bigrams(sentence), bigram.corpus = Bigram,
    bigram.corpus.frequency = NYT
  )
)
}
}
\seealso{
  \code{\link{SumAndMeanUnigrams}};
  \code{\link{CalculatesBigramStats}}
}

