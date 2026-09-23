#import "../../../preamble.typ": *
#import "@preview/combo:0.1.0"
#show: conf


#let Title = "CH 2 - Probability Rules"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== 2.1 Basic Axioms and Laws

\
#defn[*Axioms of Probability* \ 

1. The probability of the sample space occurring is $P(S) = 1$

2. Each event of happing in the sample space is $0<= P(A) <= 1$

3. If $A_1, A_2, ...$ have no overlap, then $P(A_1 union A_2 union ...) = sum_(i) P(A_i)$

]


*Note*:

1. A "or" B means $A union B$

2. A "and" B means $A inter B$

3. "Not in" A means the compliment $overline(A)$

#defn[*De Morgan's Law*\

1. $overline(A union B) = overline(A) inter overline(B)$

2. $overline(A inter B) = overline(A) union overline(B)$
]

== 2.2 Probability Rules
\

1. If $A subset.eq B$ then $P(A) <= P(B)$
  
2. $P(A union B) = P(A) + P(B) - P(A inter B)$

3. $P(A union B union C) = P(A union B) +P(C) - P(B inter C) - P(A inter C) + P(A inter B inter C)$

4. In general, $P(A_1 union ... union A_k) = sum_i^k P(A_i) - sum(sum_(j!=i) P(A_i A_j)) + sum(sum(sum_(i!=j!=k) P(A_i A_j A_k))) + ... - ...$

#proof[
1. $B = (B inter A) union (B inter overline(A))$

  $P(B) = P(B inter A) + P(B inter overline(A)) = P(A) +W, space W > 0 ==> P(B) > P(A)$
]


#defn[*Mutual Exclusive* \ 

Event $A$ and $B$ are *mutually exclusive* if $A inter B = emptyset$. Non-overlapping, disjoint means the same.

If $A_1, ..., A_k$ are mutually exclusive, $P(A_1 union ... union A_k) = sum_(i)^k P(A_i)$
]


Examples:

Roll two fair 12-sided dice. What is the probability at least one of them is larger than 7?

  $1-7/12 dot 7/12 = 95/144$ or $5/12 dot 7/12 dot 2 + (5/12)^2 = 95/144$

\
== 2.3 Independent Events
 
#defn[*Independent Events*

Two events $A$ and $B$ are independent if and only if $ P(A B) = P(A)P(B) $


\
If we can directly compute $P(A), P(B), P(A B)$, we can determine wheteher or not the events are independent.

For multiple events, $A_1, A_2, ..., A_k$, we say they are independent if and only if 
$ P(A_i A_j) &= P(A_i) P(A_j) \

P(A_i A_j A_k) &= P(A_i) P(A_j) P(A_k) \

&...
$
] 

Example:

1. Roll 2 fair 6-sided dice. Let $A = $first die shows 3, $B =$ sum of dice is 7
  
  $P(A) = 1/6, P(B) = 1/6$ 

  $P(A B) = 1/6 dot 1/6 = 1/36$

2. What about sum is 8

  Let $C= $total on 2 dice is 8

  $P(C) = 5/36$

  $P(A inter C) = 1/36 != 1/6 5/36$. Thus $C$ and $A$ are not independent


*Note*: If $A$ and $B$ are linearly independent, so $overline(A) and B, A and overline(B), overline(A) and overline(B)$ are also linearly independent.

*Summary*:
#align(center)[
  #table(
    columns: 4, 
      align: center,
      stroke: 0.5pt,
      inset: 6pt,
      [], [Mutually Exclusive], [Indepedent], [Both],
      [Words], [No overlap], [No relation], [At least one event is impossible],
      [Math], [$A inter B = emptyset$], [$P(A B) = P(A)P(B)$],[$P(A) = 0 or P(B) = 0$]
      )
]