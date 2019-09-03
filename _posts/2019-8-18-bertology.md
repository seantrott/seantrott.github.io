---
layout: post
title: BERTology
---

# Introduction: a word by any other name?

A central problem in Natural Language Processing (NLP) is how to represent the meaning of words. 

Traditional, hand-coded approaches usually link words to some machine-readable ontology, as with [WordNet](https://wordnet.princeton.edu) and [FrameNet](https://framenet.icsi.berkeley.edu/fndrupal/). These approaches benefit from the expertise of linguists and lexicographers, allowing word meanings to be represented by rich, theoretically-motivated conceptual structures. For example, in FrameNet, the verb "buy" is part of the `Commerical_transaction` frame, which 

[[ Fill in example ]]

One drawback of these hand-coded approaches is that they're notoriously hard to scale. It takes considerable time and effort (and funding!) to develop a dictionary, and the process of building dictionaries for *machines* is even costlier. 

A second criticism, perhaps more philosophical in nature, is that the linguistic knowledge these systems display is built in, not learned; thus, they don't reflect what is perhaps the most critical of all cognitive processes -- learning. Children clearly aren't born with the entirety of their language knowledge intact. Rather, language is *learned*, via a complex (and yet seemingly effortless) process that involves, among other things:

1. Statistical patterns in linguistic input  
2. Grounding of linguistic abstractions (e.g., "words") via social and embodied associations  
3. Biological constraints (e.g., neural architecture) on the kinds of associations that can be learned.


[[ Alan Turing quote about intelligent systems needing to *learn*. Can't just encode knowledge.]]

[[ Instead of trying to produce a programme to simulate the adult mind, why not rather try to produce one which simulates the child's? If this were then subjected to an appropriate course of education one would obtain the adult brain…. There is an obvious connection between this process and evolution… ]]



Outline:


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