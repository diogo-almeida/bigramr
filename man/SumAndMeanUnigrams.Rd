\name{SumAndMeanUnigrams}
\alias{SumAndMeanUnigrams}
\title{Calculates Sum and Mean Unigram Frequencies}
\usage{
  SumAndMeanUnigrams(frequency.vector)
}
\arguments{
  \item{frequency.vector}{vector of frequencies such as the
  ones created by function
  \code{\link{ConvertUnigrams2Frequencies}}.}
}
\value{
  Vector containing Sum Unigram Frequency and Mean Unigram
  frequency counts.
}
\description{
  Calculates Sum and Mean Unigram Frequencies based on a
  vector of Unigram frequencies (such as the ones created
  by function \code{\link{ConvertUnigrams2Frequencies}}).
}
\examples{
v.frequencies <- c(1000, 200, 4, 50, 80)
SumAndMeanUnigrams(v.frequencies)

x <- with(unigram.frequencies,
  ConvertUnigrams2Frequencies(ConvertStrings2Unigrams("language"),
    unigram.corpus = Character, unigram.corpus.frequency = NYT
  )
)
SumAndMeanUnigrams(x)

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
  \code{\link{SumAndMeanBigrams}};
  \code{\link{CalculatesUnigramStats}}
}

