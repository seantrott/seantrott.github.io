---
layout: post
title: Bias, variance, and the bed of Procrustes
---

Imagine you're a weary traveler making the pilgrimage from Athens to Eleusis. Along the way, you encounter a smith bearing the name [Procrustes](https://en.wikipedia.org/wiki/Procrustes) (literally "the stretcher [who hammers out the metal]"); you take this form-meaning correspondence to be auspicious. Procrustes, upon seeing your condition, invites you to stay the night in his home---he has a spare bed. 

There's just one condition: if you don't fit the bed exactly––if you're too long, or too short––he'll have to make you fit. That could mean cutting off your legs (if you're too long) or using a hammer to stretch you out (if you're too short). The important thing is that you fit the bed exactly. 

Suddenly, the name "Procrustes" acquires a distinct––and certainly less auspicious––shade of meaning.






Topics:

- introduce Greek myth about Procrustes  
- used as metaphor for perils of standardization, etc. 
- relate to notion of "model bias"  
- then introduce bias-variance trade-off

**Use the metaphor of the Procrustean bed for bias-variance trade-off**.

Bed of procrustes is like high bias in a model. Change data to fit assumption--i.e., linear regression is a *high-bias* model, which doesn't fit to variance in the data.

The opposite is like building a different bed to fit every possible inhabitant. You'll end up with a very different bed for each person, sensitive to the unique properties of each individual. This is good if your only goal is making custom furniture, of course, but it's not very practical, and in the case of statistics, it's analogous to overfitting to *variance* in the dataset.

Relating to Bayesian reasoning, it's also analogous to the distinction  between **priors** and **likelihood** (i.e., of the data).
