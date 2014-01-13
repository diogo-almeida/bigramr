\docType{data}
\name{SUBTLEXus}
\alias{SUBTLEXus}
\title{SUBTLEXus corpus of word frequencies in American English}
\format{A data frame with 9 columns.}
\source{
  http://expsy.ugent.be/research/Rdocuments/downloads/SUBTLEXus/index.htm

  http://expsy.ugent.be/research/Rdocuments/downloads/SUBTLEXus/SUBTLEXus74286wordstextversion.zip
}
\description{
  Frequency measures for 74,286 American English words
  computed from a 51 million word corpus of movie subtitles
  collected by Brysbaert & New (2009).
}
\section{Variables}{
  \itemize{

  \item \code{Word:} American English word. Capitalized
  when the word more often starts with an uppercase letter
  than with a lowercase letter in the corpus.

  \item \code{FREQcount:} Number of times the word appears
  in the corpus (total = 51 million words).

  \item \code{CDcount:} Number of films in which the word
  appears (maximum = 8,388).

  \item \code{FREQlow:} Number of times the word appears in
  the corpus starting with a lowercase letter.

  \item \code{CDlow:} Number of films in which the word
  appears starting with a lowercase letter.

  \item \code{SUBTLWF:} Word frequency per million words.
  It is a standard measure of word frequency independent of
  the corpus size.

  \item \code{Lg10WF:} Log frequency of FREQcount,
  calculated by log10(FREQcount+1).

  \item \code{SUBTLCD:} Percentage of the films in which
  the word appears.

  \item \code{Lg10CD:} Log frequency of CDcount, calculated
  by log10(CDcount+1).

  }
}
\references{
  Brysbaert, M., & New, B. (2009). Moving beyond Kučera and
  Francis: A critical evaluation of current word frequency
  norms and the introduction of a new and improved word
  frequency measure for American English. Behavior Research
  Methods, 41(4), 977-990.
}
\keyword{datasets}

