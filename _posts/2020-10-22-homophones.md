---
layout: post
title: Why do human languages have homophones?
---


Human languages are replete with ambiguity. Examples include *pragmatic ambiguity* (e.g., saying "It's cold in here" as a request to turn on the heater), *syntactic ambiguity* (e.g., ambiguous attachment in "She saw the man with the telescope"), *lexical ambiguity* (e.g., a *bank* is a place to deposit your check or the land alongside a river). 

I've written about this [before](https://seantrott.github.io/sources-ambiguitypt2/), arguing that the pervasiveness of ambiguity is a good opportunity to learn about how humans comprehend language more generally: which **cues** help comprehenders decipher ambiguous or under-specified language? 

But another, perhaps more fundamental, question is **why**: why do human languages tolerate the use of the same *signal* for distinct *meanings*? 

Of course, the answer may depend on the kind of ambiguity in question. The mechanisms that give rise to pragmatic ambiguity are likely quite different from those that produce lexical ambiguity. In this post, I'll focus on **homophony**: words that share the same *form*, but have different *meanings*. Homophones are well-studied, both in terms of the diachronic processes that *produce* them and in terms of their effects on langauge acquisition, comprehension, and production; they're also well-documented---any lexicographer compiling a dictionary has to contend with the problem of homophony (or **homonymy**). 

# The puzzle of ambiguity

If you've never thought about this before, the existence of homophony may not seem all that noteworthy. Why should we care if two distinct meanings come to share the same form––presumably through the accidents of history?

One reason this matters––and why ambiguity more generally is thought to be a kind of "puzzle" (Wasow et al, 2005)––is that human languages are widely believed to be shaped by pressures for efficient, effective communication (Gibson et al, 2019). We can draw an analogy here to natural selection in biological evolution: the basic assumption is that languages *adapt* to the needs of the humans who use them. In this conception, populations of human speakers are a kind of "environment" in which languages live and change.

At first glance, ambiguity seems like it should render communication more challenging, increasing the probability of miscommunication. Even if this increase is only marginal, it's unclear why language users should prefer a lexicon *with* homophones than a lexicon *without* them. One way to demonstrate this is to compare natural human languages to programming languages, which have been *designed*, top-down, with particular goals in mind; most programming languages do not tolerate ambiguity to the same degree that natural languages do.

In fact, some have argued (Chomsky, 2002) that the existence of ambiguity is *evidence* that languages are *not*, in fact, subject to pressures for efficient communication:

> If you want to make sure that we never misunderstand one another, for that purpose language is not well designed, because you have such properties as ambiguity. (Chomsky, 2002, pg. 107)

This brings us to the central question of the post: why do human languages insist on encoding different meanings with the same signal?

# What would an explanation look like?

It's worth considering what an explanation or answer to this question would actually look like.

The question of "why" immediately brings to mind quesitons of evolution, i.e., **selection pressures** that might select *for* or *against* homophones. In other words: why might homophones be selected *for*? And why aren't they selected *against*?

In my view, a complete explanation ought also to consider the generative mechanisms––the "mutations"––by which homophones arise. Homophones typically arise from a few sources: borrowing a word from another language, sound change, and semantic drift (i.e., *polysemy* turning into *homophony* over time). 

This post will deal primarily with the first part of the equation, examining whether there are selection pressures for or against homophones. But as I said, it's important to note that this is only part of the explanation. Ultimately, a complete model of homophony should include the diachronic processes that give rise to homophones.

## Why aren't homophones selected against?

Humans are remarkable at using **context** to disambiguate. There's extensive psycholinguistic research documenting the various contextual cues that humans use to decipher ambiguous language, from homophones to sarcasm. 

Some have even compared the brain to a ["context machine"](http://nautil.us/issue/68/context/why-the-brain-is-so-noisy), suggesting that this underlies the human mind's incredible robustness to noisy input (in contrast to, say, image recognition algorithms).

This position is not exactly new (Wasow et al, 2005; Levinson, 2000), but it is elaborated in considerable detail by Piantadosi et al (2012). The authors conceptualize ambiguity in terms of **entropy** over possible meanings––lower entropy corresponds to lower uncertainty, and higher entropy corresponds to higher uncertainty. If we assume context (broadly defined) has *any* information about the intended meaning of an utterance, then the entropy over possible meanings of a word should be lower when that word is conditioned on context than when viewed in isolation.

Thus, we have a tentative explanation: ambiguity is **tolerated** because humans are very good at disambiguating, and because they tend to appear in contexts that facilitate this disambiguation.

## Are homophones selected for?

The above section explains why homophones might be tolerated––i.e., a kind of "harmless bug" in the communicative system. BUt Piantadosi et al (2012) go further, offering a compelling argument as to why ambiguity might actually be a **design feature** of an efficient communication system. 

The argument is as follows. First, if we assume that context usually provides some information about meaning, then ambiguity is *tolerated* to some extent such that words do not carry redundant information with their context. And second, if we assume that languages evolve under **competing pressures**––namely, a pressure for *clarity* and a pressure for *ease* of communication––then, all else being equal, a language should "prefer" easier wordforms over harder wordforms. This should result in lexica with words that are easier to produce and remember (e.g., short and phonotactically well-formed); furthermore, if ambiguity is tolerated, the "best" wordforms might be **recycled** for the most meanings.

This extends (and refines) an older argument by Zipf (1949), which is that languages are subject to two opposing pressures: a pressure for **diversification** (in which every wordform has a different meaning), and a pressure for **unification** (in which every meaning is conveyed by the same wordform). 

Piantadosi et al (2012) provide empirical evidence consistent with their argument. Across English, German, and Dutch, the wordforms with the most homophones are also the *shortest*, most *frequent*, and the most *phonotactically well-formed*.

## An alternative explanation

Recently, my advisor and I wondered whether there might be an alternative explanation for these empirical results. Under this account, homophones emerge as a *byproduct* of other properties of a lexicon, and are not directly selected for.

First, one would generally expect short wordforms to have more homophones than long wordforms, even if there was no selection pressure that recycled the most optimal wordforms for multiple meanings. This is because there are simply less possible short wordforms than long wordforms. If you imagine randomly generating two words, those words have less opportunities to *diverge* if they are short than if they long.

Second, the existence of *phonotactics* considerably narrows the space of possible wordforms. All languages have constraints on which sounds can appear in which places (e.g., the start or end of a word) and in which orders (e.g., Japanese words do not have much in the way of consonant clusters, while English or certainly Russian words do). By limiting which wordforms can occur in a language, phonotactic constraints can increase the likelihood of homophones occurring––particularly among the most phonotacically likely sequences!

Both of these mechanisms––among others––likely account for some degree of homophony in natural languages. In order to attribute the *actual* amount of homophony to selection pressures, one would need to demonstrate that the **amount** and **concentration** of homophony in real lexica exceeds the amount and concentration predicted by these more indirect pathways. If real lexica are more homophonous than you'd expect, then it suggests that there is indeed a pressure for **unification**, as Zipf suggested. If real lexica are equally as homophonous, it suggests that homophones are due entirely to these other pathways. And if real lexica are *less* homophonous than one would expect, it suggests that human languages might actually be subject to causal forces resulting in a **reduction** of homophony––which one could interpret as a pressure against unification.

But to draw any of these inferences, one would need to quantify the amount and concentration of homophony you'd expect from phonotactics and particular distribution of word lengths alone.

# Homophony as emergent byproducts

In a recent paper (Trott & Bergen, 2020), we tried to do exactly this. [The paper](http://www.cogsci.ucsd.edu/~bkbergen/papers/trott_bergen_2020.pdf) describes this process in considerably more detail, but the short version is as follows. 

For each of five languages (English, Dutch, German, French, and Japanese), we trained an *n-phone* model on the set of wordforms in the real lexicon. These models learned which sounds can occur in which positions and which sequences. Using these models, we then generated ten *artificial* lexica for each language, matched for the distribution of word lengths in the real lexicon. Crucially, these artificial lexica had no selection pressure *for* or *against* homophony. Thus, they represent a kind of "baseline" for how much homophony you'd expect purely as a function of phonotactics, and *where* you'd expect to find it.

We were quite surprised by the results. Most notably, the artificial lexica had a higher *upper-bound* on the number of homophones a given wordform acquired. For example, some wordforms in the artificial Dutch lexica had upwards of 100 homophones, while wordforms in the *real* Dutch lexicon have only 3-4 homophones at most. Importantly, we also found that homophony was *more* optimally distributed in the artificial lexica––that is, it was most likely to be found among the shortest, most phonotactically likely wordforms––than in real lexica.

There are a couple of important implications from these findings. First, there's no evidence––at least in these languages––for a *positive* selection pressure for homophones. That is, an explanation need not attribute the amount or concentration of homophony to a pressure to recycle the most efficient wordforms; this happens "naturally", purely as a function of phonotactics. And more surprisingly, there's actually evidence for a pressure *against* homophony. This pressure is clearly not absolute, as homophones do exist. But whether this pressure is direct or indirect, wordforms in real lexica have fewer homophones than you'd expect.

I should also note that another group [(Caplan et al, 2020)](https://www.sciencedirect.com/science/article/abs/pii/S0010027720302857) obtained very similar results using a similar (but not identical) method. Along with our various supplementary analyses this suggests our findings are fairly robust to various operationalizations and approaches. Caplan et al (2020) also extend their method in a really fascinating analysis of *historical* language change, using data from the Oxford English Dictionary.

# Future directions and implications

In the General Discussion of our paper, we explore a few possible explanations and avenues for future research. 

In particular, my advisor and I are currently looking at **polysemy**––words with the same form and distinct, but *related* meanings. There's some empirical work to suggest that polysemy behaves differently (in terms of processing, acquisition, and so on) from homophony (Floyd & Goldberg, 2020; Rodd et al, 2012; Klepousniotou et al, 2008); polysemous words may actually enjoy an *advantange* in terms of learning and processing, exploiting existing semantic relationships in our conceptual network. Thus, it could be that polysemy––unlike homophony––really is selected for, above and beyond what you'd expect from phonotactics alone.

We're also looking at a potential relationship between homophony and lexical neighborhoods. Consistent with earlier work (Dautriche et al, 2017), we found that our artificial lexica had larger lexical neighborhoods (e.g., bat/cat/mat/etc.) than you would expect from phonotactics alone. For us, this raised the question: does a selection pressure against homophony result in larger neighborhoods? Or, conversely, does a selection pressure for larger neighborhoods result in fewer homophones?

Ultimately, our findings suggest that homophones might actually be selected *against*. In particular, it seems like languages have a pressure against **over-saturating** the same wordform with many, unrelated meanings. In a way, this is not entirely surprising––as I noted earlier in the post, ambiguity seems like it would increase the probability of miscommunication (and effort on the part of comprehenders), so it makes that real human languages would not tolerate wordforms with over 100 totally unrelated meanings. 

But this does suggest––as research so often does––that a reframing of the original question is necessary. We began by asking: why do human languages have homophones? It appears that the existence of homophony can be explained simply as a function of other properties of a lexicon, such as its phonotactics and distribution of word lengths. In fact, these properties *overestimate* the degree of homophony actually observed. So perhaps the better question ought to be: why don't languages have *more* homophones? 

A high-level answer is certainly that homophones are selected against somehow. But exactly *how*? What psychological processes select against homophones, and how do [these interact](https://seantrott.github.io/sound-change/) with the diachronic processes we know give rise to homophones? Is this pressure against homophony *direct* or *indirect*?

A definitive answer to any of these questions is impossible. But we're working towards theoretical models that will hopefully make concrete, testable predictions––and maybe eventually we'll have something that's somewhat satisfactory in terms of its explanatory power.



TO DO:

Summarize *Cognition* paper.


# References

Caplan, S., Kodner, J., & Yang, C. (2020). Miller's monkey updated: Communicative efficiency and the statistics of words in natural language. Cognition, 205, 104466.

Chomsky, N. (2002). An interview on minimalism. N. Chomsky, On Nature and Language, 92–161.

Dautriche, I., Mahowald, K., Gibson, E., Christophe, A., & Piantadosi, S. T. (2017). Words cluster phonetically beyond phonotactic regularities. Cognition, 163, 128-145.

Floyd, S., & Goldberg, A. E. (2020). Children make use of relationships across meanings in word learning. Journal of Experimental Psychology: Learning, Memory, and Cognition.

Gibson, E., Futrell, R., Piantadosi, S. P., Dautriche, I., Mahowald, K., Bergen, L., & Levy, R. (2019). How efficiency shapes human language. Trends in cognitive sciences, 23(5), 389-407.

Klepousniotou, E., Titone, D., & Romero, C. (2008). Making sense of word senses: The comprehension of polysemy depends on sense overlap. Journal of Experimental Psychology: Learning, Memory, and Cognition, 34(6), 1534.

Levinson, S. C. (2000). Presumptive meanings: The theory of generalized conversational implicature. MIT press.

Piantadosi, S. T., Tily, H., & Gibson, E. (2012). The communicative function of ambiguity in language. Cognition, 122(3), 280-291.

Rodd, J. M., Berriman, R., Landau, M., Lee, T., Ho, C., Gaskell, M. G., & Davis, M. H. (2012). Learning new meanings for old words: Effects of semantic relatedness. Memory & Cognition, 40(7), 1095-1108.

Trott, S., & Bergen, B. (2020). Why do human languages have homophones?. Cognition, 205, 104449.

Wasow, T., Perfors, A., & Beaver, D. (2005). The puzzle of ambiguity. Morphology and the web of grammar: Essays in memory of Steven G. Lapointe, 265-282.

Zipf, G. K. (1949). Human behavior and the principle of least effort: an introd. to human ecology.