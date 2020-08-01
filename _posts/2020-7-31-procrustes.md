---
layout: post
title: Bias, variance, and the bed of Procrustes
---

Imagine you're a weary traveler making the pilgrimage from Athens to Eleusis. Along the way, 


Topics:

- introduce Greek myth about Procrustes  
- used as metaphor for perils of standardization, etc. 
- relate to notion of "model bias"  
- then introduce bias-variance trade-off

**Use the metaphor of the Procrustean bed for bias-variance trade-off**.

Bed of procrustes is like high bias in a model. Change data to fit assumption--i.e., linear regression is a *high-bias* model, which doesn't fit to variance in the data.

The opposite is like building a different bed to fit every possible inhabitant. You'll end up with a very different bed for each person, sensitive to the unique properties of each individual. This is good if your only goal is making custom furniture, of course, but it's not very practical, and in the case of statistics, it's analogous to overfitting to *variance* in the dataset.

Relating to Bayesian reasoning, it's also analogous to the distinction  between **priors** and **likelihood** (i.e., of the data).
