---
layout: post
mathjax: true
title:  "Awesome Data Visualization"
date:   2017-10-10 12:07:25 +0000
categories: data
---

```python
import spacy
from spacy import displacy
```


```python
nlp = spacy.load('en')
```


```python
doc = nlp("the man pushed the book off the big table")
```


```python
displacy.render(doc, style='dep')
```


<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xml:lang="en" id="2ccb247c06924766bc02476fbc3e6f57-0" class="displacy" width="1625" height="399.5" direction="ltr" style="max-width: none; height: 399.5px; color: #000000; background: #ffffff; font-family: Arial; direction: ltr">
<text class="displacy-token" fill="currentColor" text-anchor="middle" y="309.5">
    <tspan class="displacy-word" fill="currentColor" x="50">the</tspan>
    <tspan class="displacy-tag" dy="2em" fill="currentColor" x="50">DET</tspan>
</text>

<text class="displacy-token" fill="currentColor" text-anchor="middle" y="309.5">
    <tspan class="displacy-word" fill="currentColor" x="225">man</tspan>
    <tspan class="displacy-tag" dy="2em" fill="currentColor" x="225">NOUN</tspan>
</text>

<text class="displacy-token" fill="currentColor" text-anchor="middle" y="309.5">
    <tspan class="displacy-word" fill="currentColor" x="400">pushed</tspan>
    <tspan class="displacy-tag" dy="2em" fill="currentColor" x="400">VERB</tspan>
</text>

<text class="displacy-token" fill="currentColor" text-anchor="middle" y="309.5">
    <tspan class="displacy-word" fill="currentColor" x="575">the</tspan>
    <tspan class="displacy-tag" dy="2em" fill="currentColor" x="575">DET</tspan>
</text>

<text class="displacy-token" fill="currentColor" text-anchor="middle" y="309.5">
    <tspan class="displacy-word" fill="currentColor" x="750">book</tspan>
    <tspan class="displacy-tag" dy="2em" fill="currentColor" x="750">NOUN</tspan>
</text>

<text class="displacy-token" fill="currentColor" text-anchor="middle" y="309.5">
    <tspan class="displacy-word" fill="currentColor" x="925">off</tspan>
    <tspan class="displacy-tag" dy="2em" fill="currentColor" x="925">ADP</tspan>
</text>

<text class="displacy-token" fill="currentColor" text-anchor="middle" y="309.5">
    <tspan class="displacy-word" fill="currentColor" x="1100">the</tspan>
    <tspan class="displacy-tag" dy="2em" fill="currentColor" x="1100">DET</tspan>
</text>

<text class="displacy-token" fill="currentColor" text-anchor="middle" y="309.5">
    <tspan class="displacy-word" fill="currentColor" x="1275">big</tspan>
    <tspan class="displacy-tag" dy="2em" fill="currentColor" x="1275">ADJ</tspan>
</text>

<text class="displacy-token" fill="currentColor" text-anchor="middle" y="309.5">
    <tspan class="displacy-word" fill="currentColor" x="1450">table</tspan>
    <tspan class="displacy-tag" dy="2em" fill="currentColor" x="1450">NOUN</tspan>
</text>

<g class="displacy-arrow">
    <path class="displacy-arc" id="arrow-2ccb247c06924766bc02476fbc3e6f57-0-0" stroke-width="2px" d="M70,264.5 C70,177.0 215.0,177.0 215.0,264.5" fill="none" stroke="currentColor"/>
    <text dy="1.25em" style="font-size: 0.8em; letter-spacing: 1px">
        <textPath xlink:href="#arrow-2ccb247c06924766bc02476fbc3e6f57-0-0" class="displacy-label" startOffset="50%" side="left" fill="currentColor" text-anchor="middle">det</textPath>
    </text>
    <path class="displacy-arrowhead" d="M70,266.5 L62,254.5 78,254.5" fill="currentColor"/>
</g>

<g class="displacy-arrow">
    <path class="displacy-arc" id="arrow-2ccb247c06924766bc02476fbc3e6f57-0-1" stroke-width="2px" d="M245,264.5 C245,177.0 390.0,177.0 390.0,264.5" fill="none" stroke="currentColor"/>
    <text dy="1.25em" style="font-size: 0.8em; letter-spacing: 1px">
        <textPath xlink:href="#arrow-2ccb247c06924766bc02476fbc3e6f57-0-1" class="displacy-label" startOffset="50%" side="left" fill="currentColor" text-anchor="middle">nsubj</textPath>
    </text>
    <path class="displacy-arrowhead" d="M245,266.5 L237,254.5 253,254.5" fill="currentColor"/>
</g>

<g class="displacy-arrow">
    <path class="displacy-arc" id="arrow-2ccb247c06924766bc02476fbc3e6f57-0-2" stroke-width="2px" d="M595,264.5 C595,177.0 740.0,177.0 740.0,264.5" fill="none" stroke="currentColor"/>
    <text dy="1.25em" style="font-size: 0.8em; letter-spacing: 1px">
        <textPath xlink:href="#arrow-2ccb247c06924766bc02476fbc3e6f57-0-2" class="displacy-label" startOffset="50%" side="left" fill="currentColor" text-anchor="middle">det</textPath>
    </text>
    <path class="displacy-arrowhead" d="M595,266.5 L587,254.5 603,254.5" fill="currentColor"/>
</g>

<g class="displacy-arrow">
    <path class="displacy-arc" id="arrow-2ccb247c06924766bc02476fbc3e6f57-0-3" stroke-width="2px" d="M420,264.5 C420,89.5 745.0,89.5 745.0,264.5" fill="none" stroke="currentColor"/>
    <text dy="1.25em" style="font-size: 0.8em; letter-spacing: 1px">
        <textPath xlink:href="#arrow-2ccb247c06924766bc02476fbc3e6f57-0-3" class="displacy-label" startOffset="50%" side="left" fill="currentColor" text-anchor="middle">dobj</textPath>
    </text>
    <path class="displacy-arrowhead" d="M745.0,266.5 L753.0,254.5 737.0,254.5" fill="currentColor"/>
</g>

<g class="displacy-arrow">
    <path class="displacy-arc" id="arrow-2ccb247c06924766bc02476fbc3e6f57-0-4" stroke-width="2px" d="M420,264.5 C420,2.0 925.0,2.0 925.0,264.5" fill="none" stroke="currentColor"/>
    <text dy="1.25em" style="font-size: 0.8em; letter-spacing: 1px">
        <textPath xlink:href="#arrow-2ccb247c06924766bc02476fbc3e6f57-0-4" class="displacy-label" startOffset="50%" side="left" fill="currentColor" text-anchor="middle">prep</textPath>
    </text>
    <path class="displacy-arrowhead" d="M925.0,266.5 L933.0,254.5 917.0,254.5" fill="currentColor"/>
</g>

<g class="displacy-arrow">
    <path class="displacy-arc" id="arrow-2ccb247c06924766bc02476fbc3e6f57-0-5" stroke-width="2px" d="M1120,264.5 C1120,89.5 1445.0,89.5 1445.0,264.5" fill="none" stroke="currentColor"/>
    <text dy="1.25em" style="font-size: 0.8em; letter-spacing: 1px">
        <textPath xlink:href="#arrow-2ccb247c06924766bc02476fbc3e6f57-0-5" class="displacy-label" startOffset="50%" side="left" fill="currentColor" text-anchor="middle">det</textPath>
    </text>
    <path class="displacy-arrowhead" d="M1120,266.5 L1112,254.5 1128,254.5" fill="currentColor"/>
</g>

<g class="displacy-arrow">
    <path class="displacy-arc" id="arrow-2ccb247c06924766bc02476fbc3e6f57-0-6" stroke-width="2px" d="M1295,264.5 C1295,177.0 1440.0,177.0 1440.0,264.5" fill="none" stroke="currentColor"/>
    <text dy="1.25em" style="font-size: 0.8em; letter-spacing: 1px">
        <textPath xlink:href="#arrow-2ccb247c06924766bc02476fbc3e6f57-0-6" class="displacy-label" startOffset="50%" side="left" fill="currentColor" text-anchor="middle">amod</textPath>
    </text>
    <path class="displacy-arrowhead" d="M1295,266.5 L1287,254.5 1303,254.5" fill="currentColor"/>
</g>

<g class="displacy-arrow">
    <path class="displacy-arc" id="arrow-2ccb247c06924766bc02476fbc3e6f57-0-7" stroke-width="2px" d="M945,264.5 C945,2.0 1450.0,2.0 1450.0,264.5" fill="none" stroke="currentColor"/>
    <text dy="1.25em" style="font-size: 0.8em; letter-spacing: 1px">
        <textPath xlink:href="#arrow-2ccb247c06924766bc02476fbc3e6f57-0-7" class="displacy-label" startOffset="50%" side="left" fill="currentColor" text-anchor="middle">pobj</textPath>
    </text>
    <path class="displacy-arrowhead" d="M1450.0,266.5 L1458.0,254.5 1442.0,254.5" fill="currentColor"/>
</g>
</svg>



```python
for i in doc:
    if i.pos_ == "ADP":
        print(i.right_edge)
        for k in i.children:
            print(k)
            print(k.left_edge)
```

    table
    table
    the



```python
tags = [i.pos_ for i in doc]
```


```python

```
