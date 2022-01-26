---
layout: post
title: Does grammatical gender disambiguate? [research review]
---

I'm currently trying to improve my Spanish. One of the resources I've found helpful is the [Unlimited Spanish podcast](https://unlimitedspanish.com/podcasts/); in each episode, Óscar, the host, talks for about ~10 minutes about some topic in Spanish, typically having to do with Spanish culture or the language itself. 

In [this episode](https://unlimitedspanish.com/238-cambio-de-genero-cambio-de-significado/), Óscar, talks about several examples of Spanish [homophones](https://en.wikipedia.org/wiki/Homophone), in which the different meanings have different [grammatical genders](https://en.wikipedia.org/wiki/Grammatical_gender). For example, *el cura* translates to "the priest", while *la cura* translates to "the cure". Similarly, *el corte* translates to "the cut", while *la corte* translates to "the court".

This got me thinking. Might grammatical gender be serving as a [source of disambiguation information](https://seantrott.github.io/sources-ambiguitypt2/) for Spanish homophones? And further: could Spanish homophones be subject to a **selection pressure** to acquire different grammatical genders, possibly because of a selection [pressure against homophony](https://seantrott.github.io/homophones/) more generally? 

## Homophony and part of speech

[This paper by Dautriche et al (2018)](https://www.sciencedirect.com/science/article/pii/S0010028518300136?casa_token=Jpy2UnzxMeYAAAAA:8iwDxj9YKFYHeAbe_7HIkeQ0L_5gzJ5lZs1FvPefycBaZHvlGx5AeNVGjWPZtR1QEMQWXfJb) finds something similar with part of speech: across four languages (English, Dutch, French, and German), homophonous meanings are more likely to appear across distinct parts of speech (e.g., *noun* vs. *verb*) than you'd expect by chance.

Here, "chance" was operationalized with the use of a random [baseline](https://seantrott.github.io/baselines/): if you simply "shuffled" all the meanings across all the parts of speech (thus factoring in the relative frequency of nouns, verbs, etc.), how often would you expect a pair of meanings to be assigned *different* vs. *identical* parts of speech? As it turns out, this "expected rate" is lower than you see in real lexica, demonstrating that the effect isn't just a byproduct of random chance.

Coupled with evidence that infants are, in fact, sensitive to this kind of distinction, the authors argue that this suggests a kind of **selection pressure** at work:

> Following this, we propose that this learnability advantage translates into the overall structure of the lexicon, i.e., the kinds of homophones present in languages exhibit the properties that make them learnable by toddlers, thus allowing them to remain in languages.

In other words, the homophones that "survive" in a language are those that can be learned and understood in context. The question, then, is [which aspect of context](https://seantrott.github.io/sources-ambiguitypt2/) provides this disambiguating information.

## Grammatical gender: a comprehender-centric resource

Languages like English don't have grammatical gender. But for those that do, grammatical gender is another kind of **linguistic resource** that, at least in principle, learners and comprehenders could use to make learning and understanding language a little easier. And in fact, others have suggested ([Wasow et al. 2013](https://www.frontiersin.org/articles/10.3389/fpsyg.2013.00236/full), [Dye et al., 2018](https://onlinelibrary.wiley.com/doi/full/10.1111/tops.12316)) that grammatical gender serves a kind of **comprehender-centric** role in language, helping reduce a listener's uncertainty about upcoming nouns. 

In a language like Spanish, encountering a determiner like *el* or *la* gives you more information, in a certain sense, than a word like *the* does in English. This is because *el* would only be used for nouns with masculine gender, while *la* would only be used for nouns with feminine gender. Thus, when you hear *el*, your brain can effectively "rule out" a bunch of possible upcoming nouns, allowing you to focus on the most likely nouns with masculine gender. Theoretically, this should make comprehension easier.

## Is there a pressure for homophones to have different grammatical genders?

As it turns out, [that same paper I referenced earlier](https://www.sciencedirect.com/science/article/pii/S0010028518300136?casa_token=Jpy2UnzxMeYAAAAA:8iwDxj9YKFYHeAbe_7HIkeQ0L_5gzJ5lZs1FvPefycBaZHvlGx5AeNVGjWPZtR1QEMQWXfJb) also looked at grammatical gender in French, Dutch, and German. 

Somewhat surprisingly––to me, at any rate––homophonous meanings were *not more likely than chance* to have different grammatical genders. In fact, in both Dutch and French, the rate of different-gender homophones was *lower* than you'd expect by chance.

So at least in this three languages, it seems like the answer to my original question is *no*: there's no evidence to suggest that homophones are subject to a selection pressure to acquire different grammatical genders. 

# Takeaway

## Updating my priors

When I started this post (approximately 1 hour ago), my [prior](https://en.wikipedia.org/wiki/Prior_probability) was that homophones were more likely than chance to have different grammatical genders. Admittedly, this was just after listening to podcast episode, so I was primed with examples of the phenomenon, and I wasn't thinking about examples of homophones with the same grammatical gender. I'd also forgotten that [Dautriche et al (2018)](https://www.sciencedirect.com/science/article/pii/S0010028518300136?casa_token=Jpy2UnzxMeYAAAAA:8iwDxj9YKFYHeAbe_7HIkeQ0L_5gzJ5lZs1FvPefycBaZHvlGx5AeNVGjWPZtR1QEMQWXfJb) had already asked this question––I remembered the finding on part of speech, but for whatever reason I forgot about the grammatical gender finding.

Thus, I need to update my priors: statistically, there's no reason to think that homophones are subject to a pressure to have different grammatical genders––grammatical gender is not a reliable cue to meaning. This is in contrast to part of speech, for which there *is* evidence to suggest a selection pressure for disambiguation.

Note that this doesn't entail that grammatical gender provides *no* information about words in general; we know from past work ([Dye et al., 2018](https://onlinelibrary.wiley.com/doi/full/10.1111/tops.12316)) that it does. And it may even help around the margins with specific homophones, e.g., distinguishing between the Spanish *el cura* and *la cura*. But importantly, an occasional benefit for disambiguation is very distinct from the claim that there's some kind of lexicon-wide **selection pressure**. And so far as I can tell, that latter claim just isn't true.

Is it possible that the claim would be true in Spanish? Certainly. But empirically, it's not supported in three other languages, including one closely related language (French). So my prior going in is now shifted down: I can't think of a principled reason why it would be true in Spanish but not in Dutch, German, and French. And if it *is* true in Spanish, we'd need to figure out why Spanish is different.

## What happens when the baseline overshoots?

The other curious part of the finding is that in both Dutch and French, homophones are *less* likely than chance to have different grammatical genders. I'm not sure why this would be.

One option is to ignore it, and to think of these baselines as a kind of [one-tailed hypothesis test](https://en.wikipedia.org/wiki/One-_and_two-tailed_tests). That is, the main question was whether homophones were *more* likely than chance to have different grammatical genders. With a one-tailed test, it doesn't matter if they end up being significantly *less* likely to have different grammatical genders. 

That interpretation is reasonable if the goal really is just to answer whether homophones are more likely to have different grammatical genders than chance; the answer, it seems, is no. That was the question going into the study, and so it's fair to just stop there.

But it also leaves some open questions. If we take the baselines seriously as an operationalization of chance, then it still feels meaningful that they actually overestimate the rate of different-gender homophones. What happens when baselines overshoot?

As I've written [before](https://seantrott.github.io/homophones/), this is exactly what happened with a study we conducted investigating whether homophones are more likely to occur among short, phonotactically well-formed words (compared to a baseline) ([Trott & Bergen, 2020](https://www.sciencedirect.com/science/article/pii/S0010027720302687?casa_token=ICHA5VcVeF8AAAAA:HeqR3Oivx_P9YoAuP1Ld3dw9LHcrPEO1GRdZFuiOFhnPJE5HJ2D0ZdNXaw3pJb2RDwVdvxnp)). We found that, contrary to expectations, the baselines had *more* short, well-formed homophones than real lexica.

Returning to the case of different-gendered homophones: what would it mean for homophones to be *less* likely than chance to have different genders, at least in Dutch and French? Does this imply a selection pressure *against* having different genders?

Maybe. But [not everything has to be a selection pressure](https://seantrott.github.io/neutral/). I can think of at least two other explanations:

First, if those datasets include some etymologically related words that simply **drifted apart** in meaning, then those homophones are (I assume) more likely to share grammatical gender. That is, if the two meanings were originally the *same word*, they'd obviously have the same grammatical gender. So intuitively, then, I'd think that even as the meanings drifted apart, chances are they'd keep the same grammatical gender. (Of course, this wouldn't *always* be true, but my guess is that it's true on average.)

Second, if grammatical genders are assigned partially as a function of the *form* of words, then homophones––which share the same form––would be subject to a bias towards sharing the same gender. That is, when new words enter the language (e.g., via lexical borrowing or [sound change](https://seantrott.github.io/sound-change/)), I assume that their wordform influences which grammatical gender they are assigned (at least in languages where there is systematicity between the grammatical gender and phonological form of a word). This means that if a new word is homophonous with an existing word, and if that existing word has a grammatical gender aligned with its particular form, then that new word might end up with the same grammatical gender (given that it has the same form).

I wouldn't really call either of those factors a "pressure" against homophones have different grammatical gender. But they're certainly causal or at least correlated factors. And at a certain level, presumably, selection pressures reduce to underlying causal mechanisms.



# References

Dautriche, I., Fibla, L., Fievet, A. C., & Christophe, A. (2018). Learning homophones in context: Easy cases are favored in the lexicon of natural languages. Cognitive psychology, 104, 83-105.

Dye, M., Milin, P., Futrell, R., & Ramscar, M. (2018). Alternative solutions to a language design problem: The role of adjectives and gender marking in efficient communication. Topics in cognitive science, 10(1), 209-224.

Trott, S., & Bergen, B. (2020). Why do human languages have homophones?. Cognition, 205, 104449.

Wasow, T. (2013). The appeal of the PDC program. Frontiers in psychology, 4, 236.
