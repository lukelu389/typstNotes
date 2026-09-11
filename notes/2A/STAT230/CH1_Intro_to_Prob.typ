#import "../../../preamble.typ": *
#show: conf

#let Title = "CH 1 — Introduction to Probability"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Mathematical Probability Model

#defn[*Baisc Definitions*\

An *experiment* is a repeated process with multiple *trials* where different *outcomes* can occur.

A *sample space $S$* is a *set* of all possible outcomes on one tiral of an experiment can be
  - Discrete($ZZ$, countable)
  - Continuous($RR, CC$, uncountable)

An *event* is a subset of the *sample space*(i.e $A subset.eq S$, it can be $emptyset$, $S$, or anyother) and can be 
- Simple event(contain 1 element)
- Compound event(contain $>1$ element)

\
The probability of a simple test $a_i$ is $P(a_i) in RR$, s.t. 
- $0<= P(a_i)<=1$

- $sum_(a_i in S) P(a_i) = 1$
We say the ${P(a_i), i = 1, 2, ...}$ is the *probability distribution* on $S$

If $S$ is finite and has equally likely outcomes, then $P(a_i)$

The probability of an event $A$ is $P(A) = sum_(a_i in A) P(a_i)$, the sum of the probabilities of the simple event that make up $A$

If $S$ is finite with equally likely outcomes, then $P(A) = (|A|)/(|S|)$ (consistent with classical definition)

The odds in favour of an event $A$ are defined as $frac(P(A), 1- P(A))$

The odds against in favour of an event are defined as $frac(1-P(A), P(A))$
]





