---
layout: post
title: Are Neutral Models Useful? [theory]
---

> Everything is made for the best purpose. Our noses were made to carry spectacles, so we have spectacles. Legs were clearly intended for breeches, and we wear them.
- Dr. Pangloss (Voltaire's *Candide*)

Many scientific questions begin with *why*. Take evolutionary biology: why do some biologigical traits persist while others disappear? Why is there so much biodiversity?

Similar questions can be asked of the products of *cultural* evolution, such as language. Why do human languages look the way that they do? Why does a lexicon have the words that it does, as opposed to some other set of words?

In both cases, a satisfying explanation might invoke the notion of **selection pressures**. In biology, for example, some traits confer fitness (i.e., helping an organism reproduce), while others hinder it (i.e., causing an organism to die before reproducing). And in language, some words or expressions might be easier to learn (or produce, remember, etc.) than others, and thus may be more likely to be propagated.

It's tempting, therefore, to attribute *any* observed "trait"––be it biological or linguistic––to some kind of positive selection pressure. After all, if a trait hasn't died out, shouldn't that mean it improves fitness? And if some trait *isn't* observed, shouldn't that mean it impairs fitness?

# Panglossian Paradigms

The line of reasoning described above is compelling, but we have to be careful with **teleological explanations**. 

One of the famous arguments against teleology in evolutionary explanations comes from [Gould & Lewontin (1979): The Spandrels of San Marcos and the Panglossian Paradigm](https://royalsocietypublishing.org/doi/10.1098/rspb.1979.0086). The paper makes a number of (often quite controversial) claims. But the most impactful was probably the argument that so-called "adaptationists" were overly prone to invoking *direct selection* as an explanation for particular biological traits, as opposed to asking how those traits might have emerged as a *byproduct* of other selection pressures. In doing so, they extended the architectural term [spandrel](https://en.wikipedia.org/wiki/Spandrel) and gave it a [biological meaning](https://en.wikipedia.org/wiki/Spandrel_(biology)). 

A "spandrel", in architecture, is the triangular space between the tops of two adjacent arches (or between an arch and a rectangular frame), which tends to be decorated with elaborate paintings or engravings. Given such elaborate design, Gould & Lewontin suggest that one is tempted to view it as the "starting point of any analysis, as the cause in some sense of the surrounding architecture"---even though such a view would clearly be false. Analogously, having observed a particular *biological trait* (*Trait X*) subserving some particular *function* (*Function X*), we are tempted to infer that: 1) the trait was directly selected for; and 2) the trait was directly selected *for that particular* function. 

But there are a couple problems with this inference.

## Exaptation

First, Trait X might have originally evolved to subserve a different function, e.g., *Function Y*, and it has now been co-opted or [exapted](https://en.wikipedia.org/wiki/Exaptation) for Function X. There are plenty of examples of exaptation: bird feathers, for example, initially evolved for temperature regulation, and were later exapted (and then further *adapted*) for flight. In some of these cases, the interpretive constraint is pretty subtle: it's not necessarily that Trait X wasn't adapted *at all* for Function X---i.e., once bird feathers were exapted for flight, they underwent additional selection pressures for that function---it's just that the original locus of selection was for Function Y. 

Similarly, one might endorse Chomsky's view that the use of human language for communication represents exaptation, not adaptation (Hauser et al, 2013), but still believe that *subsequently*, human language has been shaped by communicative pressures. 

## Hitch-hiking traits

It's also possible that *Trait X* emerged because of a selection pressure for *Trait Y*---i.e., Trait X is the *byproduct* of selection for Trait Y. 

Though similar to exaptation, there's an important mechanistic difference. With exaptation, a trait that originally served one function is repurposed for another. With "hitch-hiking", a trait isn't directly selected at all, but is the natural consequence of selection for a different trait.

There are all sorts of subtleties here, and I want to be careful not to overstate the case for this kind of phenomenon. But broadly, it's important to remember that neither genes nor traits are atomic, independent entities: changing one gene can have cascading effects elsewhere in the genome; or, as is the case in [pleiotropy](https://en.wikipedia.org/wiki/Pleiotropy), can affect multiple traits simultaneously. 

## Fuzzy boundaries

What exactly is a "trait"? What are its definitional boundaries? How do we distinguish one trait for another?

The problem here is a philosophical (and linguistic) one. As Gould & Lewontin (1979) note, "organisms are integrated entities, not collections of discrete objects...If we regard the chin as a 'thing', rather than as a product of interaction between two growth fields (alveolar and mandibular), then we are led to an interpretation of its origin (recapitulatory) exactly opposite to the one now generally favored (neotenic)" (pg. 585). 

I'm certainly not an expert in chin morphology. But the more general point here is that what we call "traits" are often *human* abstractions---things we consistently notice and refer to. But naming something doesn't mean it's "real" in the sense that it was directly selected for; we might be noticing the wrong thing.

Again, the argument is not that identifying traits and their genetic underpinnings is a hopeless endeavor. It's just complicated, and we ought to have epistemic humility about our ability to carve the world at its joints.

## Random genetic drift

Finally, the prevalence of a particular trait in a population may increase (or decrease) due to [genetic drift](https://en.wikipedia.org/wiki/Genetic_drift). In this case, the trait need not confer a selective advantage. Rather, a particular [allele](https://en.wikipedia.org/wiki/Allele) may become [fixed](https://en.wikipedia.org/wiki/Fixation_(population_genetics)) simply as a byproduct of random sampling.

The Wikipedia page on genetic drift gives a great explanation using the analogy of [marbles in a jar](https://en.wikipedia.org/wiki/Genetic_drift#Analogy_with_marbles_in_a_jar). The basic setup is: imagine you have a jar with 10 red marbles and 10 blue marbles---these represent the 20 "organisms" in a population. Now, to create the next generation, randomly sample a marble from the original jar (let's say it's blue), and deposit a marble of that same color in a new jar (representing the newest generation). This new jar will have a mixture of red and blue marbles---but the precise breakdown will depend on the outcome of **random sampling** from that initial jar. For example, maybe we sampled 12 blue marbles and only 8 red marbles. Crucially, we then apply the same process to the second jar to create the third generation. Now, blue marbles are more prevalent than red ones (a 12:8 ratio), which means that they're more likely to be sampled (60% vs. 40%), which in turn means that the third generation might have an even higher proportion of blue marbles! With each successive generation, blue marbles become steadily more frequent, until they reach **fixation**: i.e., no more red marbles. This isn't because the blue marbles are more fit than the red marbles. If we'd instead sampled 12 red marbles and only 8 blue ones in the second generation, then we would've seen fixation of red marbles instead.

A crucial component of this mechanism is that each "sample" is dependent on the current population structure---and in turn, each successive generation can *change* that population structure. So originally, the two alleles were evenly distributed across the population; any variance in which was sampled more is purely a product of random chance. But that variance results in an *uneven* distribution of those alleles among successive generations.

In contrast, if every generation was the product of sampling from that *original* generation, the [Central Limit Theorem] states that we'd expect to see something like a normal distribution of **blue:red ratios**, centered around 10:10--with some number having more red marbles, and some having more blue marbles. But in the case of evolution, each generation is [dependent](https://en.wikipedia.org/wiki/Path_dependence) on the generation that came before.

The key takeaway here is that we can't simply take the prevalence of a particular trait as evidence that the trait was selected for. Even in the absence of the "hitch-hiking" or exaptation mechanisms I described above, alleles can reach fixation purely as a byproduct of random sampling. 

This is where **neutral theory** comes in.

# The Rise of Neutral Theory

The core idea of "neutral theory", as originally formulated (Kimura, 1979), is as follows:

> at the molecular level most evolutionary changes are caused by the "random drift" of selectively equivalent mutant genes. (pg. 98)




(Interesting consequence of genetic drift: it can create a population with particular genetic predispositions, that *changes* the fitness landscape. I.e., if a new mutation arises that might ordinarily be detrimental, it might be beneficial given the new population structure.)



(Note that neutral theory as originally proposed was about molecular evolution, not phenotypic---i.e., things that don't affect an organism's phenotype...)


NEXT:
- Reference Quanta article about neutral theory.
(https://www.quantamagazine.org/how-neutral-theory-altered-ideas-about-biodiversity-20201208/)


## Language and "Miller's Monkey"

## Cultural Evolution


# Challenges to Neutral Theory


From Leroi et al (2020):

> Regardless of the particulars, the argument is the same: here are some things (species, pots, baby names, citations) that show a particular kind of abundance distribu- tion (log-series, zero-sum multinomial, power-law); here is a simple neutral process (Wright–Fisher, Moran, Yule) that can produce such a distribution; therefore selection has no role in shaping the diversity of the population


From Piantadosi et al (2013):

> It is not informative to show that other assumptions could also lead to the observed behavior, if those other assumptions are demonstrably not at play (pg. 6)





**Things to mention**:

Begin with evolution and notions of fitness. 

Also discuss Gould/Lewontin paper and the notion of a "spandrel".  
- And emphasize that simply calling something a "spandrel" isn't an explanation either: no free lunch, we don't just get to say "it's random" as an explanation.

Move into higher-level question of the **goal** of our explanations. Use example of explaining the emergence of a particular trait.
- If a hypothesis is that teh trait emerged b/c it improved fitness in some particular way, one way to test that hypothesis is to ask, idneed, whether the trait improves fitness.
- Yet this test of the hypothesis only acts as a kind of proof of concept: i.e., it does, in fact, increase fitness. The test *does not* rule out alternative explanations.
- Similarly, you might say that fitness should be conferred by a particular trait, and hten look for that trait. 
- Yet that test as well is only a proof of concept: it says that the trait exists, but not that it exists *because* it was selected for to increase fitness or serve a particular function.
- This is precisely why we want some kind of **baseline**, which acts about the probability of some trait emerging *in the absence* of a selection pressure. 

Challenges to "neutral" theory:
1) often lacks precise or plausible mechanism (reference stuff on baby names, other stuff Tyler Marghetis sent, also the Piantadosi reply to the Zipf paper), i.e., just b/c it explains the data, doesn't mean it's a better explanation
---[Response]: This is totally true. But it's also true of any hypothesis!
---- Thus, what this argument boils down to is an argument about the prior probability of a hypothesis or theory. Where the claim is that neutral theories simply aren't plausible. 
2) No theory is truly "neutral"
--- [Response]: This is true, and I think "neutral" might imply the wrong thing. But it's "neutral" with respect to the posited selection pressure, critically. 



# References

Alonso, D., Etienne, R. S., & McKane, A. J. (2006). The merits of neutral theory. Trends in ecology & evolution, 21(8), 451-457.


Caplan, S., Kodner, J., & Yang, C. (2019). Miller ’ s Monkey Updated : Communicative Efficiency and the Statistics of Words in Natural Language. Cognition, 1–19.

Gould, S. J., & Lewontin, R. C. (1979). The spandrels of San Marco and the Panglossian paradigm: a critique of the adaptationist programme. Proceedings of the Royal Society of London - Biological Sciences, 205(1161), 581–598. https://doi.org/10.1098/rspb.1979.0086

Hauser, Marc; Chomsky, Noam; Fitch, W. T. (2013). The Faculty of Language: What Is It, Who Has It, and How Did It Evolve? Science, 298(02), 124﹣129. https://doi.org/10.1126/science.298.5598.1569

Kimura, M. (1979). The neutral theory of molecular evolution. Scientific American, 241(5), 98-129.


Trott, S., & Bergen, B. (2020). Why do human languages have homophones? Cognition, 205(August), 104449. https://doi.org/10.1016/j.cognition.2020.104449
---
Notes:

Thoughts on neutral theory.

On the one hand, very important to have a baseline.

On the other hand, sometimes the mechanisms in neutral theories aren't super clear or plausible a priori. 

Ultimately, there's "no such thing as neutrality". But that doesn't mean we should abandon neutral models. 