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

In a reply paper, [Ferrer-i-Cancho et al (2011)](https://arxiv.org/pdf/1209.1751.pdf) demonstrated that this empirical finding can be reproduced by what essentially amounts to a random word generator. They write a program that generates "words" by simply generating one letter at a time––randomly. "Words" are created when the system randomly generates a space. So in this text:

> hgl opko rt

The words would be "hgl", "opko", and "rt".

Critcally, what the authors find is that if you analyze a big corpus of "words" generated in this way, you'll find that the words that happen to be shorter (they have fewer letters) are also more predictable in context. Thus, they argue:

> A strong correlation between information content and word length can simply arise from the units making a word (e.g., letters) and not necessarily from the interplay between a word and its context as proposed by Piantadosi and co-workers. In itself, the linear relation does not entail the results of any optimization process.

This is where the reply by [Piantadosi et al (2013)](https://arxiv.org/pdf/1307.6726.pdf) comes in. There are a couple components to their counterargument, including the fact that the simple "monkey" model presented by Ferrer-i-Cancho et al (2011) is *not*, in fact, that good at reproducing the real data––so it's not particular good even as a baseline. But the part I want to focus is a little more philosophical. Specifically, they argue that the ability of a neutral model to explain empirical data is not the only criterion we should consider. We should also think about how **plausible** that neutral model is: 

> It is not informative to show that other assumptions could also lead to the observed behavior, if those other assumptions are demonstrably not at play (pg. 6)

As the authors point out, this "monkey model" has a pretty weird implicit theory of how speakers speak: 

> The model’s generative process assumes that words are created by just happening to randomly sample their component pieces (pg. 3).

This is demonstrably not how speakers choose what to say. Speakers know *whole words*, and choose words accordingly to convey a particular message. 

Thus, we have two possible explanations of the data: the Efficiency Explanation [Efficiency Explanation](https://arxiv.org/pdf/1307.6726.pdf) and the Random Monkey Explanation [Random Monkey Explanation](https://arxiv.org/pdf/1209.1751.pdf). Let's imagine that both explain the data equally well (though this isn't necessarily true, as Piantadosi et al (2013) note). Should we prefer the Random Monkey because it's "simpler"? Piantadosi et al (2013) argue the answer is **no**: the Efficiency Explanation is more compatible with other things we already know about human cognition and language, whereas the Random Monkey is not, so we ought to prefer the Eefficiency Explanation.

# "State your priors"

This argument can be generalized.

According to this view, our preference for Theory X vs. Theory Y should be a function of *both*:

1. How well each theory explains the data.  
2. The plausibility of each theory––i.e., how well it comports with other things we know about the phenomenon at hand.

Point (2) is aptly summarized in [another version](https://d1wqtxts1xzle7.cloudfront.net/30764547/__Information_content_versus_word_length_in_natural_language-with-cover-page-v2.pdf?Expires=1629307763&Signature=TBA1wBqbtwC~FN7j5nrg1UuADxp-FVcGwpPCp4ARd9PZ4oXSP63L~hqRYPINBPAAQ2-Oq2wmhZG3gtNoIRc5br74nI5ONlXZp-HHXp40m6i62CrhR8LpscISnmsfyW7b6firFXxhDWQ-k5QpEH4Fbef3mctx9DgEkijD87wCKNBy5NPz0CgNUEvRvIXIXJuoEUxpEHzv5Ar6RsS8U9fHCoyx1S89EBjfp-T72iIfUZ5fmkggxFO0tYFCSFrScin4NuI71ssiZ4mmRa2SEhaMuIoMoym63b1mA990BBl4jsY8dFQ5wymTMCtT74HPThUdJlvUzKrhWyIbFlli911kcw__&Key-Pair-Id=APKAJLOHF5GGSLRBV4ZA) of the reply: 

>  Causal processes which are independently known to be incorrect—like the random generation of monkey models—cannot cast doubt on alternative explanations that are plausible...In general, scientific theorizing draws on as many sources of evidence as possible, and if one causal pathway is independently known to be
incorrect, noting that it could give rise to the observed data is irrelevant. (pg. 6)

I think of this as an argument for **stating your priors**. 

Scientific reasoning doesn't occur in a vacuum. When we compare the explanatory value of multiple theories, we need to consider not only the specific data at hand, but also how well each theory explains other data, how consistent those theories are with *other*, related theories.

Put another way: a good Bayesian doesn't just update "all the way" given new evidence for some hypothesis. They weigh the evidence against their **prior** belief that the hypothesis is true.

According to this argument, then, we don't need to consider these implausible baselines at all: they're *a priori* implausible, so they're not a useful null hypothesis.

# Should we discount implausible baselines?

First: all things considered, I think we should prefer a plausible baseline over an implausible one! Thus, something like a phonotactically plausible model of the lexicon (as discussed in [this post](https://seantrott.github.io/homophones/)) should be preferred over one that doesn't model phonotactics at all.

But second: I think even an implausible baseline is useful, depending on the goal.

Let's consider the random typing case again. It's clear the Random Monkey Explanation is not, in fact, a very good explanation: it's *a priori* obvious that this is not the generative process by which people produce words.

Thus, if our goal is to contrast two, *specific* accounts of the data––the Efficiency Explanation vs. the Random Monkey Explanation––I think it's fair to say the Efficiency Explanation is preferable on other grounds (i.e. ,its **plausibility**), even if both theories explain the data equally well. 

But I'm not sure that's necessarily the point of these baselines. An alternative goal might be something like an **existence proof**: there exists *at least one* generative process that explains the data equally well ([^1]), and that should give us pause. If such a simple model can reproduce the empirical data, it suggests there might also be other, more *specific* theories that also reproduce the empirical data, and thus we shouldn't be too quick to discount the null hypothesis.

Note that there's a subtle difference in these approaches. The first seeks to compare two specific theories. The latter seeks to establish the *unique* explanatory power of one specific theory (i.e., the Efficiency Explanation) by comparing it to a simple generative process that may or may not reproduce the data. That other process need not be a theory per se––it's just a way to establish a [null hypothesis](https://en.wikipedia.org/wiki/Null_hypothesis) other than the one that's typically used, i.e., that some parameter of interest is not significantly different from 0. That traditional null hypothesis isn't a particularly challenging baseline to "disconfirm"; thus, as [Mosco et al (2013)](https://escholarship.org/content/qt7738n7cz/qt7738n7cz.pdf) writes, we should consider exploring the space of possible baselines, especially when trying to make some sort of evolutionary claim.

I think this is especially true, given that the "alternative" account (i.e., in this case, the Efficiency Explanation) is not always specified in that much detail, which inherently puts *any* implementation of a generative process at a disadvantage. That is, because *any* model represents a simplification, we end up with a situation where we're comparing some simplified model to a verbal theory that doesn't have to make those simplifications––the simplified model will always seem implausible by comparison! I worry that this places an unreasonably high burden of proof on baselines, and interprets them as doing something other than what they're intended to accomplish.

Ultimately, this discussion raises some very interesting questions about the scientific process. What constitutes evidence of a theory? What constitutes an alternative explanation? How rigorously should we specify the null hypothesis that we're trying to disconfirm in favor of our alternative explanation? 

There's no single answer. It depends on context. But in much of my own research, I often end up coming back to this simple question: [is that a big number?](http://www.isthatabignumber.com/)

# Related posts:

- [Is neutral theory useful?](https://seantrott.github.io/neutral/)   
- [Why do human languages have homophones](https://seantrott.github.io/homophones/)


# References



Ferrer-i-Cancho, R., & del Prado Martín, F. M. (2011). Information content versus word length in random typing. Journal of Statistical Mechanics: Theory and Experiment, 2011(12), L12002.

Moscoso del Prado, F. (2013). The missing baselines in arguments for the optimal efficiency of languages. In Proceedings of the Annual Meeting of the Cognitive Science Society (Vol. 35, No. 35).

Piantadosi, S. T., Tily, H., & Gibson, E. (2011). Word lengths are optimized for efficient communication. Proceedings of the National Academy of Sciences, 108(9), 3526-3529.


# Footnotes

[^1]. Again, assuming this is true.