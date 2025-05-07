---
layout: page
title: Research Interests
permalink: /research/
---

My primary research uses Large Language Models (LLMs) as "model organisms" to test questions about human language and cognition. In turn, I use methods and theories from Cognitive Science to provide insights into how LLMs work: a discipline I call ["LLM-ology"](https://seantrott.substack.com/p/so-you-want-to-be-an-llm-ologist). The sections below contain examples of this research with links to a subset of selected papers (and data/code, where relevant). 

Beyond my work using LLMs as model organisms, my published research has also explored topics like whether (and how) human languages are shaped by a [pressure for efficient communication](https://www.sciencedirect.com/science/article/pii/S0010027722000828?casa_token=SE8z5SohH1kAAAAA:Z_QKLnzu6qYtmZARc-G8QGTIeC0zQjmdhe0d_kNjYCNED_mG-RZuWd8VSQsQRbTCj0kT2a5VtQ), the role of [prosodic cues in pragmatic disambiguation](https://journals.sagepub.com/eprint/8UANYNMIMJRECBGSIFF7/full), whether mentalizing plays a role in understanding [indirect requests](https://www.tandfonline.com/doi/abs/10.1080/0163853X.2020.1822709?casa_token=KKdkcD5G1gYAAAAA:RNX7fbqe5e4Xy4f_YaLjNw0GLnKp7rwDy5oy2EU9i7T7jIk9MEI-3zm4PgS1IlABbGJmbedO5P6I), whether an appreciation of ["construal" could help improve NLP models](https://aclanthology.org/2020.acl-main.462/), and [more](https://seantrott.github.io/cv/).


## Ambiguity as a window into lexical representations

The prevalence of lexical ambiguity raises the question of how human minds (and LLMs) *process* and *represent* the meanings of ambiguous words.

Traditionally, words and their meanings as conceived as discrete entries in a mental dictionary. But meaning is often dynamically modulated in different contexts. I've been using LLMs to explore an alternative account, in which word meanings are viewed as attractors in a continuous state-space, and then asking whether there is evidence for category boundaries atop this continuous space. 

Selected papers:

- Rivière, P. D., Beatty-Martínez, A. L., & **Trott, S.** (2025). Bidirectional Transformer Representations of (Spanish) Ambiguous Words in Context: A New Lexical Resource and Empirical Analysis. NAACL 2025. [[Link to paper]](https://aclanthology.org/2025.naacl-long.422/)[[Link to GitHub code]](https://github.com/seantrott/spanish_norms)

- **Trott, S.**, & Bergen, B. (2023). Word meaning is both categorical and continuous. Psychological Review. [[Link]](https://psycnet.apa.org/record/2023-51926-001)

- DeLong, K. A., **Trott, S.**, & Kutas, M. (2022). Offline dominance and zeugmatic similarity normings of variably ambiguous words assessed against a neural language model (BERT). Behavior Research Methods, 1-21.

- **Trott, S.**, Bergen, B. (2022). Contextualized Sensorimotor Norms: multi-dimensional measures of sensorimotor strength for ambiguous English words, in context. [[Link to arXiv]](https://arxiv.org/abs/2203.05648)[[Link to dataset]](https://github.com/seantrott/cs_norms)

- **Trott, S.**, & Bergen, B. (2021). RAW-C: Relatedness of Ambiguous Words, in Context (A New Lexical Resource for English). ACL-IJCNLP-2021. [[Link to paper]](https://aclanthology.org/2021.acl-long.550/) [[Link to dataset and code]](https://github.com/seantrott/raw-c) 


## The origins and mechanisms of Theory of Mind

Theory of Mind—the ability to model the mental states of others—is generally believed to be crucial for social cognition and language comprehension, but there is considerable debate about how it is acquired. One leading hypothesis is that it emerges in part from exposure to aspects of language. In recent work, I've used LLMs as "baselines" to understand whether and to what extent the ability to model the belief states of others could emerge in principle from exposure to language alone. 

Selected papers:

- **Trott, S.**, Jones, C., Chang, T., Michaelov, J., & Bergen, B. (2023). Do Large Language Models know what humans know?. *Cognitive Science* [[Link to paper]](https://onlinelibrary.wiley.com/doi/full/10.1111/cogs.13309)[[Link to pre-registration]](https://osf.io/agqwv)

- Jones, C. R., **Trott, S.**, & Bergen, B. (2024). Comparing Humans and Large Language Models on an Experimental Protocol Inventory for Theory of Mind Evaluation (EPITOME). Transactions of the Association for Computational Linguistics, 12, 803-819.[[Link to paper]](https://direct.mit.edu/tacl/article/doi/10.1162/tacl_a_00674/122721)


## Using LLM-generated data in the research pipeline

The availability and ease-of-use of LLMs has led to excitement about the prospect of using them as "participants", i.e., to augment or replace human participants. My research investigates the viability of this approach: when—if ever—is LLM-generated (or "synthetic") data appropriate to incorporate into the research pipeline? 

- **Trott, S.** (2024). Can large language models help augment English psycholinguistic datasets? *Behavior Research Methods, 1-19.* [[Link to paper]](https://link.springer.com/article/10.3758/s13428-024-02337-z)[[Link to data and code]](https://github.com/seantrott/llm_norms)

- **Trott, S.** (2024). Large Language Models and the Wisdom of Small Crowds. *Open Mind*, 8, 723-738. [[Link to paper]](https://direct.mit.edu/opmi/article/doi/10.1162/opmi_a_00144/121179)[[Link to data and ode]](https://github.com/seantrott/llm_clt/)


## Vision-language models and sensorimotor grounding

LLMs can be trained with additional input modalities, such as vision. Just as LLMs trained on text alone can be used as operationalizations of the distributional semantic hypothesis, these vision-language models (VLMs) can be used to systematically test theories about the necessity (or lack thereof) of sensorimotor grounding of semantic representations. 

- Jones, C., Bergen, B., & **Trott, S.** (2024). Do Multimodal Large Language Models and Humans Ground Language Similarly? Computational Linguistics, 1-25. [[Link to paper]](https://direct.mit.edu/coli/article/doi/10.1162/coli_a_00531/123786/Do-Multimodal-Large-Language-Models-and-Humans)[[Link to pre-registration]](https://osf.io/37pqv)  

- Jones, C. R., & **Trott, S.** (2024, May). Multimodal Language Models Show Evidence of Embodied Simulation. In Proceedings of the 2024 Joint International Conference on Computational Linguistics, Language Resources and Evaluation (LREC-COLING 2024) (pp. 11928-11933).[[Link to paper]](https://aclanthology.org/2024.lrec-main.1041/)  

- Vinaya, H., **Trott, S.**, Pecher, D., Zeelenberg, R., & Coulson, S. (2024). Context-dependent and Dynamic Effects of Distributional and Sensorimotor Distance Measures on EEG. In Proceedings of the Annual Meeting of the Cognitive Science Society (Vol. 46).[[Link to paper]](https://escholarship.org/uc/item/4hp6g01b)






