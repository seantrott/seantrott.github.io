---
layout: post
title: The role of functional load in sound change [research review]
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

The authors reviewed and aggregated data about attested sound changes from the languages listed above. Each data point consisted of a phoneme pair, e.g., `phoneme 1` and `phoneme 2`, as well as the following information:

- The `language` that these phonemes occurred in.  
- Whether or not those phonemes `merged` (`1/0`).  
- The `number of minimal pairs` distinguished by those phonemes.  
- The `frequency` of each of those phonemes.

In the main analysis, the authors performed [mixed effects logistic regression](https://seantrott.github.io/binary_classification_R/#logistic_regression) predicting the probability of two phonemes merging (i.e., `Merged` was the dependent variable). Whether or not two phonemes merged was strongly predicted by both the `frequency` of the phonemes in that language (more frequent phonemes were more likely to undergo a merger), and critically, the `number of minimal pairs` they differentiated: **phonemes differentiating more minimal pairs in a language were less likely to merge**. Furthermore, the effect of phoneme `frequency` was attenuated by whether the phonemes differentiated *any* minimal pairs: `frequency` positively predicted the probability of a merger, but only when those phonemes didn't differentiate any minimal pairs.

Let's unpack these results:

First, what do we make of the finding that more frequent phonemes are more likely to merge? This is consistent with other work suggesting that more frequently used phonemes are more likely to undergo various sound changes like **lenition**, possibly because they convey less information about the word in which they appear (Cohen Priva, 2017), or because the underlying physiological mechanisms involved in producing those sounds are "relaxed" with frequency of use (Philips, 1984). As the authors note, the small size of their dataset makes it hard to draw strong conclusions here---but the findings are generally consistent with other work, which is encouraging.

Second, and most importantly, phoneme pairs that **carried more functional load**---i.e., they differentiated more minimal pairs---were less likely to merge. This is consistent with the predictions of the functional load hypothesis: if two phonemes differentiating many minimal pairs merged, a large set of homophones would suddenly be introduced into the language. Thus, from a *functionalist* perspective, it makes sense that sound changes (i.e., "mutations") introducing homophones would be selected against.


# Discussion

The picture painted above may seem confusing:

Sound changes clearly *can* result in homophones: there are many examples in English and Modern Chinese to demonstrate this (Sampson, 2015). At the same time, there are both theoretical and empirical reasons (Martinet, 1952; Wedel et al, 2013) to believe that homophony-inducing phoneme mergers are less likely to occur, even when controlling for the phonemes being compared. While these two points aren't necessarily incompatible, they do suggest that the relationship between sound change and homophony is very complicated.

"It's complicated" may not feel like a very satisfying answer. But personally, I find it very exciting: it means there's considerable work to be done! So much is still unknown about the nature of sound change in the first place. As I noted earlier, one of the major questions in all research on language change is how **local effects** (e.g., physiological constraints, psychological biases, communicative demands, etc.) give rise to **large-scale changes**. Put another way: how do apparently regular changes emerge from the complex interactions of individual humans? 

This question is well-suited to an evolutionary framing. Sound changes can be conceptualized as **mutations** in a phonological system. The first question is thus how those mutations arise. The second question is: which pressures select for or against those mutations? In the context of this post, that's something like: how, and why, are sound changes that might lead to homophony selected out of the pool of possible sound changes? 

Importantly, the answer to this question may even reveal that something entirely different is going on. Perhaps homophony-inducing sound changes aren't directly selected against at all, and the relationship discovered by Wedel et al (2013) is due to some set of latent, unmeasured variables. 

We'll never be certain about the answers to any of these questions. But with patience and careful work, we can come closer to constructing accurate and parsimonious models of why the languages we all speak look the way they do.








# References

Ceolin, A. (2020) Neutral Models of Sound Change.

Cohen Priva, U. (2017). Informativity and the actuation of lenition. Language, 93(3), 569-597.

Gahl, S. (2008). Time and thyme are not homophones: The effect of lemma frequency on word durations in spontaneous speech. Language, 84(3), 474-496.

Ohala, J. J. (1989). Sound change is drawn from a pool of synchronic variation. Language change: Contributions to the study of its causes, 173-198.

Ohala, J. J. (1993). Sound change as nature's speech perception experiment. Speech Communication, 13(1-2), 155-161.

Labov, W. (1963). The social motivation of a sound change. Word, 19(3), 273-309.

Labov, W. (1986). The social origins of sound change. In Dialect and language variation (pp. 524-541). Academic Press.

Martinet, A. (1952). Function, structure, and sound change. Word, 8(1), 1-32.

Phillips, B. S. (1984). Word frequency and the actuation of sound change. Language, 320-342.

Sampson, G. (2015). A Chinese phonological enigma. Journal of Chinese Linguistics, 43(2), 679-691.

Wedel, A., Kaplan, A., & Jackson, S. (2013). High functional load inhibits phonological contrast loss: A corpus study. Cognition, 128(2), 179-186.

# Footnotes

[^1]: According to Sampson (2013), speakers of the language compensated for this increase in lexical ambiguity via the **disyllabification** of synonyms. For example, "friend" in Mandarin is *péngyǒu*; in Old Chinese, *péng* and *yǒu* were separate words, both meaning "friend". After the mergers, the morpheme *péng* was "seven ways ambiguous" (Sampson, 2013, pg. 9). The compound *péngyǒu*, on the other hand, is unambiguous.