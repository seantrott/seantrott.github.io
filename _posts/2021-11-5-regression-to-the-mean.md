---
layout: post
title: Regression to the mean [stats]
---

Here's a fact that may surprise you: the top seven hitters in 2014 all had *worse* batting averages in 2015. The magnitude of this decrease varied across players, but in some cases was pretty substantial: the top hitter went from .341 in 2014 to .313 in 2015––a score that would've ranked him at about 7, if he'd batted that way in 2014. So it's not as though these players were suddenly performing *poorly*, but all seven experienced a systematic decrease in perforamnce.  

Longtime teachers may have noticed a similar phenomenon. Often, the students who performed the very best on the first exam perform slightly worse on the second exam (but still quite well)––and the students who performed the very worse now perform slightly better. 

One intuitive explanation might chalk both findings up to something like motivation. Maybe doing really well makes you complacent, so you don't try as hard in the future. And maybe doing really poorly pushes you into action, so you study harder (or practice more, etc.) and thus improve your grade (or batting average). 

That explanation could very well be true. But in both cases, there's an alternative explanation that's both much more banal and much less intuitive.

# Regression to the mean

## Understanding distributions

In statistics, we often think of phenomena in terms of **distributions**: a set of scores or values. For example, the set of all scores on an exam is a kind of distribution. So is the set of all heights in a population.

Most distributions have some amount of **variance**. On an exam, this means that some people did well, while others did worse. Similarly, some people are tall, while others are short.

We can also describe a distribution by its **shape**. One common, well-documented shape is the so-called [*normal distribution*](https://en.wikipedia.org/wiki/Normal_distribution). In the idealized normal distribution, the mean score is identical to the median score (i.e., the "middle" score), which is also identical to the mode (the most frequent score). This results in a tell-tale "bell" shape, with the most frequent scores clustered around the middle, and the less frequent scores forming the "tails" of the distribution––i.e., the highest and lowest scores.

Thus, if we were to **sample** a random score from the normal distribution, we'd be more likely to sample a score close to the mean. Put another way: extreme scores are less frequent, i.e., less likely to occur.

## Scores as noisy samples

What determines a student's score on an exam?

Presumably, many different factors. Their degree of preparation obviously plays some role––but so does something we might call "chance". Here, "chance" might encompass any number of unmeasured factors: how well they slept the night before, whether they're distracted that morning, whether they had a good commute to campus, whether they're stressed about other classes they're taking or events in their personal life, and so on. 

The same goes for baseball players, as well as pretty much anything we try to measure. There's always some element of randomness––alternatively: "unexplained variance" or "noise"––in any data-generating process. 

Thus, a distribution of scores––a "sample"––is noisy. And any particular score in that sample has been subject to that noise.

## Regressing to the mean

Now let's return to the examples we started with: the top seven batters, or the students with the best and worst exam scores in a class. 

Those scores are part of a larger distribution. And by definition, they're *extreme* scores––they're either very high or very low––which makes them less likely to occur. That is, if you were to randomly sample a score from the entnire distribution of batting averages, it's pretty unlikely you'd end up with one of the top seven.

Further, each score is the product not just of a player's aptitude (or a student's preparation), but some additional set of factors we're calling "chance". And the thing about chance is that it's *unbiased*: it's just as likely to result in a slightly higher score as a slightly lower score.

If each student's score is partially the product of random, unbiased variation, then we might expect––on average––scores to be equally likely to go up or down on a second exam (holding constant things like their preparation, the exam difficulty, etc.). And that's definitely true of the distribution at large. 

But we're talking about extreme scores specifically. More likely than not, the "noise" responsible for those extreme scores was either unusually positive (for extremely high scores) or unusually negative (for extremely low scores). This means that––on average––we should expect those students' scores to either go down (for extmreely high cores) or up (for extremely low scores) on a subseqnet exam, simply because it's unlikely that such an extreme score would occur twice. 

In other words, extreme scores have a way of **regressing towards the mean** on subsequent samples.

# The regression fallacy

All this statistical detail actually has real-world relevance. Ignoring regression to the mean can lead people to erroneous conclusions about what caused an increase or decrease in extreme scores. Sometimes, researchers mistake regression to the mean for the effect of some intervention they're trying to assess, and, in turn, means that policymakers might spend lots of money trying to implement that intervention at scale––only to find out that they were essentially just measuring statistical noise.

Ignoring regression to the mean––or mistaking it for something else––is called the **regression fallacy**, and it's surprisingly common.

A classic example is described by Tversky & Kahneman (1974). The Israeli Air Force was trying to figure out how to train better pilots, and they were testing a motivational approach: after a good landing, trainees were praised; after a bad landing, trainees were reprimanded. As it turns out, the trainees who were praised ended up doing *worse* on subsequent landings, and trainees who were reprimanded did *better*. Oneinterpretation of this finding is that praise causes worse performance, and reprimands cause better performance––suggesting that the instructors should avoid praise, and focus on reprimands.

This is certainly possible. But presumably, the success of any given landing depends at least a bit on random chance. And so, applying the same logic we applied to the test scores, we expect that pilots with exceptionally good landings might have slightly worse landings later on––and that pilots with exceptionally poor landings might have slightly better landings later on. Before we conclude anything about the causal effects of praise or reprimands, we need to account for regression to the mean. 

## A pervasive error

Before I describe how the regression fallacy can be addressed, I just want to emphasize how pervasive this problem can be. Unless you're specifically watching for it, it's easy to miss.

The problem can occur pretty much anytime you focus on scores at the extreme ends of a distribution. For example, as I discussed briefly in my post on baselines, consider the case of a public policy researcher trying to study the effect of some intervention. This could be anything at all: a way to increase voter turnout, improve healthcare, increase income levels, and so on.

If that researcher (or more likely, team of researchers) ends up targeting their proposed intervention at the *extreme* end of a distribution––e.g., implementing it in only the counties with the lowest voter turnout––then they effectively have a biased (non-random) sample. And based on what we know of regression to the mean, we can expect that voter turnout in those counties should be slightly higher in future elections, simply by chance. It would thus be incorrect for the researcher to attribute any *observed* increase in turnout to their policy intervention. They need to account for regression to the mean.

## Addressing the regression fallacy

The regression fallacy arises when researchers conduct their analysis on scores from the extreme ends of a distribution––a biased sample, in other words.

The solution, then, is to get an *unbiased* sample. For example, rather than implementing their policy in every county with low turnout, low-turnout counties could be randomly assigned to a treatment and control condition: half of them get the intervention, half of them have business as usual. Then, researchers can estimate the expected effect of regression to the mean in the control group––i.e., how much increase in voter turnout you'd expect in those counties, simply by chance. That change in turnout can be compared to the change observed in the treatment group. If turnout in the treatment group increased more than in the control group, that suggests the intervention worked, above and beyond regression to the mean. But if turnout in both groups is about the same, it suggests the intervention didn't change turnout beyond what you'd expect.

Interestingly, it's theoretically possible for turnout in the treatment group to be *lower* than in the control group––but still higher than in the original sample. This could suggest that the intervention actually decreased turnout. Such a conclusion seems paradoxical, since turnout is numerically higher than in the original sample. But we have to remember that some increase is expected because of regression to the mean. So although the turnout is numerically higher, that increase is less than what we'd expect by chance.

Another, perhaps more obvious, approach would be to randomly assign *all* counties (or a random subset of all counties) to either the treatment or control groups. That way, we're not dealing with a biased sample. I think this solution is great too. The only reason I described the previous approach is that sometimes, the intuition of policymakers is to implement a policy in the "tails" of a distribution. This could be because of cost constraints (i.e., it's too expensive to implement the policy everywhere) or even ethical considerations (i.e., if you think the intervention will help, then you should target the populations that most need it). So my point is simply that if you're going to take this approach of targeting the tails, you need to make sure you address regression to the mean.



# References

Tversky, A., Kahnemann, D. (1974). Judgment under uncertainty: Heuristics and biases. Sci- ence, 185, 1124–1131
