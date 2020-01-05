---
layout: post
title: Do different languages really convey information at the same rate?
---

Language is used across all known human populations, but the languages used across these populations also exhibit striking differences. A longstanding goal in Linguistics has thus been to identify **universal features** of language: characteristics that are shared across all human languages. Understanding which features appear to be *invariant* across languages would shed light on the origins of language, as well as the potential biological constraints that act as "filters" for the kinds of forms that languages can take.  

A recent paper ([Coupé et al, 2019](https://advances.sciencemag.org/content/5/9/eaaw2594?utm_source=TrendMD&utm_medium=cpc&utm_campaign=TrendMD_1)) argued for a kind of quasi-universal features: according to their analysis, languages convey "information" at roughly the same rate of 39 bits per second. This paper has since enjoyed a fair amount of discussion ([1](https://www.sciencedaily.com/releases/2019/09/190905124520.htm), [2](https://languagelog.ldc.upenn.edu/nll/?p=44386), [3](https://www.theatlantic.com/science/archive/2019/09/people-speak-faster-less-efficient-languages/597391/)). However, I think it's hard to understand or evaluate this claim without understanding how these variables (e.g., **information**) were operationalized. Thus, the goal of this post is to briefly describe the analyses performed in the paper.

# What is "information"?

The first and primary issue, in my view, is that the term "information" is used rather vaguely in everyday discourse, usually to mean something roughly like "semantic content". However, "information" also has at least one very technical meaning, coming from the field of [information theory](https://en.wikipedia.org/wiki/Information_theory); this meaning is both more narrow and in some ways less intuitive than the everyday meaning of "information", leading to considerable confusion.

[Claude Shannon](https://en.wikipedia.org/wiki/Claude_Shannon) introduced the technical meaning in a 1948 paper called [*A mathematical theory of communication*](https://en.wikipedia.org/wiki/A_Mathematical_Theory_of_Communication) (Shannon, 1948). Here, Shannon conceptualizes information in the context of *communication*. A **sender** is trying to convey some **message** to a **receiver**, and sends this message using some sequence of **signals**. "Information", then, can be understood in terms of the relationship between each signal produced by the sender and the sender's intended message: how much does a given signal reduce a sender's **uncertainty** about the intended message? 

I won't go into all the details here, but the two most relevant concepts that Shannon introduced in the paper are **surprisal** and **entropy**. 

It's worth noting that most operationalizations of these concepts don't really engage with **meaning**, i.e., the actual message that the sender is trying to convey. Rather, they're usually operationalized in terms of the signal system itself--that is, the "information" conveyed by some signal `x` is not necessarily measured as a function of how much uncertainty `X` reduces about the space of possible meanings `M`, but rather as a function of the probability of `x` relative to the space of possible signals `{x, y, z}`^[Of course, this isn't always the case. For example, Cohen Priva (2017) calculates the **informativity** of phonemes, such as */t/* or */d/*, as a function of how much uncertainty they reduce about the **word** the speaker is trying to produce. While words aren't equivalent to *meaning*, my point is that informativity is being defined relative to some other space of events.].


## Surprisal: more surprising signals convey more "information"

**Surprisal** is simply the *negative log probability* of an event. For example, imagine a "language" `L` containing four possible "words": [`A`, `B`, `C`, `D`]. If all four words are equally likely to occur, then each has a probability of 0.25. Thus, the surprisal of each word is: `-log2(.25) ~= 2`. This is meant to capture the "information" provided by an event: low-probability events convey more information (they are more *surprising*), whereas high-probability events are not *surprising* and so convey less information. 

This may still seem a little unintuitive. What does the probability of an event have to do with how much information it conveys?

Recall that "informativity" here is understood with respect to the **reduction of uncertainty**. To understand this, let's contrast a language `L1` in which each word is equally probable, i.e., `[p(A)=.25, p(B)=.25, p(C)=.25, p(D)=.25]`, with `L2`, in which some words are more probable than others: `[p(A)=.85, p(B)=.05, p(C)=.05, p(D)=.05]`. Now imagine a *receiver* about to receive signals from either `L1` or `L2`. In the first case, each signal is equally *surprising*; thus, each signal reduces the receiver's uncertainty about the impending signal exactly the same amount (approximately **2 bits**). But in the second case, some signals are more surprising than others: `A` is very likely, while the other signals are very unlikely. This means that observing `A` does less to reduce the receiver's uncertainty about that signal than observing `B`: `A` conveys roughly .23 bits, while `B` conveys 4.3 bits.

As you can see, *surprisal*, and thus informativity, is highly dependent upon the underlying probability distribution over signals. This brings us to the next concept: **entropy**.

## Entropy

Shannon adapted the concept of **entropy** from its original meaning in [statistical thermodynamics](https://en.wikipedia.org/wiki/Entropy_(statistical_thermodynamics)). [Shannon entropy](https://en.wikipedia.org/wiki/Entropy_(information_theory)#Definition) can obtained in the following way: for each element `i` in a signal system, multiply `p(i) * log p(i)`. Then sum all these products together, and flip the sign. Formally:

![]({{ site.baseurl }}/images/entropy/entropy.png)


[ define entropy ]


## Caveats

[ Reiterate that this is very specific to the domain of probability of signals, etc. So it can be misleading to say something conveys "X bits" of information; what we really mean is that something is more or less probable (where that probability may also be conditioned upon some previous signal). ]









# References


Coupé, C., Oh, Y. M., Dediu, D., & Pellegrino, F. (2019). Different languages, similar encoding efficiency: Comparable information rates across the human communicative niche. Science Advances, 5(9), eaaw2594.

Cohen Priva, U. (2017). Informativity and the actuation of lenition. Language, 93(3), 569-597.

Shannon, C. E. (1948). A mathematical theory of communication. Bell system technical journal, 27(3), 379-423.