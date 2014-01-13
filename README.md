# bigramr

bigramr is a set of tools that allows you to:

* Extract the unigram and bigrams of arbitrary character strings (like words and pseudowords)
* Look up unigram and bigram frequencies in five different case-sensitive English-language corpora collected and published by Jones & Mewhort (2004)
* Calculate Sum and Mean Bigram Frequencies for any list of strings (like words and pseudowords)

## To do in future versions

* Include other frequency corpora from English (probably non-case-sensitive)
  Included SUBTLEXus on 11/6/13

* Include phonotactic probability corpora (CMU transcription of non-case-sensitive corpus)

* Include tools to look up trigrams

* Include tools to look up position-sensitive unigram, bigram and trigram counts

* tools to calculate "contextual diversity" of n-grams (ie, token frequency, how many words (or the percentage in a corpus) carry the n-gram).

* Include tools to automatically calculate the Mean N-Gram of several lists of strings (probably from a list structure), as well as its 95% bootstrap CI.

* Include tools to automatically graph the idea above

* GUI to do online matching of lists (list stats updated on the fly; color coding)

* PCA of unigrams, bigrams, trigrams etc to see if there is more than one factor
  There isn't (11/6/13)

* Explore idea of bootstrap clustering (based on unigrams, bigrams and trigrams, for example) to see if lists are balanced. There is a function in the vwr package that does something like this, I think.

* Function to calculate the Ngram frequency in all corpora at the same time.

* Open bigrams?

* Colocations of bigrams?

* Augment SUBTLEXus.aug with Neighborhood information.