\docType{data}
\name{unigram.frequencies}
\alias{unigram.frequencies}
\title{Case-sensitive unigram frequency tables from five different English
  corpora.}
\format{A data frame with 7 columns.}
\source{
  http://link.springer.com/content/esm/art:10.3758/BF03195586/file/MediaObjects/Jones-BRM-2004.zip
}
\description{
  Case-sensitive unigram frequency tables originating from
  five English-language corpora collected and published by
  Jones & Mewhort (2004).
}
\section{Corpora}{
  \itemize{

  \item \code{New York Time corpus}. Based on full-text
  articles from March to March 1992. Approximately 14
  million words.

  \item \code{Encyclopaedia corpus}. Based on a commonly
  used online encyclopedia (Jones & Mewhort, 2004, do not
  identify it by name).  Approximately 7 million words.

  \item \code{Brown corpus}. Based on a subset of the Brown
  corpus (Kucera & Francis, 1967). Around 1 million words.

  \item \code{Web corpus}. Based on 100,000 randomly
  selected web pages.  Approximately 61 million words.

  \item \code{Usenet corpus}. Based on 400 different usenet
  groups.  Approximately 100 million words.

  }
}

\section{Variables}{
  \itemize{

  \item \code{Character}: Characters (unigrams) in the
  corpora.

  \item \code{Character.ASC}: ASCII code of the character
  (unigram).

  \item \code{NYT}: Frequency counts from the New York Time
  corpus.

  \item \code{Encycl}: Frequency counts from the
  Encyclopaedia corpus.

  \item \code{Brown}: Frequency counts from the Brown
  corpus.

  \item \code{Web}: Frequency counts from the Web corpus.

  \item \code{Usenet}: Frequency counts from the Usenet
  corpus.

  }
}
\references{
  Jones, M. N., & Mewhort, D. J. (2004). Case-sensitive
  letter and bigram frequency counts from large-scale
  English corpora. Behavior Research Methods, Instruments,
  & Computers, 36(3), 388-396.

  Kucera, H., & Francis, W. N. (1967). Computational
  analysis of present-day. American English. Dartmouth
  Publishing Group.
}
\keyword{datasets}

