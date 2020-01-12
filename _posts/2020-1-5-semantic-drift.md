---
layout: post
title: Journey of a word
---

*Note: This post has been migrated from my old WordPress site (originally posted on June 7, 2019).*


The word "silly" is defined by Dictionary.com as meaning "weak-minded or lacking good sense; stupid or foolish". Long ago, however, the word from which silly derives––the Proto-Germanic sæligas––meant something more like "happy, blessed, prosperous". Some descendants of this word, such as the German selig ("blessed, happy, blissful"), still retain their ancestor's meaning; others, such as silly, clearly do not. What happened?

At some point in Middle English, the word transitioned from meaning "blessed" to "innocent" (12th century), which in turn drifted to "deserving of compassion" or "pitiable" (13th century). Then, perhaps because of a societal correlation between those who are "pitiable" and those who are so-called "feeble-minded", silly came to mind "foolish, lacking in reason" (1570s).

As this example clearly illustrates, words aren't static creatures. Over time, they have a way of "drifting" in meaning. And while the journey any individual word takes is very hard to predict, there are certain systematic tendencies by which words change or extend their meaning. These tendencies reveal insights not only about the way language works, but about the remarkable flexibility of human cognition and social life.

# Taxonomies of semantic drift

Arguably the most well-known taxonomy of semantic change is Leonard Bloomfield's (Bloomfield, 1933). Among others, this classification scheme includes narrowing, widening, and metaphor.

**Narrowing**, sometimes called specialization, is the process whereby a word takes on a more specific meaning, usually a subcategory of its original meaning. For example, the word *corn* used to refer to any kind of grain, but now refers specifically to maize. Similarly, the word *drinking* used to denote "drinking (anything)", but now––at least for many speakers––has a default denotation of "drinking (alcohol)".

**Widening**, sometimes called generalization, is the opposite of narrowing. Some of the most well-known examples occur with brand names being generalized to the product itself, such Kleenex (tissue), Xerox (to copy), Skype (to video-chat), and Google (to search on the Internet). Despite the best efforts of companies to prevent this from a occurring, names of hegemonic brands have a way of becoming entrenched in the lexicon. But widening also occurs with more common, non-brand names, such as the transition between *cow* (female) to *cow* (of either sex).

**Metaphor** is the phenomenon of extending a word's meaning across conceptual domains. Usually this extension reflects some kind of structural or analogical similarity across these domains. Far from being only a literary device, metaphor is incredibly pervasive in human language, and is at the heart of much of semantic drift, as well as our capacity to understand abstract concepts. For example, the word *broadcast* used to mean "cast seeds out" or "scatter seeds"; now, with radio and TV, the default meaning is something like, "transmit audio and video signals", and the former meaning has all but disappeared.

Bloomfield (1933) posits six additional categories of semantic change, which I won't describe here. Hopefully, the above descriptions give some indication of both the breadth of semantic change, as well as its systematicity. What's missing, however, are clear motivations or mechanisms for these semantic changes. Why do humans change the meaning of words in the first place?

# Motivations for semantic drift

Why do words change meaning over time? Blank (1999) surveyed over 600 specific semantic changes, and attempted to taxonomize not only the kinds of changes that occurred, but also their psychological or social causes. As above, I won't describe all in detail here; instead, I'll briefly describe several, just to give a sense of the potential reasons why words may change in meaning.

One motivation for extending the meaning of a word is that speakers of a language need a word for a new concept. This frequently occurs with technological change, in which a new technology is invented, and speakers need to refer to it in a clear, efficient way. This is what happened with *broadcast* above ("cast seeds" to "transmit signal"), and it's also what's behind the double-meaning of *mouse* ("rodent" to "electronic device for executing commands in computer programs"). Something like this is also at play in the origin story of the word *bug*, meaning an error in a computer program: Grace Hopper (a computer scientist and Admiral), kept running into trouble with a computer calculating incorrectly, and discovered that the cause was a large dead moth embedded in the wiring. *Bug* now refers to pretty much any error in computer logic, with *buggy* referring to code that's presumably riddled with such errors.

A related motivation for semantic extension––also often metaphorical––is to refer to abstract concepts. Many of these examples become so cemented in our language that we hardly notice them, but they are often highly systematic. For example, a number of words from the visual domain (e.g., illuminate, clear, murky, etc.) are used to describe ideas and knowledge. We *illuminate* a concept; we make something *clear*; a poor explanation is *murky*. Or even more basic: I *see* what you mean.

Blank (1999) describes a third process, in which a word's extension is conceptually related to part of the original meaning, but highlights certain components of that meaning. An illustrative example is Latin *plicare*, meaning "to fold". Like silly, this word has experienced several parallel journeys among the descendants of Latin, resulting in an interesting kind of "interlinguistic antonymy"––most notably, between modern Catalan and Romanian. In Catalan, *plicare* has become (through sound change) the word *chegar*, meaning "to arrive"; whereas in Romanian, *plicare* has become a *pleca*, meaning "to leave". Blank (1999) speculates that this antonymy arrives out of different cultural associations with folding: in the shepherding communities of Romania, folding was likely associated with folding tents, which is done when leaving an area; and in the coastal areas of Spain, folding was likely associated with folding sails, which is done when arriving. It's somewhat of a just-so story, but it explains the strange, apparently paradoxical trajectory the same root word has taken across two languages.

# Modeling Semantic Drift

The insights above were all derived from careful analyses of linguistic change by human linguists. There's certainly no replacement for this kind of analysis. 

On the other hand, it clearly doesn't scale well to an entire lexicon. Thus, some linguists have turned to various computational modeling approaches as a complementary approach. Taken together, these approaches––the fine-grained analyses done by hand, and the coarser but broader analyses done via modeling––can yield some really interesting insights.

One of the best examples of this is recent work done by Dan Jurafsky and others (Hamilton et al, 2016). They used a model to estimate the rate of change of different words across the last century, and concluded with two statistical laws:

1. **Law of conformity**: more frequently-used words change in meaning more slowly.  
2. **Law of innovation**: more polysemous words (those with more related meanings) change in meaning more quickly.  

## Representing meaning

The authors used a technique called word embeddings as a proxy for word meaning. I've written about [word embeddings before](https://seantrott.github.io/embeddings/), and while I won't describe them in detail here, the basic principle is that you can approximate the meaning of a word as a function of the contexts in which it occurs. After some number-crunching in a neural network, you end up with a high-dimensional vector of arbitrary numbers representing each word. 

While each value is arbitrary, the key is that words with similar meanings should have similar vectors, and should thus be situated in similar locations in vector-space. The distance between two vectors can then be used as a proxy for the dissimilarity of those two words.

## Calculating semantic change

Hamilton et al (2016) used this technique in a clever way to estimate semantic drift. They gathered news articles from the last century, and trained a separate set of word embeddings for each decade. That is, the word *cat* would have a word embedding for the 1910s, 1920s, and so on.

This allows them to track the change in meaning of a single word, relative to the rest of the lexicon. For example, the word *broadcast* was originally associated with words like "seed" and "spread" in the 1850s, and came to be associated with "newspapers" in the 1900s, and finally with "bbc" in the 1990s. 

This is very cool: semantic drift can be clearly visualized as the change in a word's vector-representation over time. But so far, this isn't that surprising. We already know that words like *broadcast* have changed considerably in meaning. Can this technique be used to derive novel insights?

## Laws of semantic change

The authors then calculated a **rate of change** variable for every word in the lexicon. Specifically, they calculated the cosine distance between a word's vector representation across each decade. For example, how much has *cat* changed in meaning between 1900 and 1910, 1910 and 1920, and so on? What about *dog*? What about *broadcast*?

Then, the authors regressed this variable against several other variables thought to be relevant to language change:

* `Frequency`: how frequently is a given word used?  
* `Polysemy`: how many (related) meanings does a word have?

They made two concrete discoveries:

1. Frequent words change slower.  
2. More polysemous words change faster (after controlling for frequency).


# Why does this matter?

Words change in meaning. These changes are often imperceptible at any given point, but when you compare a word across multiple centuries, it's sometimes startling how much it's changed––as with a word like *silly*. Moreover, we can detect these changes using computational modeling techniques, and make broader predictions about which words are likely to change (Hamilton et al, 2016).

I think this is important for a couple of reasons. First, if you're like me, there's something intrinsically fascinating about the journeys that different words take. It's remarkable that these simple combinations of sounds (or signs) convey so much meaning in the first place, and that their meanings can change so radically over time.

Second, patterns in semantic drift sometimes reflect psychological or social processes, giving us a chance to learn more about our minds and our societies. Why did *plicare* take on a meaning of "to arrive" in Catalan, but a seemingly converse meaning of "to leave" in Romanian? Why did *silly* change in meaning from "blessed" to "foolish"?

Perhaps most importantly, words––and language more generally––are a connection to the past. As Elizabeth Bates said, language is a "new machine made out of old parts" (Bates & MacWhinney, 1988); we are creatures of change, but these changes are always constructed on top of what came before. A combination of human **flexibility** and **creativity** enables us to recycle older actions and abilities for new purposes. 

It's humbling to be reminded that the words we rely on to communicate our thoughts are actually echoes of a distant time, ultimately dating back to the first grunts and gestures of early hominids.

# References

Bates, E. (1979). Intentions, conventions, and symbols. The emergence of symbols: Cognition and communication in infancy, 33-68.

Bates, E., & MacWhinney, B. (1988). What Is Functionalism?.

Blank, A. (1999). Why do new meanings occur? A cognitive typology of the motivations for lexical semantic change. Historical semantics and cognition, 13, 6.

Bloomfield, L. (1933). Language, New York: Allen & Unwin

Hamilton, W. L., Leskovec, J., & Jurafsky, D. (2016). Diachronic word embeddings reveal statistical laws of semantic change. arXiv preprint arXiv:1605.09096.
