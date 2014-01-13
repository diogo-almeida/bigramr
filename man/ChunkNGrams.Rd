\name{ChunkNGrams}
\alias{ChunkNGrams}
\title{Decomposes character string into n-grams}
\usage{
  ChunkNGrams(string, n)
}
\arguments{
  \item{string}{character string to be decomposed into
  n-grams. If of type 'logical', the function halts and
  throws an error message. Otherwise, if input is not of
  type 'character', the function attempts to coerce it, but
  it displays a warning message.}

  \item{n}{size of the n-gram to be used for chunking
  (e.g., 1 = unigram, 2 = bigram, etc). If of type
  'logical', the function halts and throws an error
  message. Otherwise, the function attempts to coerce
  \code{n} to integer.}
}
\value{
  Vector of n-grams. Strings of length 0 or < n return NA.
}
\description{
  Takes any string and extracts constituent n-grams
}
\examples{
ChunkNGrams("programming", n = 1)
ChunkNGrams("programming", n = 2)
ChunkNGrams("programming", n = 3)
ChunkNGrams("R", n = 1)
\dontrun{
ChunkNGrams("R", n = 2)
}
}
\seealso{
  \code{\link{String2Bigram}} (now deprecated).
}

