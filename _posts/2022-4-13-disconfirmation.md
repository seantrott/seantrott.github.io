---
layout: post
title: Who's afraid of the null hypothesis? [stats]
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

By comparing our true test statistic to that sampling distribution, we can compute a **p-value**, which tells us the probability of obtaining a test statistic *at least* that large, given the null hypothesis.

If that [p-value](https://en.wikipedia.org/wiki/P-value) is sufficiently low, we can choose to **reject the null hypothesis**, usually in favor of some **alternative hypothesis**. (Obligatory parenthetical pointing out that "sufficiently low" is essentially an arbitrary **decision rule** often corresponding to *p < .05*.) If it doesn't pass that critical threshold, we might choose the (weaker) option of "failing to reject" the null hypothesis.

## Why does NHST seem so weird?

When teaching, I've noticed that NHST sometimes seems weird to students. 

Usually, our research question focuses on the alternative hypothesis, like: "Does this framing of the issue increase support for Policy X?", or "Does this new medicine reduce blood pressure?". So it can seem strange to focus our decision rule on whether to reject or––even weirder––"fail to reject" the null hypothesis. Why not focus on, say, the weight of evidence for the hypothesis we're actually interested in? Why calculate the probability of our results under some other hypothesis we're not interested in, and then decide whether to reject that hypothesis? (Indeed, this is sometimes used as a motivation for [Bayesian statistics](https://en.wikipedia.org/wiki/Bayesian_statistics).)

Personally, I think there is a value to this approach––at least when situated explicitly in a **falsificationist** framework in which the null hypothesis is actually relevant, widely believed, and/or important. The problem is that this isn't always the case.

## Falsification, logical fallacies, and more

There's only so much we can generalize from mere observation. A classic example: observing only white swans does not itself entail that all swans are therefore white. 

So how do we know things about the world? How, in particular, can science operate as a truth-seeking apparatus, if our observations are inherently finite? This is sometimes called the [**problem of induction**](https://en.wikipedia.org/wiki/Problem_of_induction).

One answer to this problem is the **falsificationist** approach to science. [Karl Popper](https://en.wikipedia.org/wiki/Karl_Popper) argued that any good scientific theory needs to be falsifiable, i.e., it can be proven *false* with empirical evidence. The scientific process, then, should proceed by progressively **falsifying** different theories, which will iteratively take us closer to a theory that's closer to capital-T Truth. (Or at least observable data!)

The idea here is that we can actually approach science as a **deductive**, rather than **inductive**, process. Let's say we have a theory: All swans are white. Verifying this claim would require observing every possible swan across all of time––an impossibility. But falsifying this claim is easier: it just requires observing *at least one* non-white swan.

We can go further, and ground this in [deductive logic](https://en.wikipedia.org/wiki/Deductive_reasoning). Let's say `P --> Q` (*P implies Q*). For example: "if it rains, the ground is wet". If we observe `~Q` (*not Q*), we can infer `~P`. It's logically impossible for `Q` to be true without `P` being true––we've stipulated that, by saying that `P --> Q`. This logical inference is sometimes called [**Modus tollens**](https://en.wikipedia.org/wiki/Modus_tollens). For example: "If the ground is not wet, we know it didn't rain" (according to our rule). 

Note that the opposite is *not* true. Observing `Q` does not itself implying that `P` is also true. It's possible that there are other relations we haven't specified, e.g., `X --> Q` or `S --> Q`. Thus, observing `Q` just tells us that one of the **antecedents** of `Q` must be true. Inferring that `P` must be true is a logical fallacy called [**affirming the consequent**](https://en.wikipedia.org/wiki/Affirming_the_consequent). For example: if the ground *is* wet, it's possible that it rained, but it's also possible that the sprinklers were on.

Relating this back to the scientific process: rather than searching for evidence *consistent* with a theory, we should search for evidence to *disconfirm* that theory. 

## Falsification and NHST

You might have noticed a similarity here between the notion of "disconfirming" or "falsifying" a theory and "rejecting" the null hypothesis. That's not an accident: at its strongest, NHST operates under the tenets of falsificationism. If a test statistic is sufficiently unlikely under a particular hypothesis, we can choose to reject (i.e., disconfirm) that hypothesis.

This is what's actually going on––theoretically, at least––when we report a p-value. The whole reason it matters whether *p < .05* is whether we're licensed to reject the null hypothesis, and the reason that matters is whether we've successfully eliminated a theory from the set of possible theories about the world. (In this approach to science, eliminating theories is a good thing––it means we're closer to the right theory.)

## Who's afraid of the null hypothesis?

The problem is when nobody really believes the null hypothesis in the first place. If the null hypothesis simply isn't plausible (or important or relevant, etc.), then disconfirming it doesn't mean much. It just means that the true effect of our intervention is likely **non-zero**. If everyone already believed that anyway, then we're just in the realm of arguing:

1. What the "true" value of that effect size is.  
2. Whether that true value is interesting or important.  

Both those things are important in and of themselves, but they're also pretty divorced from the basic function of NHST. NHST doesn't tell us much about whether a non-zero effect is *interesting*, or even what the true value of that non-zero effect is (this is called [parameter estimation](https://www.statisticshowto.com/parameter-estimation/)). It just tells us about the probability (the p-value) of an effect of a given size occurring under the null hypothesis. And if no one cares about that null hypothesis, then this p-value isn't that interesting.

For example, let's say we were interested in whether an anvil is more likely to break a glass cup than a feather. We collect a bunch of glass cups, randomly assign them to Anvil and Feather conditions, drop either anvils or feathers on each of those cups, and measure which cups break. Lo and behold, we find that cups in the Anvil condition broke more often (*p < .001*). We reject the null hypothesis that the true difference in the number of broken cups across conditions is zero. 

But is that *interesting*? Not really. It just tells us what we already believed. No one––as far as I'm aware––held the position that feathers and anvils are *equally* likely to break cups. Thus, disconfirming that particular null hypothesis provides very little information. 

## Anvils, feathers, and straw-theories

Scientific experiments usually don't test something so obvious.

Still, many experiments––by virtue of performing NHST––end up attempting to disconfirm a null hypothesis that simply isn't that widely held. Thus, the fact that a scientist has managed to design an experiment that produced a result inconsistent with that null hypothesis is not so surprising. Here, the null hypothesis is something of a ["straw man"](https://en.wikipedia.org/wiki/Straw_man).

That doesn't mean these experiments aren't valuable. Even at their worst, they can be viewed as a kind of an **"empirical existence proof"**. Maybe a scientist has an intuition that something (let's call it `X`) is true––and maybe others do too––but there's no empirical data consistent with that intuition. Here, an experiment provides value by demonstrating the following: there is *at least one* context for which the null hypothesis (`~X`) is likely false.

This seems narrow, and it is. Why should it matter whether there's at least one context where we can reject the null? Sometimes, this critique manifests as a criticism of experiments not being sufficiently naturalistic (i.e., "is this what happens in the *real world*?"). That's an important critique too––but I think it's only part of the issue.

The key insight here is that an existence proof is only really interesting if the thing it's disproving––the null hypothesis––is somehow important. 

## When the null hypothesis actually matters: the modularity of mind

Let's suppose that everyone really did believe that anvils and feathers were equally likely to break a glass cup. If that belief was widely held, then disconfirming it would be truly meaningful. In fact, it doesn't really even matter how narrow or circumscribed the experiment is––as long as there's at least one case where we can demonstrate `~Q`, then we can **disconfirm** `P`.

Take a more interesting example: the debate over whether the mind is **modular**.

I'm not going to get into the weeds too much here, but in at least one version of the debate, the issue hinges on whether different cognitive processes (say, *language* vs. *vision*) are **informationally encapsulated**. According to the modular view, the things that happen during visual perception are entirely separable (i.e., encapsulated) with respect to our knowledge about language, the language we speak, and so on. That doesn't mean our language can't affect things that happen before visual perception (e.g., what we attend to) or after it (e.g., how we interpret what we see). It means that there is a specific window of time during which visual perception is "happening", and that's encapsulated or **impenetrable** to language.

This is a reasonable view, and plenty of people hold it. Even better, it's well-situated to serve as a null hypothesis. If:

1. Vision is impenetrable with respect to vision...  
2. There exists some way to measure what's "happening" during a visual processing task...  
3. This measurement in (2) truly reflects the inner workings of vision, as opposed to a pre-perceptual or post-perceptual process (which, according to (1), is impenetrable to language)...  
4. Then we should observe **no difference** in this measurement as a function of someone's linguistic knowledge (e.g., which language they speak, which color categories they have, etc.).  

The point in (4) is a testable prediction. It can be **falsified**. That's great! And in fact, a relatively recent paper ([Maier & Rahman, 2019](https://link.springer.com/article/10.3758/s13415-018-00679-8)) attempted to do exactly this. As it turns out, they found evidence *inconsistent* with (4) above: there appeared to be measurable differences in how the brain responded to stimuli *within* vs. *across* color categories, and these differences were statistically unlikely to have occurred under the null hypothesis.

Now, there are still plenty of interpretive issues. We have to agree that the authors' experimental methodology satisfied the assumption in (2); as per (3), we have to agree that this measurement was not picking up on pre-perceptual or post-perceptual processes; and of course, we have to agree that the authors' statistical analyses themselves are sound. Finally, even if we agree on these things, rejecting the null is inherently a probabilistic decision: a 5% chance that the data occurred under the null hypothesis is not a 0% chance! 

Nevertheless: this, in my view, is an appropriate use of null hypothesis testing. There are a number of people who care about and *believe* the null hypothesis, so disconfirming it is both useful and interesting. 

## Why does any of this matter?

What are we doing when we do science?

There are lots of different potential answers to this question. But on one view, we're trying to develop theories that explain things about the world. These theories should be falsifiable––one of the worst things you can say about a theory is that it's "not even wrong". And one way to falsify a theory is to find a result that's statistically unlikely to have occurred, if that theory were true. In NHST, this is called **rejecting the null**. 

The problem is when no one cared about that falsified theory in the first place. In these cases, NHST ends up being used more like a statistical ritual––we ran the required test and got *p < .05*––rather than something that informs theory. And I think that many debates about a particular result (or set of results) can actually be traced back to this issue, even if people aren't aware that's exactly what's driving their disagreement. 

Throughout graduate school, I've heard various wise professors say something along the lines of: "Who would find this result surprising?" Or even more relevantly: "Whose theory of the world would have to change if this result were true?" And I think both of those questions are critical to keep in mind, especially if we're using NHST. 

In essence: **what's the null hypothesis, and who cares**?
 

## Related posts


- [Is neutral theory useful?](https://seantrott.github.io/neutral/)   
- [Why do human languages have homophones](https://seantrott.github.io/homophones/)
- [Baselines, context, and interpretation](https://seantrott.github.io/baselines/)  
- [How plausible should a baseline be?](https://seantrott.github.io/baseline-plausibility/)




## References

Maier, M., & Abdel Rahman, R. (2019). No matter how: Top-down effects of verbal and semantic category knowledge on early visual perception. Cognitive, Affective, & Behavioral Neuroscience, 19(4), 859-876.


