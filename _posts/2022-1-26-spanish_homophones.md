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

## Takeaway

When I started this post (approximately 1 hour ago), my [prior](https://en.wikipedia.org/wiki/Prior_probability) was that homophones were more likely than chance to have different grammatical genders. Admittedly, this was just after listening to podcast episode, so I was primed with examples of the phenomenon, and I wasn't thinking about examples of homophones with the same grammatical gender. I'd also forgotten that [Dautriche et al (2018)](https://www.sciencedirect.com/science/article/pii/S0010028518300136?casa_token=Jpy2UnzxMeYAAAAA:8iwDxj9YKFYHeAbe_7HIkeQ0L_5gzJ5lZs1FvPefycBaZHvlGx5AeNVGjWPZtR1QEMQWXfJb) had already asked this question––I remembered the finding on part of speech, but for whatever reason I forgot about the grammatical gender finding.

Thus, I need to update my priors: statistically, there's no reason to think that homophones are subject to a pressure to have different grammatical genders––grammatical gender is not a reliable cue to meaning. This is in contrast to part of speech, for which there *is* evidence to suggest a selection pressure for disambiguation.

Note that this doesn't entail that grammatical gender provides *no* information about words in general; we know from past work ([Dye et al., 2018](https://onlinelibrary.wiley.com/doi/full/10.1111/tops.12316)) that it does. And it may even help around the margins with specific homophones, e.g., distinguishing between the Spanish *el cura* and *la cura*. But importantly, an occasional benefit for disambiguation is very distinct from the claim that there's some kind of lexicon-wide **selection pressure**. And so far as I can tell, that latter claim just isn't true.

# References

Dautriche, I., Fibla, L., Fievet, A. C., & Christophe, A. (2018). Learning homophones in context: Easy cases are favored in the lexicon of natural languages. Cognitive psychology, 104, 83-105.

Dye, M., Milin, P., Futrell, R., & Ramscar, M. (2018). Alternative solutions to a language design problem: The role of adjectives and gender marking in efficient communication. Topics in cognitive science, 10(1), 209-224.

Wasow, T. (2013). The appeal of the PDC program. Frontiers in psychology, 4, 236.
