\name{String2Bigram}
\alias{String2Bigram}
\title{Decomposes character string into bigrams}
\usage{
  String2Bigram(word)
}
\arguments{
  \item{word}{character string to be decomposed into
  bigrams. If of type 'logical', the function halts and
  throws an error message. Otherwise, if input is not of
  type 'character', the function attempts to coerce it, but
  it displays a warning message.}
}
\value{
  Vector of bigrams. Strings of length 0 or 1 return NA.
}
\description{
  Takes any string and extract constituent bigrams if there
  are any.
}
\note{
  This function is now deprecated, and has been superseded
  by the more general function \link{ChunkNGrams}.
}
\examples{
String2Bigram("programming")
String2Bigram("in")
String2Bigram("R") # throws a warning and returns NA

# Function ChunkNGrams does the same job:
String2Bigram("programming")
ChunkNGrams("programming", n = 2)
}
\seealso{
  \code{\link{ChunkNGrams}}
}

