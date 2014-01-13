\docType{data}
\name{SUBTLEXus.aug}
\alias{SUBTLEXus.aug}
\title{Augmented SUBTLEXus corpus of word frequencies in American English}
\format{A data frame with 29 columns.}
\source{
  http://expsy.ugent.be/research/Rdocuments/downloads/SUBTLEXus/index.htm

  http://expsy.ugent.be/research/Rdocuments/downloads/SUBTLEXus/SUBTLEXus74286wordstextversion.zip

  http://link.springer.com/content/esm/art:10.3758/BF03195586/file/MediaObjects/Jones-BRM-2004.zip
}
\description{
  Frequency measures for 74,286 American English words
  computed from a large corpus of movie subtitles collected
  by Brysbaert & New (2009), augmented by unigram and
  bigram frequencies from the Jones & Mewhort (2004)
  corpora.
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

  \item \code{Ug.Sum.NYT:} Sum unigram frequency based on
  the New York Times corpus of Jones & Mewhort (2004).

  \item \code{Ug.Mean.NYT:} Mean unigram frequency based on
  the New York Times corpus of Jones & Mewhort (2004).

  \item \code{Ug.Sum.Encycl:} Sum unigram frequency based
  on the Encyclopaedia corpus of Jones & Mewhort (2004).

  \item \code{Ug.Mean.Encycl:} Mean unigram frequency based
  on the Encyclopaedia corpus of Jones & Mewhort (2004).

  \item \code{Ug.Sum.Brown:} Sum unigram frequency based on
  the Brown corpus of Jones & Mewhort (2004).

  \item \code{Ug.Mean.Brown:} Mean unigram frequency based
  on the Brown corpus of Jones & Mewhort (2004).

  \item \code{Ug.Sum.Web:} Sum unigram frequency based on
  the Web corpus of Jones & Mewhort (2004).

  \item \code{Ug.Mean.Web:} Mean unigram frequency based on
  the Web corpus of Jones & Mewhort (2004).

  \item \code{Ug.Sum.Usenet:} Sum unigram frequency based
  on the Usenet corpus of Jones & Mewhort (2004).

  \item \code{Ug.Mean.Usenet:} Mean unigram frequency based
  on the Usenet corpus of Jones & Mewhort (2004).

  \item \code{Bg.Sum.NYT:} Sum bigram frequency based on
  the New York Times corpus of Jones & Mewhort (2004).

  \item \code{Bg.Mean.NYT:} Mean bigram frequency based on
  the New York Times corpus of Jones & Mewhort (2004).

  \item \code{Bg.Sum.Encycl:} Sum bigram frequency based on
  the Encyclopaedia corpus of Jones & Mewhort (2004).

  \item \code{Bg.Mean.Encycl:} Mean bigram frequency based
  on the Encyclopaedia corpus of Jones & Mewhort (2004).

  \item \code{Bg.Sum.Brown:} Sum bigram frequency based on
  the Brown corpus of Jones & Mewhort (2004).

  \item \code{Bg.Mean.Brown:} Mean bigram frequency based
  on the Brown corpus of Jones & Mewhort (2004).

  \item \code{Bg.Sum.Web:} Sum bigram frequency based on
  the Web corpus of Jones & Mewhort (2004).

  \item \code{Bg.Mean.Web:} Mean bigram frequency based on
  the Web corpus of Jones & Mewhort (2004).

  \item \code{Bg.Sum.Usenet:} Sum bigram frequency based on
  the Usenet corpus of Jones & Mewhort (2004).

  \item \code{Bg.Mean.Usenet:} Mean bigram frequency based
  on the Usenet corpus of Jones & Mewhort (2004).

  }
}
\references{
  Brysbaert, M., & New, B. (2009). Moving beyond Kučera and
  Francis: A critical evaluation of current word frequency
  norms and the introduction of a new and improved word
  frequency measure for American English. Behavior Research
  Methods, 41(4), 977-990.

  Jones, M. N., & Mewhort, D. J. (2004). Case-sensitive
  letter and bigram frequency counts from large-scale
  English corpora. Behavior Research Methods, Instruments,
  & Computers, 36(3), 388-396.
}
\keyword{datasets}

