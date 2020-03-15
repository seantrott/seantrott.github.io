---
layout: post
title: The role of functional load in sound change
---

Languages are constantly changing. Just as [words drift in meaning over many generations](https://seantrott.github.io/semantic-drift/), the basic **sounds** of a language can shift over time.

These changes are often highly regular and systematic. For example, during the evolution of [Proto-Indo-European](https://en.wikipedia.org/wiki/Proto-Indo-European_language) (PIE) to [Proto-Germanic](https://en.wikipedia.org/wiki/Proto-Germanic_language), there was a series of changes to stop consonants known as [Grimm's Law](https://en.wikipedia.org/wiki/Grimm%27s_law). The phoneme */d/* (as in *dog*) shifted to */t/* (as in *talk*); */t/*, meanwhile, became */θ/* (as in *think*). 

These changes weren't attested in other evolved variants of PIE. This allows us to compare words with common ancestries across language families. The Latin *decem* has its counterpart in the English *ten* (Dutch: *tien*; Norwegian: *ti*), and the Latin *tres* (starting with */t/*) is a cousin to the English *three* (starting with */θ/*). (Note that many other changes have occurred, which is why you'll see more differences than simply a shift in */t/* and */d/*.)

Grimm's Law also involved many other changes, and is far from the only major phonological change to occur in the history of Germanic languages (see [The Great Vowel Shift](https://en.wikipedia.org/wiki/Great_Vowel_Shift)). However, Grimm's Law is an important example of sound change being a **regular** process--i.e., a given change should apply throughout the lexicon of a language, provided the appropriate conditions are met.

[Phonological change](https://en.wikipedia.org/wiki/Phonological_change) is an incredibly rich field of study. Research questions abound, including: the link between perceptual/articulatory constraints and large-scale sound change (Ohala, 1993; Ohala, 1989), the social variables involved (Labov, 1963; Labov, 1986), and more.

For me, one particularly interesting aspect of sound change is its relationship to the creation of **homophones**: two words that sound the same, but with different meanings (e.g., *night* and *knight*).

# Sound change and homophony

Sound changes are often classified into one of several categories: mergers, splits, and losses. 

A *merger* occurs when the distinction between two phonemes in a language is lost. An example in English is the famous [cot-caught merger](https://en.wikipedia.org/wiki/Cot%E2%80%93caught_merger). In some dialects of English, the vowel in the word *cot* is produced (and perceived) differently than the vowel in the *caught*. However, many dialects of North American English don't really distinguish between the two. I certainly pronounce them the same way. In other words, the lost of this contrast has produced a **homophone**.

Other examples of homophony-inducing sound changes in English abound. Modern English witnessed the [loss of many word-initial *consonant clusters*](https://en.wikipedia.org/wiki/Phonological_history_of_English_consonant_clusters#Reduction_of_/kn/), such as */kn/* and */gn/*. In some cases, this created homophones among formerly distinct word pairs, e.g., *knight*/*night*, *not*/*knot*, and *nit*/*knit*. (Interestingly, these word-initial consonant clusters have been fossilized in the spelling of the words.)

Homophony-inducing sound changes aren't limited to English. Sampson (2013, 2015) describes a series of [sound changes](https://en.wikipedia.org/wiki/Historical_Chinese_phonology) that occurred between Middle and Modern Chinese, such as the merging of final *-m* and final *-n* as simply *-n*. This created many homophones, particularly among monosyllabic words [^1]. 

Intuitively, both mergers and losses appear more likely to *increase*, rather than *decrease*, the number of homophones in a language, given that they eliminate phoneme contrasts that previously might have distinguished words. 

Of course, some kinds of sound change, such as [splits](https://en.wikipedia.org/wiki/Phonological_change#Split) could theoretically reduce the number of homophones by increasing the possible phonemic contrasts in a language. The presumed regularity of sound change makes this scenario unlikely: if two words have the same form (e.g., *bank* and *bank*), it is unlikely that only one of those words will undergo a sound change, leaving the other unchanged. Still, it is in principle possible, especially if the two words vary considerably in frequency---in which case the more frequent word (e.g., *time*) tends to undergo a reduction process relative to the less frequent word (e.g., *thyme*) (Gahl, 2008), perhaps leaving it open to more drastic phonological changes in the future.

# The Functional Load Hypothesis

While sound changes clearly *can* create homophones, some (Martinet, 1952) have argued that a pressure for communicative clarity places an upper-bound on this process. According to the **functional load hypothesis**, phoneme contrasts that do more "work"---i.e., distinguish more words in a lexicon---should be less likely to merge (or be lost altogether).

This idea makes intuitive sense. If we conceive of language change as an evolutionary process subject to communicative pressures (e.g., clarity), then changes that raise opportunities for misunderstanding might be selected against. Under this scenario, sound changes that create homophones should be *less* likely to occur than those that don't. 

For example, in General American English, the onset phonemes */b/* and */p/* distinguish a variety of words. To name just a few monosyllabic **minimal pairs**: *pat/bat*, *pot/bot*, and *pit/bit*. Under the functional load hypothesis, */b/* and */p/* should be unlikely to merge because doing so would render all of those minimal pairs homophonous.

Unfortunately, the idea is also challenging to test. And as Sampson (2013) points out, it's unclear exactly what the hypothesis means. There are many attested cases of sound changes creating homophones (such as the ones above), so it can't simply mean that sound changes *never* create homophones. Rather, if it is true at all, it must work in a probablistic way. 

## Testing the hypothesis

Recently, a group of researchers ([Wedel et al, 2013](https://www.sciencedirect.com/science/article/abs/pii/S0010027713000541)) tried to operationalize and test this hypothesis quantitatively. Using a large database of attested phoneme mergers across multiple languages (English, Dutch, French, German, Korean, Slovak, Spanish, and Hong Kong Cantonese), the authors asked: is the probability of two phonemes merging predicted by the number of minimal pairs differentiated by those phonemes?

First, the authors reviewed and aggregated data about attested sound changes from the languages listed above. Each data point consisted of a phoneme pair, e.g., `phoneme 1` and `phoneme 2`, as well as the following information:

- The `language` that these phonemes occurred in.  
- Whether or not those phonemes `merged` (`1/0`).  
- The `number of minimal pairs` distinguished by those phonemes.  
- The `probability` of each of those phonemes.

In the main analysis, the authors performed [mixed effects logistic regression](https://seantrott.github.io/binary_classification_R/#logistic_regression)



# Discussion

Future work: local mechanisms?






# References

Ceolin, A. (2020) Neutral Models of Sound Change.

Gahl, S. (2008). Time and thyme are not homophones: The effect of lemma frequency on word durations in spontaneous speech. Language, 84(3), 474-496.

Ohala, J. J. (1989). Sound change is drawn from a pool of synchronic variation. Language change: Contributions to the study of its causes, 173-198.

Ohala, J. J. (1993). Sound change as nature's speech perception experiment. Speech Communication, 13(1-2), 155-161.

Labov, W. (1963). The social motivation of a sound change. Word, 19(3), 273-309.

Labov, W. (1986). The social origins of sound change. In Dialect and language variation (pp. 524-541). Academic Press.

Martinet, A. (1952). Function, structure, and sound change. Word, 8(1), 1-32.

Sampson, G. (2015). A Chinese phonological enigma. Journal of Chinese Linguistics, 43(2), 679-691.

Sampson, G. (2015). A Chinese phonological enigma. Journal of Chinese Linguistics, 43(2), 679-691.

# Footnotes

[^1]: According to Sampson (2013), speakers of the language compensated for this increase in lexical ambiguity via the **disyllabification** of synonyms. For example, "friend" in Mandarin is *péngyǒu*; in Old Chinese, *péng* and *yǒu* were separate words, both meaning "friend". After the mergers, the morpheme *péng* was "seven ways ambiguous" (Sampson, 2013, pg. 9). The compound *péngyǒu*, on the other hand, is unambiguous.