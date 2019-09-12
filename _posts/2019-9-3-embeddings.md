---
layout: post
title: Word embeddings, pt. 1
---

The primary goal of this post is to summarize several recent papers exploring what [BERT](https://github.com/google-research/bert), a contextualized word embedding model, can and can't do. 

Below, I'll briefly introduce the problem of representing "meaning" of words in the first place, and describe what word embeddings are. If you're already familiar with both of these concepts, feel free to skip to the section on BERT.

# Introduction: a word by any other name?

A central problem in Natural Language Processing (NLP) is how to represent the meaning of words. 

Traditional, hand-coded approaches usually link words to some machine-readable ontology, as with [WordNet](https://wordnet.princeton.edu) (Miller, 1995) and [FrameNet](https://framenet.icsi.berkeley.edu/fndrupal/) (Baker et al, 1998). These approaches benefit from the expertise of linguists and lexicographers, allowing word meanings to be represented by rich, theoretically-motivated conceptual structures. For example, in FrameNet, the verb "buy" is part of the `Commerce_buy` frame, which represents a commercial transaction between some `Buyer` and a `Seller` exchanging `Money` and `Goods`; this frame is accompanied by many example sentences, annotated for which words map onto which "roles" of the frame (e.g., in "John bought the car from Mark", *John* is the `Buyer`, *Mark* is the `Seller`, and *the car* is the `Goods`).

However, one drawback of these hand-coded approaches is that they're notoriously hard to scale. It takes considerable time and effort (and funding!) to develop a dictionary, and the process of building dictionaries for *machines* is even costlier.

Alternative approaches attempt to *learn* the meaning of words, usually from a large (written) corpus. One particularly popular approach in recent years represents word meanings as vectors of real numbers; these vectors are often called **word embeddings**. 


# What is a word embedding?

A word embedding is a mapping from some string (e.g., `'cat'`) to a vector of real numbers. Technically, this vector could be constructed in a variety of ways, but in practice, it's based on a word's distributional pattern in a large corpus (e.g., Wikipedia). The core assumption between these **distributional semantic models** is, as Firth (1957) famously said: "a word is characterized by the company it keeps".

There are a number of different algorithms for constructing these vectors, but they almost all operate according to the intuition that words that appear in similar contexts should have similar meanings. Usually this involves building a **co-occurrence matrix**: a massive data structure that represents, for every word in your corpus, how many times it co-occurred with every other word. Here, "co-occurrence" means that string `w1` and `w2` occurred within some window of each other (e.g., within two words in the same sentence). The logic is that words appearing in similar contexts will have similar co-occurrence vectors––and thus, potentially similar meanings.

As an example, imagine if our entire corpus was just three sentences:

```
Cats chase mice.
Dogs chase cats.
Humans chase dogs.
```

Not a particularly interesting or insightful corpus, but it works for now. Note that this corpus consists of five unique words, so our **lexicon** is:

```
['cats', 'chase', 'mice', 'dogs', 'humans']
```

Using these seven words, we can now build a co-occurrence matrix. Somewhat arbitrarily, let's say our window size is just 2 words, and require that these occur in the same sentence. Our matrix would thus look like:

| Word | cats | chase | mice | dogs | humans |
|:----------:|:----------:|:----------:|:----------:|:----------:|:----------:|
| **cats** | - | 1 | 1 | 1 | 0 |
| **chase** | 1 | - | 1 | 1 | 1 |
| **mice** | 0 | 1 | - | 0 | 0 |
| **dogs** | 1 | 1 | 0 | - | 1 |
| **humans** | 0 | 1 | 0 | 1 | - |


The first thing to note is that the vector for `chase` is not particularly informative. It's all 1s, because all of the sentences in our corpus were about catching things; if we had a little more variety in our corpus, such as some sentences about eating things or drinking things, this would be more interesting.

This also means that all of our other words share something in common: they're all associated with the word 'chase'. Again, this isn't particularly helpful, because what we really want is a way to tell which words are similar and which are different. The `chase` dimension has no variance whatsoever, so provides no information.

On 


Intro:
- Introduction to word embeddings
- Introduce idea of BERT specifically
- Challenge: BERT (and ELMo, etc.) embeddings reflect some aspect of "linguistic context", and clearly yield improvements on many standard NLP tasks, but it's not always clear why. Ideally, we'd have a mechanistic explanation for what information systems like BERT capture, as well as predictions about which downstream tasks this information will yield improvements for.

Main part:
Lots of ways to evaluate an artificial neural network. One approach to understanding a neural network is to apply the same methodologies that have been used to stud biological neural networks. These methodologies rest on certain core assumptions about information processing in a network, e.g., that individual nodes (or clusters of nodes) somehow encode or represent certain dimensions of information. 
Idea of "edge probing".

Lit review of recent papers
https://docs.google.com/document/d/1U4JDYi43eFtvQfV_JUp_LTyMoP3LPiWjGSVqZCxWF80/edit


Conclusion: what else should we ask about BERT?


# References

- FrameNet
- WordNet