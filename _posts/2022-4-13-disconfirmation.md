---
layout: post
title: Disconfirmation in null hypothesis testing [stats]
---

I've been thinking a lot about [null hypothesis testing (NHST)](https://en.wikipedia.org/wiki/Statistical_hypothesis_testing) recently, and how it intersects with the [**falsificationist**](https://en.wikipedia.org/wiki/Falsifiability) approach to scientific theory. The tl;dr of this post is that I worry that not enough research––including some of my own––adopts a falsificationist approach when applying NHST, and this reduces the epistemological value of experiments. Ultimately, I believe that **thinking with baselines** might be a helpful framework to both illustrate the problem and offer some methodological solutions.

## NHST in a nutshell

The basic logic of NHST is as follows. If you run some experiment, e.g., comparing a *Treatment* group to some *Control* group along some target measure, you want to know if that measure is different across those groups (T vs. C). Examples might include:

1. Was the Treatment group more likely to support Policy X?  
2. Did the Treatment group have lower blood pressure?  
3. Was the Treatment group less likely to be infected by a disease?  

But of course, [**sampling error**](https://en.wikipedia.org/wiki/Sampling_error) means that these groups are likely to vary at least a *little bit* from each other, simply by chance. Is the extent to which they *actually* vary larger than we'd expect due to sampling error? Thus, in NHST, we compare our result––sometimes called a ["test statistic"](https://en.wikipedia.org/wiki/Statistic)––to a [**sampling distribution**](https://en.wikipedia.org/wiki/Sampling_distribution), which effectively stands in for our [**null hypothesis**](https://en.wikipedia.org/wiki/Null_hypothesis).

In a typical setup, our null hypotheses for each of the questions above would probably be as follows:

1. The true difference in support for Policy X between the Treatment and Control group is 0.  
2. The true difference in blood pressure between the Treatment and Control group is 0.  
3. The true difference in infection likelihood between the Treatment and Control group is 0.

In other words, the typical null hypothesis is something like:

> "The true size of the effect you're looking for is zero." 

Our sampling distribution, then, represents a probability distribution of possible values for our test statistic, *under the null hypothesis*. That is, what is the distribution of possible results we might've expected if the true difference between groups was 0, given our sample size and assuming some amount of sampling error? 

By comparing our true test statistic to that sampling distribution, we can compute a **p-value**, which tells us the probability of obtaining a test statistic *at least* that large, given the null hypothesis. In probabilistic terms, this might be expressed as:

> P(result | null = true)

If that p-value is sufficiently low, we can choose to **reject the null hypothesis**, usually in favor of some **alternative hypothesis**. (Obligatory parenthetical pointing out that "sufficiently low" is essentially an arbitrary **decision rule** often corresponding to *p < .05*.) If it doesn't pass that critical threshold, we might choose the (weaker) option of "failing to reject" the null hypothesis.

## Why does NHST seem so weird?

When teaching, I've noticed that NHST sometimes seems weird to students. 

Usually, our research question focuses on the alternative hypothesis, like: "Does this framing of the issue increase support for Policy X?", or "Does this new medicine reduce blood pressure?". So it can seem strange to focus our decision rule on whether to reject or––even weirder––"fail to reject" the null hypothesis. Why not focus on, say, the weight of evidence for the hypothesis we're actually interested in? Why calculate the probability of our results under some other hypothesis we're not interested in, and then decide whether to reject that hypothesis? (Indeed, this is sometimes used as a motivation for Bayesian statistics.)

Personally, I think there is a value to this approach––at least when situated explicitly in a **falsificationist** framework in which the null hypothesis is actually relevant, widely believed, and/or important. The problem is that this isn't always the case.

## Falsification, logical fallacies, and more

There's only so much we can generalize from mere observation. A classic example: observing only white swans does not itself entail that all swans are therefore white. So how do we know things about the world? How, in particular, can science operate as a truth-seeking apparatus, if our observations are inherently finite? This is sometimes called the **problem of induction**.

One answer to this problem is the **falsificationist** approach to science. Karl Popper argued that any good scientific theory needs to be falsifiable, i.e., it can be proven *false* with empirical evidence. The scientific process, then, should proceed by progressively **falsifying** different theories, which will iteratively take us closer to a theory that's closer to capital-T Truth. (Or at least observable data!)

The idea here is that we can actually approach science as a **deductive**, rather than **inductive**, process. Let's say we have a theory: All swans are white. If we wanted to prove this claim, it would require observing every possible swan across all of time––an impossibility. But falsifying this claim is easier: it just requires observing *at least one* non-white swan.

We can go further, and ground this in deductive logic. Let's say `P --> Q` (*P implies Q*). For example: "if it rains, the ground is wet". If we observe `~Q` (*not Q*), we can infer `~P`. It's logically impossible for `Q` to be true without `P` being true––we've stipulated that, by saying that `P --> Q`. This logical inference is sometimes called **Modus tollens**. For example: "If the ground is not wet, we know it didn't rain" (according to our rule). 

Note that the opposite is *not* true. Observing `Q` does not itself implying that `P` is also true. It's possible that there are other relations we haven't specified, e.g., `X --> Q` or `S --> Q`. Thus, observing `Q` just tells us that one of the **antecedents** of `Q` must be true. Inferring that `P` must be true is a logical fallacy called **affirming the consequent**. For example: if the ground *is* wet, it's possible that it rained, but it's also possible that the sprinklers were on.

Relating this back to the scientific process: rather than searching for evidence *consistent* with a theory, we should search for evidence to *disconfirm* that theory. 

## Falsification and NHST

You might have noticed a similarity here between the notion of "disconfirming" or "falsifying" a theory and "rejecting" the null hypothesis. That's not an accident: at its strongest, NHST operates under the tenets of falsificationism. If a test statistic is sufficiently unlikely under a particular hypothesis, we can choose to reject (i.e., disconfirm) that hypothesis.

This is what's actually going on––theoretically, at least––when we report a p-value. The whole reason it matters whether *p < .05* is whether we're licensed to reject the null hypothesis, and the reason that matters is whether we've successfully eliminated a theory from the set of possible theories about the world. (In this approach to science, eliminating theories is a good thing––it means we're closer to the right theory.)

## Who's afraid of the null hypothesis?

The problem is when nobody really believes the null hypothesis in the first place. If the null hypothesis simply isn't plausible (or important or relevant, etc.), then disconfirming it doesn't mean much. It just means that the true effect of our intervention is likely **non-zero**. If everyone already believed that anyway, then we're just in the realm of arguing:

1. What the "true" value of that effect size is.  
2. Whether that true value is interesting or important.  

Both those things are pretty divorced from the basic function of NHST. NHST doesn't tell us much––as far as I know––about whether a non-zero effect is interesting, or even what the true value of that non-zero effect is. It just tells us about the probability of that effect occurring under the null hypothesis. 

For example, let's say we were interested in whether an anvil was more likely to break a glass cup than a feather. We collect a bunch of glass cups, randomly assign them to Anvil and Feather conditions, drop either anvils or feathers on each of those cups, and measure which cups break. Lo and behold, we find that cups in the Anvil condition broke more often (*p < .000001*). We reject the null hypothesis that the true difference in the number of broken cups across conditions is zero. 

Is that interesting? Not really. It just tells us what we already believed. Disconfirming that particular null hypothesis provides very little information.













Final points to make:

- Often, we don't have a very well-specified or theoretically justified null hypothesis. It's just "the true size of the effect is zero." But unless there's actually a theory that says that, it's not particularly interesting to reject the null hypothesis that "the true size of the effect is zero". And so that just leaves us quibbling about whether the actual size is interesting or not. 
- (This issue of "is the actual size interesting" is helpfully illuminated by baselines.)


Discuss modus ponens and modus tollens, vs logical fallacies.

People often posit theory T and find data D that are consistent, and thus argue for the theory T.
But that’s not logically sound. 

