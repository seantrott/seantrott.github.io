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

Homophones are a stark illustration of why using a single word embedding for a given wordform (like "bank") is problematic. But the problem isn't unique to homophones. Arguably every word means something different in different contexts. As Jeff Elman pointed out ([Elman, 2004](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.299.2600&rep=rep1&type=pdf)), words are cues to meaning; the nature of that meaning will depend on exactly what was said before. For example, the verb "run" conveys something slightly different in the following sentences:

```
1) The jaguar runs.  
2) The child runs.  
3) The clock runs.
```

Both (1)-(2) connote that some animate entity is moving through physical space, and also imply something about the speed of their motor routine. But our mental representation of a jaguar running is likely quite different from our representation of a child running. And (3) appears to be a metaphorical usage of the verb "run". All three uses share something in common, but they're also somewhat different––and our representation of "meaning-space" ought to capture that.

This is exactly the problem that **contextualized word embeddings** aim to solve. Rather than mapping a wordform onto a single, static vector, contextualized approaches produce different vectors in different contexts. Notable recent approaches include ELMo ([Peters et al, 2018](https://arxiv.org/pdf/1802.05365.pdf%E3%80%91)), XLNet ([Yang et al, 2019](https://arxiv.org/pdf/1906.08237.pdf)), and of course, BERT ([Devlin et al, 2018](https://arxiv.org/pdf/1810.04805.pdf%E3%80%91)). The goal of this post isn't to describe the BERT algorithm; there are plenty of blog posts doing that already (see [here](https://towardsdatascience.com/bert-explained-state-of-the-art-language-model-for-nlp-f8b21a9b6270), [here](https://www.analyticsvidhya.com/blog/2019/09/demystifying-bert-groundbreaking-nlp-framework/), and [here](https://github.com/google-research/bert) for a start).

Rather, my goal is to summarize some recent papers in the trending subfield sometimes called **BERTology**: the study of the inner workings of BERT.

# BERTology: investigations of a neural network

Why is investigating the inner workings of BERT interesting or useful?

The reason that's usually cited is that many modern language models are thought to be **black boxes**. This is something of a catch-all term used for much of contemporary machine learning models, which basically means something like: "It works pretty well, but we have no idea *how*"[^1]. BERTology aims to address this problem by determining what sorts of information BERT picks up on, and where in the network it seems most sensitive to that information––in other words, making the network more **transparent**. 

Transparency, in turn, is important for all sorts of other things. First, if the goal is to use BERT (or really any machine learning model) in an applied setting, my personal opinion is that it's important to have an idea of how it works, at least for the task in which it's being applied. Otherwise, these models might be encoding all sorts of biases and spurious correlations, which impairs their performance in a real-world setting and at worst, can perpetuate systemic biases in society (as Cathy O'Neil demonstrates in detail in *Weapons of Math Destruction* (O'Neil, 2016)). Second, a better understanding of how BERT and other models learn to encode information from language can help advance research in Linguistics and Cognitive Science. There's a long history of using computational models to better understand human cognition (Futrell et al, 2019), and while BERT's algorithm isn't that similar to how humans process language, it's still a useful reference point. BERT learns only from textual input (though a *massive* amount of it); this allows us to ask about what sorts of things can be learned purely from linguistic input alone, and what sorts of things might require physical experience in the world, social interaction, and more.

So what does BERT "know", and how can we know? This question is usually operationalized in the form of using BERT embeddings on some downstream task (e.g., semantic role labeling). If a model equipped with BERT embeddings is successful, it implies that the BERT embeddings have encoded the information required to complete the task. From this, researchers often infer that BERT "knows" or somehow encodes the broader class of information that task is meant to reflect––not unlike how psychologists study cognitive abilities like Theory of Mind using a variety of different tasks, each of which is meant to somehow reflect the underlying ability. In other words, these tasks are operationalizations of some underlying theoretical construct. Importantly, the inference from "successful performance on Task X" to "understands Domain Y" is not always warranted in Psychology, and as we'll see below, it's also not always warranted in BERTology. 


## What does BERT know about word senses?

Given that a major goal of BERT is to distinguish between different senses of a word, a logical question is to ask how BERT performs on **word-sense disambiguation**: the task of predicting or classifying the intended sense `s` of some word `w` in some context `c` (where `w` usually has >1 sense). This amounts to something like `P(s|w, c)` for each possible sense of `w`.

The answer largely seems to be **yes**: BERT embeddings appear to provide sufficient information to predict the intended sense of a word ([Wiedemann et al, 2019](https://arxiv.org/pdf/1909.10430.pdf)). On multiple datasets, BERT emerges as the best language model, handily beating out previous embedding models. Distinct senses of a word formed identifiable "sense clusters" in meaning-space (see the figure below for an example using the word "bank").

 ![]({{ site.baseurl }}/images/bert/senses.png)

 Notably, these sense-clusters were considerably more distinct for BERT than for FLAIR or ELMo, two other contextualized embedding models. 





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


# References

Outline:

Coenen, A., Reif, E., Yuan, A., Kim, B., Pearce, A., Viégas, F., & Wattenberg, M. (2019). Visualizing and Measuring the Geometry of BERT. arXiv preprint arXiv:1906.02715. 

Devlin, J., Chang, M. W., Lee, K., & Toutanova, K. (2018). Bert: Pre-training of deep bidirectional transformers for language understanding. arXiv preprint arXiv:1810.04805.

Elman, J. L. (2004). An alternative view of the mental lexicon. Trends in cognitive sciences, 8(7), 301-306.

Forbes, M., Holtzman, A., & Choi, Y. (2019). Do Neural Language Representations Learn Physical Commonsense?. arXiv preprint arXiv:1908.02899.

Futrell, R., Wilcox, E., Morita, T., Qian, P., Ballesteros, M., & Levy, R. (2019). Neural language models as psycholinguistic subjects: Representations of syntactic state. arXiv preprint arXiv:1903.03260.

Goldberg, Y. (2019). Assessing BERT's Syntactic Abilities. arXiv preprint arXiv:1901.05287. 

Hewitt, J., & Manning, C. D. (2019, June). A structural probe for finding syntax in word representations. In Proceedings of the 2019 Conference of the North American Chapter of the Association for Computational Linguistics: Human Language Technologies, Volume 1 (Long and Short Papers) (pp. 4129-4138).

Kim, B., Wattenberg, M., Gilmer, J., Cai, C., Wexler, J., Viegas, F., & Sayres, R. (2017). Interpretability beyond feature attribution: Quantitative testing with concept activation vectors (tcav). arXiv preprint arXiv:1711.11279.

Levine, Y., Lenz, B., Dagan, O., Padnos, D., Sharir, O., Shalev-Shwartz, S., ... & Shoham, Y. (2019). SenseBERT: Driving Some Sense into BERT. arXiv preprint arXiv:1908.05646. [Link]

Niven, T., & Kao, H. Y. (2019). Probing neural network comprehension of natural language arguments. arXiv preprint arXiv:1907.07355.

O'Neil, C. (2016). Weapons of math destruction: How big data increases inequality and threatens democracy. Broadway Books.

Peters, M. E., Neumann, M., Iyyer, M., Gardner, M., Clark, C., Lee, K., & Zettlemoyer, L. (2018). Deep contextualized word representations. arXiv preprint arXiv:1802.05365.

Tenney, I., Das, D., & Pavlick, E. (2019). Bert rediscovers the classical nlp pipeline. arXiv preprint arXiv:1905.05950. 

Wiedemann, G., Remus, S., Chawla, A., & Biemann, C. (2019). Does BERT Make Any Sense? Interpretable Word Sense Disambiguation with Contextualized Embeddings. arXiv preprint arXiv:1909.10430. [Link]

Yang, Z., Dai, Z., Yang, Y., Carbonell, J., Salakhutdinov, R., & Le, Q. V. (2019). XLNet: Generalized Autoregressive Pretraining for Language Understanding. arXiv preprint arXiv:1906.08237.


# Footnotes

[^1]: This is itself an interesting point, because from one perspective, we know exactly how these models learn––we know what data they're exposed to, we know what their network architecture is, and we know how the algorithm is implemented. But "black box" means something a little deeper; it implies we don't have mechanistic explanations of what a network "knows" (e.g., how it transforms and represents the input it receives). For instance, we know that a network is able to classify an image of a cat as CAT, and an image of a dog as DOG, but *how*? Similarly, a network might be able to semantic roles of a sentence, but how has it learned to do that? I won't dwell on this point here, but the reason I find it interesting is that it raises fairly deep questions about what it means to understand an intelligent process. 


