---
layout: post
title: Baselines, Context, and Interpretation [statistics + theory]
---

Context matters.

This comes up all the time in language comprehension, especially in the case of *ambiguous* languagge. The same word (e.g., "bark") has at least two distinct meanings––and we know which was one was intended depending on the context of use (e.g., "the *bark* of a dog" vs. "the *bark* of a tree"). Even the humble preposition conveys radically different meanings in different contexts––compare "The event is *in* November" to "The event is *in* the concert hall" (Schneider et al, 2015). 

Yet context also matters in other, purportedly more objective domains, such as **statistics**. Let's say you encounter a numerical description of some societal trend. You need to ask yourself: [is that a big number](http://www.isthatabignumber.com/)? Or is it relatively trivial? How would you know? 

# Consider the baseline

One way to approach this problem is to **consider the baseline**. 

Imagine you're the head of a nation-state, and your Chief Economist is trying to convince you that a policy intervention increases [GDP](https://en.wikipedia.org/wiki/Gross_domestic_product). As evidence, they point to the fact that GDP increased by 2% last year, after a similar intervention was implemented. Does that mean the intervention worked?

To answer, you'd probably want an estimate of how much GDP increases on average, in the *absence* of such an intervention, i.e., a **baseline**. Such an estimate would obviously be noisy––lots of things affect economic growth––but it would help you set an expectation, which could then be compared to the empirical evidence.

I've made this argument for baselines before, e.g., when studying [why languages have homophones](https://seantrott.github.io/homophones/), or trying to make [evolutionary claims more generally](https://seantrott.github.io/neutral/). Essentially, it boils down to: if you want to use empirical data to make a causal claim about the world, you should at least try to rule out [alternative explanations](https://seantrott.github.io/baseline-plausibility/) for that empirical data.

# Treatment vs. control

This insight is at the heart of experimental design. In fact, the very notion of a ["treatment" and a "control" group](https://en.wikipedia.org/wiki/Treatment_and_control_groups) acknowledges the importance of baselines. 

The classic example usually involves some sort of drug treatment. Let's say you give a bunch of people a drug to improve happiness, and indeed, their self-reported happiness scores increase––by 5 points, on a 100-point scale. You need to ask yourself a couple questions:

1. Is that difference real, or is it just statistical noise?   
2. Is that difference meaningful?

The first question is about [sampling error](https://en.wikipedia.org/wiki/Sampling_error). If there's a lot of [variance](https://en.wikipedia.org/wiki/Variance) in self-reported happiness scores, maybe an increase (or decrease) of the amount observed is to be expected. This is exactly where control groups come in: by comparing the observed difference in some [placebo group](https://en.wikipedia.org/wiki/Placebo) to the group that actually received the drug, you can ask whether the treatment effect is **larger than expected**. If it is, you might tentatively answer "yes" to the first question. (More on this connection to statistical analysis in a coming blog post.)

Control groups are really critical for accounting for all sorts of issues that arise in statistical analysis, such as [regression to the mean](https://en.wikipedia.org/wiki/Regression_toward_the_mean). For an example, let's return to our imagined head-of-state. This time, we're trying to improve healthcare outcomes in the worst-performing counties. Our Chief Health Advisor tells us a promising story: last year, we implemented an intervention in the worst-performing counties, and observed––on average––an increase in their performance, relative to the year before. Does that mean the intervention was successful?

Again, it all depends on how much change you'd *expect*. And [regression to the mean](https://en.wikipedia.org/wiki/Regression_toward_the_mean) implies that––simply by virtue of sampling error––the worst-performing counties in one year are likely to have improved scores in the following year. So we can't simply interpret *any* improvement as evidence for the efficacy of an intervention. Instead, we should've [randomly assigned](https://en.wikipedia.org/wiki/Randomized_controlled_trial) some of those counties to a "control" group, so we could measure how much change in performance you'd expect by chance alone.


# Meaningful vs. significant

Above, I asked two questions. The first question––is a difference "real"––can be addressed with a control group. 

But the second––is the difference *meaningful*––is often harder to address.

This is where scientific terms sometimes get confused in the process of scientific communication. Scientists often refer to results as "significant", which, in the framework of [null hypothesis significance testing](https://en.wikipedia.org/wiki/Null_hypothesis), typically means: the *probability* of obtaining this result, *given* the null hypothesis, is sufficiently small. In other words, if we assume the null hypothesis is true, it's very unlikely that we'd observe a result this large––*exactly* how unlikely is expressed by a [p-value](https://en.wikipedia.org/wiki/P-value) ([^1]). Given a sufficiently small p-value (convention is *p < .05*), we are entitled to "reject" the null hypothesis.

But that's a separate question from the *importance* of an effect. An effect can be highly "significant" (*p < .0001*), but quite small. In fact, as the size of our sample increases, so does our [statistical power](https://en.wikipedia.org/wiki/Power_of_a_test): this means that we're more likely to correctly detect real but small effects. In general, I think that's a good thing. But it does mean that we can't just rely on statistical significance alone to sort out which things we care about, and which things we don't.

Fundamentally, this is a hard problem. There are some attempts to solve it, e.g., the use of standardized [effect sizes](https://en.wikipedia.org/wiki/Effect_size). But in my view, it's almost always going to depend on the **domain** (i.e., a "small" effect in some domains might seem relatively "large" in others), the **unexpectedness** of the effect (i.e., how surprising it is), and the **context of use** (i.e., potential applications of this effect). 

## It depends on the domain

If you want to know how "important" an effect is, it can be useful to compare the size of that effect to other, known effects. 

[Thibodeau & Boroditsky (2013)](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0052961) have a nice example of this. In a series of studies, they find that participants' attitudes towards crime (and solutions to crime) is predicted by the **metaphor** used (i.e., crime as a *virus* or as a beast*). They also measure participants' political affiliation, and measure the difference in attitudes across self-identified Democrats and Republicans. Republicans were more likely (55%) to favor an "enforcement-oriented" solution than Democrats (32%): a difference of 23%. For comparison, the preference for enforcement was stronger in the *beast* framing (42%) than the *virus* framing (31%): a difference of 11%. 

In other words, the size of the metaphor effect in these studies is about *half* that of political affiliation. Is that a lot or a little? An argument could be made either way, but I think it's a lot: political affiliation is a big predictor of attitudes on crime, so if a simple linguistic manipulation can achieve even half that difference, that seems like a big deal.

## It depends on how surprising it is

Above, I wrote that it's a big deal if a "simple" linguistic manipulation can systematically affect people's attitudes on crime. The word "simple" there is doing a lot of argumentative work. 

The idea here is that the importance of an effect may depend on how surprising that effect is. To some extent, this is similar to the notion of null hypothesis testing: if you're *really* confident that the null hypothesis is true, then it's relatively more surprising if that null hypothesis is rejected.

More broadly, this requires **well-developed theories** that make clear, quantitative predictions. That's likely beyond the scope of this post, but I think it's actually a kind of a *generalization* of the point I'm making about baselines: we should do our best to *formalize* any implicit theories we have about the thing we're trying to study, so we can ask about which theory best accounts for the empirical evidence.

## It depends on what you want to do

As I noted, the importance of an intervention's effect size also depends on what you want to use that intervention for.

The latter case is where real-world constraints might come in. We've got to do a [cost-benefit analysis](https://en.wikipedia.org/wiki/Cost%E2%80%93benefit_analysis): is the predicted benefit worth the cost(s) of implementation?

I'm not that well-versed in economics or public policy, so I don't have a lot to contribute here. But it seems obviously true that we should focus on the so-called "low-hanging fruit": interventions that give us the best bang for our buck.

# The Takeaway

I had a couple of goals with this post.

First, I wanted to convince you that baselines matter. Numbers seem objective, but they really only make sense in context.

Second, I wanted to outline a couple of the ways that we can (and should) integrate this notion of "context" when we're interpreting numbers. This isn't just an abstract, theoretical point: all of us encounter numbers and data points in our daily lives––often from people trying to convince us of something––and it's important to have a *framework* for determining which numbers to take seriously. (This is equally important when we're the ones making the argument; we need to hold ourselves accountable too.)

I'm going to keep returning to this issue of baselines in future posts––for some reason, I find it really compelling. Coming up will be a post that connects the more theoretical issues outlined here to the implementation of those ideas in statistical practice.




Related posts:

- [Are neutral models useful?](https://seantrott.github.io/neutral/)
- [Introduction to model comparisons in R](https://seantrott.github.io/model-comparison/)
- [How plausible should a baseline be?](https://seantrott.github.io/baseline-plausibility/)
- [Why do human languages have homophones](https://seantrott.github.io/homophones/)



# References

Schneider, N., Srikumar, V., Hwang, J. D., & Palmer, M. (2015, June). A hierarchy with, of, and for preposition supersenses. In Proceedings of The 9th Linguistic Annotation Workshop (pp. 112-123).

Thibodeau, P. H., & Boroditsky, L. (2013). Natural language metaphors covertly influence reasoning. PloS one, 8(1), e52961.

Wagenmakers, E. J. (2007). A practical solution to the pervasive problems of p values. Psychonomic bulletin & review, 14(5), 779-804.

# Footnotes

[^1]: This is beyond the scope of this post, but there are all sorts of problems with p-values as the sole determinant of whether a given effect "matters". For a nice overview, see [Wagenmakers (2007)](https://link.springer.com/article/10.3758/BF03194105). 
