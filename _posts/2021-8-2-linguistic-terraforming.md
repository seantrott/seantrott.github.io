---
layout: post
title: Could language models change language? [working notes]
---

*[Note: this post is labeled "working notes" because the ideas are speculative, and I'm just interested in working through them. I should also note that my intent is not to make a claim about whether some of these outcomes are good or bad––just to walk through some possible scenarios.]*

A major theme of Brian Christian's [*The Alignment Problem*](https://brianchristian.org/the-alignment-problem/) is that the models we build of reality can, in turn, *shape* reality.

It's easy to think of a model––a search engine, a recommender system, etc.––as a kind of "reflection" of its training data. We feed it a matrix of observations, then it unearths some correlations and uses them to produce its output. But models don't just exist in a vacuum. Their outputs inform our own decisions. That is, just as the world is an input to the model, the model's output is an input to our world. In Christian's words, this can result in a "terraforming" of our reality––rendering it more like the slice of reality they were trained on.


What happens when the input data is the language we speak?

# The Advent of Neural Language Models

Recent advances in **neural language models** (hereafter NLMs) have yielded some genuinely impressive results. 

If you're not familiar with it already, I highly recommend checking out some of the examples of GPT-3 in action. Fed with the right "prompt", it can produce startlingly sensible prose and even poetry; it can regurgitate historical facts and, more problematically, create some of its own; and it can carry out an extended dialogue, tracking various referents and themes throughout the discourse. Some have even suggested they're the start of Artificial General Intelligence (AGI). 

Others have expressed concern. Big language models encode a number of social biases, and training them produces an absurd amount of carbon emissions (Bender et al, 2021). Needless to say, there's an active conversation in the NLP community about how (and whether) to deploy these models.

But I'm interested in another angle: how might the widespread application of these models shape our language?

# Language Models in Action

Take predictive text. As you type an email to a colleague, Gmail tracks each word you write, and predicts the next word––or words––you'll choose. For the most part, predictive text does a pretty good job of correctly predicting what we're going to write, which makes writing more convenient; and when it's wrong, we just have to choose the word we intended, rather the one it predicted. 

But in some cases, maybe the word Gmail predicted is *close enough* to the one we wanted. Or perhaps we weren't sure which word we wanted at all. Around the margins, then, predictive text starts to actively shape the words we select.

This seems like a trivial case (and it's intended to be). As I said, this effect––if it exists at all––likely exists only around the margins of electronic language use. 

Eventually, though, it seems likely that NLMs will play a role in more and more of our interactions. And the more they **mediate** our use of language, the more opportunity they'll have to shape the decisions we make about which words to choose and which grammatical constructions to embed them in.

# The Case of Writing

One way to establish the plausibility of this claim is to look for precedents. Are there other examples of how a novel communication technology has changed our language––or, perhaps, changed the way it changes?

The classic case of this is writing, one of the oldest linguistic technologies. I've heard it claimed that writing *slows down* the pace of language change. And while I haven't found any empirical work defending this claim, it's certainly plausible. 

The logic is as follows. Changes to language, like changes in biological evolution, arise from a pool of synchronic variation or "mutations" (Ohala, 1989). A language isn't just "one thing"; it's a set of practices, mostly shared among a population language users, who each have their own idiosyncratic way of using that language. And small, local decisions made by individual speakers can "bubble up" and ultimately change the distribution of sounds and words that any given speaker might encounter, which in turn shapes what we think of as the "language". 

Writing, however, freezes certain practices in place. Specific ways of rendering a wordform in writing (i.e., its orthography) might change the rate at which the spoken or signed version of that wordform changes––its **tethered**, now, to the orthographic form. The same goes for the mappings between words and their meanings, or syntactic constructions.

That's not to say written languages don't change! They obviously can, and do. But the argument––if it's correct––is that the use of writing can *slow down* the rate at which language would ordinarily change.

Again, I don't know whether this is true. It seems like assessing it would require some estimate of how quickly a language would change in the absence of writing, which seems like a difficult task. But for the purposes of this post, I'm going to accept it as provisionally and probabilistically true.

# NLMs and Language Change

So how might NLMs change language, if they change it at all? I think there are a few distinct possibilities, which I describe as hypotheses below.


## H1: NLMs will slow down (or freeze) language change writ large.

This is the strongest view: NLMs will "freeze" a language in place, fossilizing the language as it was originally presented to the NLM.

This scenario likely depends on NLMs pervading society to a very large degree. But in this most extreme version, language change is either halted or slowed to a crawl. 

## H2: NLMs slow (or freeze) language change selectively.

This is a more nuanced version of H1: NLMs freeze language at a rate proportional to their use, and in particular, only freeze language in the areas of communication *most* mediated by NLMs. I.e., if certain registers (e.g., formal registers) are most mediated by language models, the variants or dialects of language used in those registers should be the most "frozen".

One might say that H1 and H2 are distinguished not necessarily by their theoretical mechanism, but rather by the pervasiveness with which NLMs are used.

## H3: NLMs will adjust to language change.

In this scenario, NLMs are *flexible*, and their role is really just as a kind of mirror. So human language continues to change as it normally would, and NLMs manage to keep up, because they're adaptable.

Under this account, people innovate new words, constructions, etc., at the pace they always would––and text produced by NLMs will keep up.

## H4: NLMs create novel linguistic innovations.

So far, I've compared NLMs to writing. But there's a key difference: NLMs are *generative* models. In principle, they're capable of combining linguistic elements into novel expressions––just like humans. Writing is a *conduit* for language use; but NLMs are, in a sense, language users themselves.

And so, according to this account, NLMs could potentially innovate novel expressions as well. The likelihood of this scenario might depend on the manner of their deployment, and the flexibility with which they're used. If all NLM-mediated communication is managed by a single, centralzed model, this scenario seems unlikely; but if each individual human is paired to a *copy* of the original NLM, and that copy changes and adjusts to each person's idiolect, then it's conceivable that the NLMs will come to embody the idiosyncracies of an individual's linguistic usage––and perhaps, in the right circumstances, develop idiosyncracies of their own. 

Some might remember the reinforcement learning agents in a [Facebook experiment that "invented" their own language](https://towardsdatascience.com/the-truth-behind-facebook-ai-inventing-a-new-language-37c5d680e5a7). Left to their own devices, NLMs might take language to some weird places. But the natural constraint, of course, is that at the end of the day, humans still have to communicate with each other. So the limits of NLM-induced language change are to some extent the limits of human cognitive and communicative capacities. On the other hand, human cognition and communication is, presumably, shaped to some extent by language itself. So this scenario might result in a **coupled system**, with humans and NLMs continuing to influence each other and the languages they use.

# Taking Stock

These hypotheses are extremely speculative. It's possible NLMs won't ever see widespread use. But it seems likely (to me at least) that they'll find their way into more and more applications. And so I think it's worth thinking through the potential consequences of these design decisions––however far-fetched they might seem.

I've tried to map out the hypothesis space. Each of the hypotheses overlap to some extent, and as I noted, some are differentiated not on the basis of which mechanisms they posit, but rather as a function of how much NLMs pervade society. 

If I were to take a gamble, I think **H2** seems a pretty safe bet. Many languages around the world have a ["literary" variety](https://en.wikipedia.org/wiki/Literary_language) and a number of more informal dialects; [diglossia](https://en.wikipedia.org/wiki/Diglossia)––the use of two dialects in a single language community––is the norm. Thus, it doesn't seem too far-fetched to imagine a world where certain genres of language use––perhaps ad copy, email communication, or some types of journalism––are heavily mediated by NLMs, and thus "freeze" in place. While meanwhile, other genres of language continue to change around them, and most speakers view those words and constructions as somewhat anachronistic. But I don't think we can definitively rule out the others. 

It's also important to note that the biggest (and most effective) NLMs correspond, as you might expect, to [high-resource languages like English](https://datascience.stackexchange.com/questions/62868/high-low-resources-language-what-does-it-mean). There's another, perhaps more worrying, scenario than the ones I described above––which is that NLMs trained on high-resource languages accelerate existing trends in declining linguistic diversity. This wouldn't be the *fault* of NLMs directly, per se, but paired with globalization it could lead to the erosion of languages around the world. I wonder whether there's a way to flip this scenario on its head: could NLMs help *preserve* low-resource languages? I dont know––but this only reinforces the importance of work on documenting low-resource languages. 

A final note: all of these scenarios assume that humans are ultimately the ones trying to communicate, and the question is what role NLMs play in that linguistically-mediated communication. However, for those who believe in AGI, that's not necessarily a valid assumption; perhaps the future involves AGIs communicating with each other, *sans humana*. And *that* world is truly unprecedented.


# References

Bender, E. M., Gebru, T., McMillan-Major, A., & Shmitchell, S. (2021, March). On the Dangers of Stochastic Parrots: Can Language Models Be Too Big?🦜. In Proceedings of the 2021 ACM Conference on Fairness, Accountability, and Transparency (pp. 610-623).

Christian, B. (2020). The Alignment Problem: Machine Learning and Human Values. WW Norton & Company.

Ohala, J. (1989). Sound change is drawn from a pool of synchronic variation. Language Change: Contributions to the Study of Its Causes, 173-198.
