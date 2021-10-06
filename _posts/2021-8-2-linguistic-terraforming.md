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

If you're not familiar with it already, I highly recommend checking out some of the examples of [GPT-3](https://en.wikipedia.org/wiki/GPT-3) [in action](https://www.gwern.net/GPT-3). Fed with the right "prompt", it can produce startlingly sensible prose and even poetry; it can regurgitate historical facts and, more problematically, create some of its own; and it can carry out an extended dialogue, tracking various referents and themes throughout the discourse. Some have even suggested they're the start of Artificial General Intelligence (AGI). 

Others have expressed concern. Big language models encode a number of social biases, and training them produces an absurd amount of carbon emissions ([Bender et al, 2021](https://dl.acm.org/doi/abs/10.1145/3442188.3445922)). Needless to say, there's an active conversation in the NLP community about how (and whether) to deploy these models.

But I'm interested in another angle: how might the widespread application of these models shape our language?

# Language Models in Action

Take [predictive text](https://en.wikipedia.org/wiki/Predictive_text). As you type an email to a colleague, Gmail tracks each word you write, and predicts the next word––or words––you'll choose. For the most part, predictive text does a pretty good job of correctly predicting what we're going to write, which makes writing more convenient; and when it's wrong, we just have to choose the word we intended, rather the one it predicted. 

But in some cases, maybe the word Gmail predicted is *close enough* to the one we wanted. Or perhaps we weren't sure which word we wanted at all. And in these cases, we just go with Gmail's suggested text. Around the margins, then, predictive text starts to actively shape the words we select.

This seems like a trivial case (and it's intended to be). As I said, this effect––if it exists at all––likely exists only around the margins of electronic language use. 

Eventually, though, it seems likely that NLMs will play a role in more and more of our interactions. And the more they **mediate** our use of language, the more opportunity they'll have to shape the decisions we make about which words to choose and which grammatical constructions to embed them in. And this, in turn, raises the question: by shaping our patterns of language use, could NLMs shape our *language*?

# The Case of Writing

One way to establish the plausibility of this claim is to look for precedents. Are there other examples of how a novel communication technology has changed our language––or, perhaps, changed the way it changes?

One example might be found in writing: one of the oldest linguistic technologies. I've heard it claimed that writing *slows down* the pace of language change [(Zengel, 1962)](https://anthrosource.onlinelibrary.wiley.com/doi/pdf/10.1525/aa.1962.64.1.02a00120). 

One way it could do this is by increasing [metalinguistic awareness](https://en.wikipedia.org/wiki/Metalinguistic_awareness): the ability to consciously reflect on the nature of language. For example, there is some empirical evidence that literacy is connected to the ability to recognize "words" as units of speech ([Homer & Olson, 1999](https://www.jbe-platform.com/content/journals/10.1075/wll.2.1.07hom)). Of course, it's difficult to sort out correlation from causation: maybe better metalinguistic awareness improves literacy! But leaving that aside for now, the argument is that increased metalinguistic awareness could *freeze* certain practices in place, making large-scale language changes (like sound change) less likely.

For this argument to make sense, we have to consider how language change occurs in the first place. Like changes in biological evolution, changes to language arise from a pool of synchronic variation (Ohala, 1989), or "mutations": at any given point in time, a population of speakers might produce the same "word" many different ways. But these small, local decisions made by individual speakers (and comprehenders) can eventually bubble up and change the distribution of sounds and words that other speakers might encounter, which in turn shapes that language.

To return to writing: specific ways of rendering a word in writing (i.e., its orthography) might increase a speaker's understanding of that word as a fixed, stable entity, rather than something ephemeral. Because the word is tethered to its orthographic form, that psychological fixedness could change the rate at which the word changes––either phonologically or even semantically. 

That's not to say written languages don't change! They obviously can, and do. But the argument––if it's correct––is that the use of writing can *slow down* the rate at which language would ordinarily change.

Again, I don't know whether this is true. Assessing it requires an estimate of the pace of language change in the absence of writing, which is difficult to do. And it's worth noting that others disagree with Zengel's argument that literacy is a conservative force in language change (Frawley, 1994). The reason I mention it is simply to enumerate how *in principle* a communication technology that's existed for thousands of years could have shaped the course of language change.

# NLMs and Language Change

So how might NLMs change language, if they change it at all? I think there are a few distinct possibilities, which I describe as hypotheses below.

## H1: NLMs will slow down (or freeze) language change writ large.

This is the strongest view: NLMs will "freeze" a language in place, fossilizing the language as it was originally presented to the NLM, and ultimately **homogenizing** language.

Why would NLMs homogenize language?

First, let's consider how NLMs work. NLMs generate langauge by predicting the most likely word in a given context. For example, if I write, "salt and ___", most people (and most language models) would fill in the blank with "pepper". 

But this isn't just true of common multiword constructions. It applies to the probability of any given word appearing in any given context. If "he went to the store" is more common in a big corpus than "he went to the library", then presenting an NLM with "he went to the ___" would likely elicit a higher probability for *store* than for *library*. 

Now, let's imagine that we train an NLM on a big corpus (e.g., Wikipedia). That *same* NLM is used to mediate linguistic communication in a variety of contexts. Each time the NLM encounters a given context, it's probability distribution over upcoming words will be pretty much the same ([^1]). In other words, the NLM will always be [attracted](https://en.wikipedia.org/wiki/Attractor) to similar sets of words in a given context, which means that across a large number of samples, they'll simply **reinforce** the patterns of use they've observed in the training data ([^2]). Hence: homogenization. 

This scenario likely depends on NLMs pervading society to a very large degree. But in this most extreme version, language change is either halted or slowed to a crawl. 

## H2: NLMs slow (or freeze) language change selectively.

This is a more nuanced version of H1.

In this scenario, NLMs freeze language at a rate proportional to their use, and in particular, only freeze language in the areas of communication *most* mediated by NLMs. I.e., if certain [registers](https://en.wikipedia.org/wiki/Register_(sociolinguistics)) (e.g., formal registers) are most mediated by language models, the variants or dialects of language used in those registers should be the most "frozen".

One might say that H1 and H2 are distinguished not necessarily by their theoretical mechanism, but rather by the pervasiveness with which NLMs are used.

## H3: NLMs will adjust to language change.

In this scenario, NLMs are *flexible*, and their role is really just as a kind of mirror. So human language continues to change as it normally would, and NLMs manage to keep up, because they're adaptable.

Under this account, people innovate new words, constructions, etc., at the pace they always would. NLMs stay up to date by constantly retraining or fine-tuning on a new generation of linguistic data. Perhaps NLMs always lag a little behind the pace of change (like previous generations typically do), but they don't prevent the usual course of innovation.

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

Homer, B., & Olson, D. R. (1999). Literacy and children's conception of words. Written Language & Literacy, 2(1), 113-140.

Ohala, J. (1989). Sound change is drawn from a pool of synchronic variation. Language Change: Contributions to the Study of Its Causes, 173-198.

Rao, G. S. (1994). Language Change: Lexical Diffusion and Literacy. Academic Foundation.

Frawley, W. D. (1994). Literacy, the individual, and the political economy of language change. Language Change: Lexical Diffusion and Literacy. Delhi: Academic Foundation, 61-88.

Zengel, M. S. (1962). Literacy as a factor in language change. In Readings in the Sociology of Language (pp. 296-304). De Gruyter Mouton.

# Footnotes

[^1]: There are some things you can do to ameliorate this, e.g., injecting some amount of noise into the network, but across enough samples, that likely wouldn't really change much about the resulting distribution of selected words. Alternatively, as the "context" window becomes larger and larger––not just a given sentence, say, but an entire paragraph, or even "everything someone has said before"––that could also chagne the probability distribution sufficiently to reduce or prevent this kind of convergence onto particular attractor states.

[^2]: You might make an objection here: isn't this basically what humans do? I.e., reproduce the linguistic input they're "trained on" in various formulations? I think that's not totally wrong. But humans also get lots of other input. And importantly, human language production is driven (at least in part) by wanting to *communicate* certain things. We're not simply choosing the most likely word given the words we've already said. That's *part* of what we're doing, to be sure, but most models of language production assume that we have some "message" in mind that we want to convey. (It's an open question whether language statistics can "override" this message.)