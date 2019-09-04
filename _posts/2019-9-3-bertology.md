---
layout: post
title: BERTology
---

# Introduction: a word by any other name?

A central problem in Natural Language Processing (NLP) is how to represent the meaning of words. 

Traditional, hand-coded approaches usually link words to some machine-readable ontology, as with [WordNet](https://wordnet.princeton.edu) and [FrameNet](https://framenet.icsi.berkeley.edu/fndrupal/). These approaches benefit from the expertise of linguists and lexicographers, allowing word meanings to be represented by rich, theoretically-motivated conceptual structures. For example, in FrameNet, the verb "buy" is part of the `Commerce_buy` frame, which represents a commercial transaction between some `Buyer` and a `Seller` exchanging `Money` and `Goods`; this frame is accompanied by many example sentences, annotated for which words map onto which "roles" of the frame (e.g., in "John bought the car from Mark", *John* is the `Buyer`, Mark is the `Seller`, and `the car` is the `Goods`).

One drawback of these hand-coded approaches is that they're notoriously hard to scale. It takes considerable time and effort (and funding!) to develop a dictionary, and the process of building dictionaries for *machines* is even costlier.

Alternative approaches attempt to *learn* the meaning of words, usually from a large (written) corpus. One particularly popular approach in recent years represents word meanings as vectors of real numbers; these vectors are often called **word embeddings**. 

# What is a word embedding?


Outline:


Furthermore, while hand-coded approaches can be excellent characterizations of what *adults* know about language, they don't really reflect the process of language learning. Clearly, children aren't born with the entirety of their language knowledge intact. Rather, language is *learned*, via a complex (and yet seemingly effortless) process that involves, among other things:

1. Statistical patterns in linguistic input  
2. Grounding of linguistic abstractions (e.g., "words") via social and embodied associations  
3. Biological constraints (e.g., neural architecture) on the kinds of associations that can be learned.

Unfortunately, we're still a long ways off from understanding how these mechanisms translate to word learning during development, let alone *implementing* them in a machine. However, 


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