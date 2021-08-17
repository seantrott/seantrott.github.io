---
layout: post
title: How plausible should a baseline be? [theory]
---

In a [previous post](https://seantrott.github.io/neutral/), I considered the use of **neutral models** to assess claims about selective pressures. I described several objections to the use of neutral baselines, including one by [(Piantadosi et al, 2013)](https://arxiv.org/pdf/1307.6726.pdf).

# The context

In this case, the debate is over a ["random typing" model](https://en.wikipedia.org/wiki/Infinite_monkey_theorem), and its suitability as a baseilne to test an evolutionary claim. 

In a [2011 paper](https://www.pnas.org/content/108/9/3526.short), Piantadosi and co-authors demonstrated that the [**information content**](https://en.wikipedia.org/wiki/Information_content) of a word is correlated with its length: shorter words convey less "information"––i.e., they are more predictable in context. This is interpreted as evidence for **efficiency**: if longer words are more costly to produce, presumably a language should reserve them for the most informative meanings:

> A more efficient code for meanings can therefore be constructed by respecting the statistical dependencies between words. Here, we show that human lexical systems are such codes,
with word length primarily determined by the average amount of information a word conveys in context.

In a reply paper, [Ferrer-i-Cancho et al (2011)](https://iopscience.iop.org/article/10.1088/1742-5468/2011/12/L12002/pdf?casa_token=cKfX771YZokAAAAA:nfu8s1bLy_JlOldvU8qYBk874EHJvpuXLNEgCzDNKl4wnHeVkjWY7JXD4vXaqOAzHjszhwI) demonstrated that this empirical finding can be reproduced by what essentially amounts to a random word generator. They write a program that generates "words" by simply generating one letter at a time––randomly. "Words" are created when the system randomly generates a space. 

Critically, what the authors find is that if you analyze a big corpus of "words" generated in this way, you'll find that the words that happen to be shorter (they have fewer letters) are also more predictable in context. Thus, they argue:

> A strong correlation between information content and word length can simply arise from the units making a word (e.g., letters) and not necessarily from the interplay between a word and its context as proposed by Piantadosi and co-workers. In itself, the linear relation does not entail the results of any optimization process.

This is where the reply by [Piantadosi et al (2013)](https://arxiv.org/pdf/1307.6726.pdf) comes in. In essence, the counterargument is that the ability of a neutral model to explain empirical data is not the only criterion we should consider. We should also think about how **plausible** that neutral model is: 

> It is not informative to show that other assumptions could also lead to the observed behavior, if those other assumptions are demonstrably not at play (pg. 6)





ARGUMENT:
Piantadosi's point is that we can't just evaluate model fit in a vacuum––we need to consider the prior plausibility of the explanation.
But I think this depends on what the point of the baseline is.
If the point is: "look, this other, *specific* explanation is better, and we should prefer it". Then yes, I agree.
But if the point is: "look, even this very simple model generates the data you're taking as evidence for your theory". Then no, I disagree.
And here's why: in the latter case, the ability of a simple model to reproduce the empirical data you're taking as evidence should give you pause––because if such a simple model can reproduce that data, then it suggests there are lots of other possible mechanisms/explanations that would as well.



Related posts:

- [Is neutral theory useful?](https://seantrott.github.io/neutral/)  


# References

Ferrer-i-Cancho, R., & del Prado Martín, F. M. (2011). Information content versus word length in random typing. Journal of Statistical Mechanics: Theory and Experiment, 2011(12), L12002.

Piantadosi, S. T., Tily, H., & Gibson, E. (2011). Word lengths are optimized for efficient communication. Proceedings of the National Academy of Sciences, 108(9), 3526-3529.