---
layout: post
title: Word embeddings, pt. 1
---
# Introduction: a word by any other name?

A central problem in Natural Language Processing (NLP) is how to represent the meaning of words. 

Traditional, hand-coded approaches usually link words to some machine-readable ontology, as with [WordNet](https://wordnet.princeton.edu) (Miller, 1995) and [FrameNet](https://framenet.icsi.berkeley.edu/fndrupal/) (Baker et al, 1998). These approaches benefit from the expertise of linguists and lexicographers, allowing word meanings to be represented by rich, theoretically-motivated conceptual structures. For example, in FrameNet, the verb "buy" is part of the `Commerce_buy` frame, which represents a commercial transaction between some `Buyer` and a `Seller` exchanging `Money` and `Goods`; this frame is accompanied by many example sentences, annotated for which words map onto which "roles" of the frame (e.g., in "John bought the car from Mark", *John* is the `Buyer`, *Mark* is the `Seller`, and *the car* is the `Goods`).

However, one drawback of these hand-coded approaches is that they're notoriously hard to scale. It takes considerable time and effort (and funding!) to develop a dictionary, and the process of building dictionaries for *machines* is even costlier.

Alternative approaches attempt to *learn* the meaning of words, usually from a large (written) corpus. One particularly popular approach in recent years represents word meanings as vectors of real numbers; these vectors are often called **word embeddings**. 


# What is a word embedding?

A word embedding is a mapping from some string (e.g., `'cat'`) to a vector of real numbers. Technically, this vector could be constructed in a variety of ways, but in practice, it's based on a word's distributional pattern in a large corpus (e.g., Wikipedia). The core assumption between these **distributional semantic models** is, as Firth (1957) famously said: "a word is characterized by the company it keeps".

There are a number of different algorithms for constructing these vectors, but they almost all operate according to the intuition that words that appear in similar contexts should have similar meanings. Sometimes this involves building a **co-occurrence matrix**: a massive data structure that represents, for every word in your corpus, how many times it co-occurred with every other word. Here, "co-occurrence" means that string `w1` and `w2` occurred within some window of each other (e.g., within two words in the same sentence). The logic is that words appearing in similar contexts will have similar co-occurrence vectors––and thus, potentially similar meanings.

## Brief demonstration 

As an example, imagine if our entire corpus was just five sentences:

```
Cats eat mice.
Dogs drink water.
Humans pet dogs.
Humans pet cats.
```

Not a particularly interesting or insightful corpus, but it works for now. Note that this corpus consists of five unique words, so our **lexicon** is:

```
['cats', 'eat', 'mice', 'dogs', 'drink', 'water', 'humans', 'pet']
```

Using these seven words, we can now build a co-occurrence matrix. Somewhat arbitrarily, let's say our window size is just 2 words, and require that these occur in the same sentence. Our matrix would thus look like:

| Word |  cats  |  eat  |  mice  | dogs | drink | water | humans | pet |
|:----------:|:----------:|:----------:|:----------:|:----------:|:----------:|:----------:|:----------:|:----------:|
| **cats** | - | 1 | 1 | 0 | 0 | 0 | 1 | 1 |
| **eat** | 1 | - | 1 | 0 | 0 | 0 | 0 | 0 |
| **mice** | 1 | 1 | - | 0 | 0 | 0 | 0 | 0 |
| **dogs** | 0 | 0 | 0 | - | 1 | 1 | 1 | 1 |
| **drink** | 0 | 0 | 0 | 1 | - | 1 | 0 | 0 |
| **water** | 0 | 0 | 0 | 1 | 1 | - | 0 | 0 |
| **humans** | 1 | 0 | 0 | 1 | 0 | 0 | - | 1 |
| **pet** | 1 | 0 | 0 | 1 | 0 | 0 | 1 | - |


Now we can inspect our matrix to see which words are represented with similar vectors. The "similarity" between two vectors is often assessed by taking the **cosine distance** of those vectors, then subtracting that measure from 1. We can do this in Python:

```
from scipy import spatial

cats = [0, 1, 1, 0, 0, 0, 1, 1]
mice = [1, 1, 0, 0, 0, 0, 0, 0]

1 - spatial.distance.cosine(cats, mice)
```  

This yields a similarity score of `0.35`. We can also compare the vectors for `dogs` and `cats`.

```
cats = [0, 1, 1, 0, 0, 0, 1, 1]
dogs = [0, 0, 0, 0, 1, 1, 1, 1]

1 - spatial.distance.cosine(cats, dogs)
```  

This yields a similarity score of `0.5`. 

According to these results, the word 'cats' is more similar to the word 'dogs' than it is to the word 'mice'. This makes sense, because in our corpus, 'cats' and 'mice' both co-occur with the word 'eat', but nothing else; whereas 'cats' and 'dogs' co-occur with the words 'humans' and 'pet'. If we asserted that `humans pet mice` instead of `humans pet dogs`, we'd get the opposite pattern of results from above. 

Of course, our corpus is tiny––only four sentences. But hopefully this helps illustrate some of the intuition behind determining the similarity of two words as a function of the similarity of their distributional similarities.

## Larger corpora and dimensionality reduction

In reality, we'd want to use a much larger corpus to build our co-occurrence matrix, such as all of English Wikipedia. This would result in a considerably larger co-occurrence matrix––the Oxford English Dictionary lists ~170,000 words in the English language; if all of these words were used in Wikipedia at least once, we'd end up with a `170000 x 170000` matrix.

But such a matrix isn't exactly what we want, for a couple of reasons:

First, [Zipf's Law](https://en.wikipedia.org/wiki/Zipf%27s_law) tells us that word frequencies are arranged along a power law distribution: the most frequent word ("the") is roughly twice as frequent as the 2nd-most frequent word ("of"), which is roughly twice as frequent as the 3rd-most frequent word. This means that most of our corpus actually consists of a relatively small number of words, with a *very* long tail of less and less frequent words. This means that many of the dimensions in our matrix will be *sparse*, e.g., consisting of mostly 0s, because rare words just won't co-occur with all that many other words.

Second, 



# Practical resources


List various resources to get started with word embeddings, e.g., gensim in Python.

# References

Baker, C. F., Fillmore, C. J., & Lowe, J. B. (1998, August). The berkeley framenet project. In Proceedings of the 17th international conference on Computational linguistics-Volume 1 (pp. 86-90). Association for Computational Linguistics.

Firth, J.R. (1957). "A synopsis of linguistic theory 1930-1955". Studies in Linguistic Analysis: 1–32.

Miller, G. A. (1995). WordNet: a lexical database for English. Communications of the ACM, 38(11), 39-41.
