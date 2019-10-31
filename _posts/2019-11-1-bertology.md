---
layout: post
title: BERTology
---

The primary goal of this post is to summarize several recent papers exploring what [BERT](https://github.com/google-research/bert), a contextualized word embedding model, can and can't do. If you're new to word embeddings in general, my [other post](https://seantrott.github.io/embeddings/) has more background.

# Introduction: Contextualized word embeddings

One of the major limitations to embedding approaches such as word2vec and GloVe is that they don't distinguish between different *senses* of a word. That is, the word "bank" would map onto the same, static vector in both sentences below:

```
I went swimming along the bank.  
I deposited my check at the bank.
```

This is obviously not optimal. "Bank" is an example of a homophone––the same word *form* has multiple, unrelated meanings, and the word embedding should reflect those different meanings in the appropriate context. 

Homophones are a stark illustration of why using a single word embedding for a given wordform (like "bank") is problematic. But the problem isn't unique to homophones. Arguably every word means something different in different contexts. As Jeff Elman famously argued ([Elman, 2004](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.299.2600&rep=rep1&type=pdf)), words are cues to meaning; the nature of that meaning will depend on exactly what was said before. For example, the verb "run" conveys something slightly different in the following sentences:

```
1) The jaguar runs.  
2) The child runs.  
3) The clock runs.
```

Both (1)-(2) connote that some animate entity is moving through physical space, and also imply something about the speed of their motor routine. But our mental representation of a jaguar running is likely quite different from our representation of a child running. And (3) appears to be a metaphorical usage of the verb "run". All three uses share something in common, but as Elman (2004) argued, they're also somewhat different––and our representation of "meaning-space" ought to capture that.

This is exactly the problem that **contextualized word embeddings** aim to solve. Rather than mapping a wordform onto a single, static vector, contextualized approaches produce different vectors in different contexts. Notable recent approaches include ELMo ([Peters et al, 2018](https://arxiv.org/pdf/1802.05365.pdf%E3%80%91)), XLNet ([Yang et al, 2019](https://arxiv.org/pdf/1906.08237.pdf)), and of course, BERT ([Devlin et al, 2018](https://arxiv.org/pdf/1810.04805.pdf%E3%80%91)). The goal of this post isn't to describe the BERT algorithm; there are plenty of blog posts doing that already


# BERT investigations

## Assessing BERT's syntactic knowledge

include:
- Goldberg (2019)
- Coenen et al (2019)
- Hewitt & Manning (2019)

## Edge probing: what does BERT know, and where?

include: 
- Tenney et al (2019)

## Commonsense in BERT 

Include:
- Forbes et al (2019)  
- Niven & Kao (2019)


Outline:

Coenen, A., Reif, E., Yuan, A., Kim, B., Pearce, A., Viégas, F., & Wattenberg, M. (2019). Visualizing and Measuring the Geometry of BERT. arXiv preprint arXiv:1906.02715. 

Devlin, J., Chang, M. W., Lee, K., & Toutanova, K. (2018). Bert: Pre-training of deep bidirectional transformers for language understanding. arXiv preprint arXiv:1810.04805.

Elman, J. L. (2004). An alternative view of the mental lexicon. Trends in cognitive sciences, 8(7), 301-306.

Forbes, M., Holtzman, A., & Choi, Y. (2019). Do Neural Language Representations Learn Physical Commonsense?. arXiv preprint arXiv:1908.02899.

Goldberg, Y. (2019). Assessing BERT's Syntactic Abilities. arXiv preprint arXiv:1901.05287. 

Hewitt, J., & Manning, C. D. (2019, June). A structural probe for finding syntax in word representations. In Proceedings of the 2019 Conference of the North American Chapter of the Association for Computational Linguistics: Human Language Technologies, Volume 1 (Long and Short Papers) (pp. 4129-4138).

Kim, B., Wattenberg, M., Gilmer, J., Cai, C., Wexler, J., Viegas, F., & Sayres, R. (2017). Interpretability beyond feature attribution: Quantitative testing with concept activation vectors (tcav). arXiv preprint arXiv:1711.11279.

Niven, T., & Kao, H. Y. (2019). Probing neural network comprehension of natural language arguments. arXiv preprint arXiv:1907.07355.

Peters, M. E., Neumann, M., Iyyer, M., Gardner, M., Clark, C., Lee, K., & Zettlemoyer, L. (2018). Deep contextualized word representations. arXiv preprint arXiv:1802.05365.

Tenney, I., Das, D., & Pavlick, E. (2019). Bert rediscovers the classical nlp pipeline. arXiv preprint arXiv:1905.05950. 

Yang, Z., Dai, Z., Yang, Y., Carbonell, J., Salakhutdinov, R., & Le, Q. V. (2019). XLNet: Generalized Autoregressive Pretraining for Language Understanding. arXiv preprint arXiv:1906.08237.