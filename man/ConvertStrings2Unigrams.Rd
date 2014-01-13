\name{ConvertStrings2Unigrams}
\alias{ConvertStrings2Unigrams}
\title{Decomposes vectors of character strings into unigrams}
\usage{
  ConvertStrings2Unigrams(word.vector)
}
\arguments{
  \item{word.vector}{vector of character strings (e.g.,
  word lists).}
}
\value{
  List structure containing the constituent unigrams of
  each string in the input vector. Strings of length 0
  return NA and raise warnings.
}
\description{
  Takes any vector of character strings (e.g., word lists)
  and extract their constituent unigrams. Generalizes
  \code{\link{ChunkNGrams}} to work with character string
  vectors of length > 1.
}
\examples{
sentence <- c("R", "is", "a", "popular", "programming", "language")
ConvertStrings2Unigrams(sentence)
}
\seealso{
  \code{\link{ConvertStrings2Bigrams}}
}

