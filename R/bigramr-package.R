#' @title Tools to calculate unigram and bigram frequency counts of strings 
#'   (e.g., words, pseudowords).
#' 
#' @description In psycho- and neurolinguistic work that uses written language 
#'   stimuli, it is sometimes important to either control or manipulate certain
#'   properties of character strings, such as Bigram Frequency (cf. The English 
#'   Lexicon Project online; Balota et al. 2007). This package offers tools to
#'   allow researchers to effortlessly calculate the Sum and Mean Unigram 
#'   Frequencies and the Sum and Mean Bigram Frequencies of arbitrary character 
#'   strings (such as words, pseudowords and non-words) based on five different 
#'   case-sensitive unigram and bigram frequency English-language corpora. These
#'   corpora were collected and published by Jones & Mewhort (2004). The 
#'   functions in this package will also work with user-supplied frequency 
#'   corpora, thereby allowing its functionality to be extended to include other
#'   frequency corpora of English and other languages.
#'
#' @references Balota, D. A., Yap, M. J., Hutchison, K. A., Cortese, M. J., 
#'   Kessler, B., Loftis, B., ... & Treiman, R. (2007). The English lexicon 
#'   project. Behavior Research Methods, 39(3), 445-459.
#'
#' @references Jones, M. N., & Mewhort, D. J. (2004). Case-sensitive letter and 
#'   bigram frequency counts from large-scale English corpora. Behavior Research
#'   Methods, Instruments, & Computers, 36(3), 388-396.
#'
#' @name bigramr-package
#' @aliases bigramr
#' @docType package
#' @author Diogo Almeida \email{dalazal@@gmail.com}
#' @keywords package
NULL
#' @title Case-sensitive bigram frequency tables from five different English 
#'   corpora.
#'
#' @description Case-sensitive bigram frequency tables originating from five 
#'   English-language corpora collected and published by Jones & Mewhort (2004).
#' 
#' @name bigram.frequencies
#' @docType data
#' @usage bigram.frequencies
#' @format A data frame with 10 columns.
#' @template corpora-info
#' @section Variables:
#'
#' \itemize{
#' 
#' \item \code{Bigram}: Bigrams in the corpora.
#' 
#' \item \code{Predecessor}: First element of bigram.
#' 
#' \item \code{Successor}: Second element of bigram.
#' 
#' \item \code{Predecessor.ASC}: ASCII code of first element of bigram.
#' 
#' \item \code{Successor.ASC}: ASCII code of second element of bigram.
#' 
#' \item \code{NYT}: Frequency counts from the New York Time corpus.
#' 
#' \item \code{Encycl}: Frequency counts from the Encyclopaedia corpus.
#' 
#' \item \code{Brown}: Frequency counts from the Brown corpus. 
#' 
#' \item \code{Web}: Frequency counts from the Web corpus.
#' 
#' \item \code{Usenet}: Frequency counts from the Usenet corpus.
#'
#' }
#'
#' @references Jones, M. N., & Mewhort, D. J. (2004). Case-sensitive letter and 
#'   bigram frequency counts from large-scale English corpora. Behavior Research
#'   Methods, Instruments, & Computers, 36(3), 388-396.
#' @references Kucera, H., & Francis, W. N. (1967). Computational analysis of
#'   present-day. American English. Dartmouth Publishing Group.
#'
#' @source http://link.springer.com/content/esm/art:10.3758/BF03195586/file/MediaObjects/Jones-BRM-2004.zip
NULL
#' @title Case-sensitive unigram frequency tables from five different English 
#'   corpora.
#'
#' @description Case-sensitive unigram frequency tables originating from five 
#'   English-language corpora collected and published by Jones & Mewhort (2004).
#' 
#' @name unigram.frequencies
#' @docType data
#' @usage unigram.frequencies
#' @format A data frame with 7 columns.
#' @template corpora-info
#' @section Variables:
#'
#' \itemize{
#' 
#' \item \code{Character}: Characters (unigrams) in the corpora.
#' 
#' \item \code{Character.ASC}: ASCII code of the character (unigram).
#'
#' \item \code{NYT}: Frequency counts from the New York Time corpus.
#' 
#' \item \code{Encycl}: Frequency counts from the Encyclopaedia corpus.
#' 
#' \item \code{Brown}: Frequency counts from the Brown corpus. 
#' 
#' \item \code{Web}: Frequency counts from the Web corpus.
#' 
#' \item \code{Usenet}: Frequency counts from the Usenet corpus.
#'
#' }
#'
#' @references Jones, M. N., & Mewhort, D. J. (2004). Case-sensitive letter and 
#'   bigram frequency counts from large-scale English corpora. Behavior Research
#'   Methods, Instruments, & Computers, 36(3), 388-396.
#' @references Kucera, H., & Francis, W. N. (1967). Computational analysis of
#'   present-day. American English. Dartmouth Publishing Group.
#'
#' @source http://link.springer.com/content/esm/art:10.3758/BF03195586/file/MediaObjects/Jones-BRM-2004.zip
NULL
#' @title SUBTLEXus corpus of word frequencies in American English
#'
#' @description Frequency measures for 74,286 American English words computed 
#'   from a 51 million word corpus of movie subtitles collected by Brysbaert & 
#'   New (2009).
#' 
#' @name SUBTLEXus
#' @docType data
#' @usage SUBTLEXus
#' @format A data frame with 9 columns.
#' @section Variables:
#'
#' \itemize{
#'
#' \item \code{Word:} American English word. Capitalized when the word more 
#'   often starts with an uppercase letter than with a lowercase letter in the 
#'   corpus.
#'
#' \item \code{FREQcount:} Number of times the word appears in the corpus 
#'   (total = 51 million words).
#'
#' \item \code{CDcount:} Number of films in which the word appears (maximum = 8,388).
#'
#' \item \code{FREQlow:} Number of times the word appears in the corpus 
#'   starting with a lowercase letter.
#'
#' \item \code{CDlow:} Number of films in which the word appears starting 
#'   with a lowercase letter.
#'
#' \item \code{SUBTLWF:} Word frequency per million words. It is a standard measure of 
#'   word frequency independent of the corpus size.
#'
#' \item \code{Lg10WF:} Log frequency of FREQcount, calculated by log10(FREQcount+1).
#'
#' \item \code{SUBTLCD:} Percentage of the films in which the word appears.
#'
#' \item \code{Lg10CD:} Log frequency of CDcount,  calculated by log10(CDcount+1).
#'
#' }
#'
#' @references Brysbaert, M., & New, B. (2009). Moving beyond Kučera and 
#'   Francis: A critical evaluation of current word frequency norms and the 
#'   introduction of a new and improved word frequency measure for American 
#'   English. Behavior Research Methods, 41(4), 977-990.
#'
#' @source http://expsy.ugent.be/research/Rdocuments/downloads/SUBTLEXus/index.htm
#' @source http://expsy.ugent.be/research/Rdocuments/downloads/SUBTLEXus/SUBTLEXus74286wordstextversion.zip
NULL
#' @title Augmented SUBTLEXus corpus of word frequencies in American English
#'
#' @description Frequency measures for 74,286 American English words computed 
#'   from a large corpus of movie subtitles collected by Brysbaert & New (2009), 
#'   augmented by unigram and bigram frequencies from the Jones & Mewhort (2004)
#'   corpora.
#' 
#' @name SUBTLEXus.aug
#' @docType data
#' @usage SUBTLEXus.aug
#' @format A data frame with 29 columns.
#' @section Variables:
#'
#' \itemize{
#'
#' \item \code{Word:} American English word. Capitalized when the word more 
#'   often starts with an uppercase letter than with a lowercase letter in the 
#'   corpus.
#'
#' \item \code{FREQcount:} Number of times the word appears in the corpus 
#'   (total = 51 million words).
#'
#' \item \code{CDcount:} Number of films in which the word appears 
#'   (maximum = 8,388).
#'
#' \item \code{FREQlow:} Number of times the word appears in the corpus 
#'   starting with a lowercase letter.
#'
#' \item \code{CDlow:} Number of films in which the word appears starting 
#'   with a lowercase letter.
#'
#' \item \code{SUBTLWF:} Word frequency per million words. It is a standard 
#'   measure of word frequency independent of the corpus size.
#'
#' \item \code{Lg10WF:} Log frequency of FREQcount, calculated by 
#'   log10(FREQcount+1).
#'
#' \item \code{SUBTLCD:} Percentage of the films in which the word appears.
#'
#' \item \code{Lg10CD:} Log frequency of CDcount, calculated by log10(CDcount+1).
#'
#' \item \code{Ug.Sum.NYT:} Sum unigram frequency based on the New York Times 
#'   corpus of Jones & Mewhort (2004).
#'
#' \item \code{Ug.Mean.NYT:} Mean unigram frequency based on the New York Times 
#'   corpus of Jones & Mewhort (2004).
#'
#' \item \code{Ug.Sum.Encycl:} Sum unigram frequency based on the Encyclopaedia 
#'   corpus of Jones & Mewhort (2004).
#'
#' \item \code{Ug.Mean.Encycl:} Mean unigram frequency based on the 
#'   Encyclopaedia corpus of Jones & Mewhort (2004).
#'
#' \item \code{Ug.Sum.Brown:} Sum unigram frequency based on the Brown corpus of 
#'   Jones & Mewhort (2004).
#'
#' \item \code{Ug.Mean.Brown:} Mean unigram frequency based on the Brown corpus
#'   of Jones & Mewhort (2004).
#'
#' \item \code{Ug.Sum.Web:} Sum unigram frequency based on the Web corpus of 
#'   Jones & Mewhort (2004).
#'
#' \item \code{Ug.Mean.Web:} Mean unigram frequency based on the Web corpus
#'   of Jones & Mewhort (2004).
#'
#' \item \code{Ug.Sum.Usenet:} Sum unigram frequency based on the Usenet corpus 
#'   of Jones & Mewhort (2004).
#'
#' \item \code{Ug.Mean.Usenet:} Mean unigram frequency based on the Usenet corpus
#'   of Jones & Mewhort (2004).
#'
#' \item \code{Bg.Sum.NYT:} Sum bigram frequency based on the New York Times 
#'   corpus of Jones & Mewhort (2004).
#'
#' \item \code{Bg.Mean.NYT:} Mean bigram frequency based on the New York Times 
#'   corpus of Jones & Mewhort (2004).
#'
#' \item \code{Bg.Sum.Encycl:} Sum bigram frequency based on the Encyclopaedia 
#'   corpus of Jones & Mewhort (2004).
#'
#' \item \code{Bg.Mean.Encycl:} Mean bigram frequency based on the 
#'   Encyclopaedia corpus of Jones & Mewhort (2004).
#'
#' \item \code{Bg.Sum.Brown:} Sum bigram frequency based on the Brown corpus of 
#'   Jones & Mewhort (2004).
#'
#' \item \code{Bg.Mean.Brown:} Mean bigram frequency based on the Brown corpus
#'   of Jones & Mewhort (2004).
#'
#' \item \code{Bg.Sum.Web:} Sum bigram frequency based on the Web corpus of 
#'   Jones & Mewhort (2004).
#'
#' \item \code{Bg.Mean.Web:} Mean bigram frequency based on the Web corpus
#'   of Jones & Mewhort (2004).
#'
#' \item \code{Bg.Sum.Usenet:} Sum bigram frequency based on the Usenet corpus 
#'   of Jones & Mewhort (2004).
#'
#' \item \code{Bg.Mean.Usenet:} Mean bigram frequency based on the Usenet corpus
#'   of Jones & Mewhort (2004).
#'
#' }
#'
#' @references Brysbaert, M., & New, B. (2009). Moving beyond Kučera and 
#'   Francis: A critical evaluation of current word frequency norms and the 
#'   introduction of a new and improved word frequency measure for American 
#'   English. Behavior Research Methods, 41(4), 977-990.
#' @references Jones, M. N., & Mewhort, D. J. (2004). Case-sensitive letter and 
#'   bigram frequency counts from large-scale English corpora. Behavior Research
#'   Methods, Instruments, & Computers, 36(3), 388-396.
#'
#' @source http://expsy.ugent.be/research/Rdocuments/downloads/SUBTLEXus/index.htm
#' @source http://expsy.ugent.be/research/Rdocuments/downloads/SUBTLEXus/SUBTLEXus74286wordstextversion.zip
#' @source http://link.springer.com/content/esm/art:10.3758/BF03195586/file/MediaObjects/Jones-BRM-2004.zip
NULL