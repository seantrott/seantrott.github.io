---
layout: post
title: Word embeddings, pt. 1 [nlp]
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

| Word |  cats&nbsp; |  eat&nbsp;  | mice&nbsp;|  dogs&nbsp; | drink&nbsp; | water&nbsp; | humans&nbsp; | pet&nbsp; |
|:----------:| :----------: |:----------:|:----------:|:----------:|:----------:|:----------:|:----------:|:----------:|
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

#### Larger corpora and dimensionality reduction

In reality, we'd want to use a much larger corpus to build our co-occurrence matrix, such as all of English Wikipedia. This would result in a considerably larger co-occurrence matrix––the Oxford English Dictionary lists ~170,000 words in the English language; if all of these words were used in Wikipedia at least once, we'd end up with a `170000x170000` matrix. There are a few approaches to reducing the dimensionality, such as [Latent Semantic Analysis (LSA)](https://en.wikipedia.org/wiki/Latent_semantic_analysis) and [Principal Component Analysis (PCA)](https://en.wikipedia.org/wiki/Principal_component_analysis).

# Prediction-based approaches

## word2vec 

More recently, an approach called [word2vec](https://en.wikipedia.org/wiki/Word2vec)(Mikolov et al., 2013) has exploded in popularity. Like LSA and approaches before it, the assumption behind the *word2vec* model is that words with similar meanings will occur in similar linguistic contexts. But unlike LSA, the *word2vec* algorithm builds its word vectors using a **predictive** approach: given a big corpus, the algorithm attempts to predict either a **target word** from the **context** (this is called the continuous bag of words, or CBOW, model), or the **context** from the **target word** (this is called the skip-gram model).

As [this post](https://www.tensorflow.org/tutorials/representation/word2vec) explains, *word2vec* uses a 2-layer neural network to "embed" each word of a language in some relatively low-dimensional (~300 dimensions) or "dense" vector-space. Each word is initially assigned a random vector of real numbers––e.g., it is embedded randomly in vector-space. The algorithm then crawls through a big corpus of text, and the network attempts to predict each target word from its context (or context from the target word); this prediction process involves first "embedding" the word, e.g., mapping the input token to the associated vector of real numbers. At first, the network will make many mistakes, because the vectors are totally random. But with each mistake, the network tunes these random vectors in such a way as to reduce the **prediction error**. E.g., if a network falsely predicted that word `w1` was not related to context `c1`, the embedding for `w1` is adjusted such that on future iterations, the network would predict a stronger relationship between `w1` and `c1`. 

Over time, the network converges on relatively stable embeddings for each word (or you run out of training data). At this point, you've got a mapping from every unique word-token in your vocabulary to a vector of real numbers. Together, this vector-space reflects the "meaning" of your word-tokens: words with more similar meanings are closer in space than words with more distant meanings. (Here, proximity is usually operationalized as the **cosine distance** between two vectors.)

These vectors, and the relationships between them, capture some neat properties of language. Measures of similarity in vector-space often correlate with human similarity judgments (e.g., "cat" and "dog" are judged to be more similar than "cat" and "tree" by both), with some notable exceptions (e.g., **antonyms**: see "Limitations" below). Most famously, these vector representations allow you to discover "analogies", provided you probe the system in the right way. For example, `man is to king as woman is to...` translates, in vector-space, to `v(king) - v(man) + v(woman)`, and this (more or less) gives you an answer like: `v(queen)`. 

# Limitations

But algorithms like word2vec (and LSA before them) have clear limitations. As noted above, word2vec doesn't do a very good job of capturing **antonymic** relationships, such as words with opposite meanings (e.g., "good/bad", "tall/short"). The reason is obvious: proximity in vector-space is based on contextual similarity, and words with opposite meanings will often occur in very similar contexts, even though *humans* understand that the words don't actually have similar meanings. In a deeper sense, this strikes at a problem with the notion of similarity and meaning. There *is* an underlying similarity between "good" and "bad" in the sense that both are endpoints of the same scale, e.g., they're modifying the same or similar dimensions. But they're not modifying that scale in the same direction, and it seems important to capture that somehow. 

Another clear problem with word2vec and related approaches is that they don't (typically) distinguish between word senses. That is, homonyms like "bank" (river) and "bank" (financial institution) will map onto the same vector, because the algorithm has no way to distinguish between those strings. Another way of saying this is that once you've run the algorithm, each unique string maps onto a static vector, which doesn't reflect the specific context in which that string is observed: the vector representation for "bank" in `he deposited a check at the bank` and `he swam along the bank` would be the same.

Finally, like many other machine learning systems based on human-generated data, word2vec embeddings reflect human biases ([Bolukbasi et al, 2016](http://papers.nips.cc/paper/6228-man-is-to-computer-programmer-as-woman-is-to-homemaker-debiasing-word-embeddings.pdf); [Garg et al, 2018](https://www.pnas.org/content/pnas/115/16/E3635.full.pdf)). This has real consequences for any NLP system in which these embeddings are used, such as machine translation ([Stanovsky et al, 2019](https://arxiv.org/abs/1906.00591)).

# Beyond word2vec

The NLP world moves quickly. It's now been about 6 years since word2vec was released. Since then, there have been a variety of novel approaches, many of them aimed specifically at problem of static word embeddings. This new generation of word embeddings are broadly called **contextualized word embeddings**. As the name implies, they allow researchers to extract context-sensitive representations of a word's meaning, meaning that the two senses of "bank" can now be pretty reliably distinguished in sentences like:

```
He deposited a check at the bank.  
He swam along the river bank.
```

There are a number of different contextualized word embedding models, including ELMo ([Peters et al, 2018](https://arxiv.org/pdf/1802.05365.pdf%E3%80%91)) and BERT ([Devlin et al, 2018](https://arxiv.org/pdf/1810.04805.pdf%E3%80%91)). There are also similarly motivated approaches using LSTMs (Aina et al, 2019) or even working within the original word2vec framework (Beekhuizen et al, 2019). 

**BERT** has received considerable attention in recent months. BERT's pre-trained embeddings boost performance on a number of different traditional NLP tasks, prompting many researchers to try to figure out precisely what it is that BERT "knows" about language. This subfield is colloquially called "BERTology", and will be the subject of my next post.

# Practical resources

If you'd like to get started with word embeddings, here are a few (Python-centric) links I've found useful:  
- [sklearn.feature_extraction.text](https://scikit-learn.org/stable/modules/classes.html#module-sklearn.feature_extraction.text): A very straightforward API for transforming text documents into count matrices and tf-idf matrices.  
- [gensim word2vec algorithms](https://radimrehurek.com/gensim/models/word2vec.html)  
- [Post on word2vec](https://www.tensorflow.org/tutorials/representation/word2vec)  
- [Blog post on LSA](https://technowiki.wordpress.com/2011/08/27/latent-semantic-analysis-lsa-tutorial/)  
- [Another blog post on LSA](http://mccormickml.com/2016/03/25/lsa-for-text-classification-tutorial/)  
- [NLP Utilities](https://github.com/seantrott/nlp_utilities#topic-modeling): A simple sklearn-style API for building topic models using LSA and LDA, built on top of the `sklearn` library. 


# References

Aina, L., Gulordava, K., & Boleda, G. (2019). Putting words in context: LSTM language models and lexical ambiguity. arXiv preprint arXiv:1906.05149.

Baker, C. F., Fillmore, C. J., & Lowe, J. B. (1998, August). The berkeley framenet project. In Proceedings of the 17th international conference on Computational linguistics-Volume 1 (pp. 86-90). Association for Computational Linguistics.

Beekhuizen, B., Cui, C. X., & Stevenson, S. (2019). Representing lexical ambiguity in prototype models of lexical semantics.

Bolukbasi, T., Chang, K. W., Zou, J. Y., Saligrama, V., & Kalai, A. T. (2016). Man is to computer programmer as woman is to homemaker? debiasing word embeddings. In Advances in neural information processing systems (pp. 4349-4357).

Devlin, J., Chang, M. W., Lee, K., & Toutanova, K. (2018). Bert: Pre-training of deep bidirectional transformers for language understanding. arXiv preprint arXiv:1810.04805.

Firth, J.R. (1957). "A synopsis of linguistic theory 1930-1955". Studies in Linguistic Analysis: 1–32.

Garg, N., Schiebinger, L., Jurafsky, D., & Zou, J. (2018). Word embeddings quantify 100 years of gender and ethnic stereotypes. Proceedings of the National Academy of Sciences, 115(16), E3635-E3644.

Mikolov, T., Chen, K., Corrado, G., Dean, J., Sutskever, L., & Zweig, G. (2013). word2vec. URL https://code. google. com/p/word2vec.

Miller, G. A. (1995). WordNet: a lexical database for English. Communications of the ACM, 38(11), 39-41.

Peters, M. E., Neumann, M., Iyyer, M., Gardner, M., Clark, C., Lee, K., & Zettlemoyer, L. (2018). Deep contextualized word representations. arXiv preprint arXiv:1802.05365.

Stanovsky, G., Smith, N. A., & Zettlemoyer, L. (2019). Evaluating Gender Bias in Machine Translation. arXiv preprint arXiv:1906.00591.
