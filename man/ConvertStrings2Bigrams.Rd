\name{ConvertStrings2Bigrams}
\alias{ConvertStrings2Bigrams}
\title{Decomposes vectors of character strings into bigrams}
\usage{
  ConvertStrings2Bigrams(word.vector)
}
\arguments{
  \item{word.vector}{vector of character strings (e.g.,
  word lists).}
}
\value{
  List structure containing the constituent bigrams of each
  string in the input vector. Strings of length 0 or 1
  return NA and raise warnings.
}
\description{
  Takes any vector of character strings (e.g., word lists)
  and extract their constituent bigrams (if there are any).
  Generalizes \code{\link{ChunkNGrams}} to work with
  character string vectors of length > 1.
}
\examples{
sentence <- c("R", "is", "a", "popular", "programming", "language")
ConvertStrings2Bigrams(sentence)
}
\seealso{
  \code{\link{ConvertStrings2Unigrams}}
}

