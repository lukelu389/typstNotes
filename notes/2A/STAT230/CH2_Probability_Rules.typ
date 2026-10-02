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
$B = (B inter A) union (B inter overline(A)) \

==>P(B) = P(B inter A) + P(B inter overline(A)) = P(A) +W, space W > 0 ==> P(B) > P(A)$
]
\
*Note*: $P(B) = P(A B)+P(overline(A) B)$
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
\
\


#defn[*Conditional Probability* \ 

The conditional probability, meaning the probability of $A "given" B$ denoted as $ P(A | B) = P(A B) / P(B), quad P(B) > 0 $

If $A$ and $B$ are indepedent events, 

$ P(A|B) = P(A B)/P(B) = frac(P(A) P(B), P(B)) = P(A) $

which can be interpreted as another definition of independence.
]


Example:

Roll 2 fair 6-sided dice.

$A = "first is "3, B = "total 7", C = "total 8"$

$P(A) = 1/6, P(C)= 5/36, P(A C) = 1/36 $

$P(A|C) = 1/36 / (5/36) = 1/5$

$C = {(2, 6), (3, 5), (4, 4), (5, 3), (6, 2)}$, only $(3, 5)$ satisfy $A$ out of 5 choices in the sample space, thus $1/5$

$P(C|A) = P(A C) / P(A) = 1/36 / (1/6) = 1/6$

$A = {(3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6)}$, only $(3, 5)$ satisfy $C$ out of 6 choices in the sample space, thus $1/6$

#tip[Dependence and Conditional Probability \
Dependence is always a two-way street.

$ P(A|B) > P(A) &<==> P(B|A) > P(B) \ 

P(A|B) = P(A) &<==> P(B|A) = P(B) \

P(A|B) < P(A) &<==> P(B|A) < P(B)
$
]

If $P(A|B) < P(A) ==> P(overline(A)|B) > P(overline(A))$
#defn[*Product Rule for Intersections* \ 

For any two events $P(A|B) = P(A B)/P(B), P(B|A) = P(A B)/P(A)$

so 
$ P(A B) = P(B) P(A|B) \ 
P(A B) = P(A) P(B|A)
$

For any 3 events

$ P(A B C) &= P(A) P(B|A) P(C|A B) \
 &= P(C) P(C|A) P(B|A C) \

 &= ...
 $
]

Examples:

1. Suppose each child has 50% chance of having red hair, independently. At least one of the kids has red hair, what is the probability of the other child has. 

  #table(
    columns: 3, 
      align: center,
      stroke: 0.5pt,
      inset: 6pt,
      [], [R], [N],
      [R], [0.25], [0.25],
      [N], [0.25], [0.25]
  )

  Given that at least one has red hair, then our sample space actually becomes {RN, RR, NR} and the probability becomes 1/3

#defn[*Law of Total Proabability* \ 

A partition is a collection of event $A$ where $A_i inter A_j = emptyset, forall i, j$. $A_1 union ... union A_k = S$

Suppose we have a partition $A_1, ..., A_k$ and any event $B$, then $ P(B) = sum_(i=1)^k P(B inter A_i ) = sum_(i=1)^k P(A_i)P(B|A_i)$
]
  
Example:

1. Suppose a blood test has 5% false positive rate and 1% false negative rate. And 2% of a populaiton has disease. What is the probability a random person is positive.

  Let $D$ be event person has disease and $T$ be event person is positive

  $P(D) = 0.02, P(T|overline(D)) = 0.05, P(overline(T)|D) = 0.01$

  $P(T) = P(T|D) P(D) + P(overline(D))P(T|overline(D)) = 0.02(1-0.01) + (1-0.02)(0.05) = 0.0688 $

2. Three AI are contributing to a project. 

  A contributes twice as many as B or C. 10% of A has error, 20% of B has error, 50% of C has error

  Let A, B, C be the event of A, B, C contribution respectively. Let E be error.

  $P(A) = 0.5, P(B)=0.25, P(C) = 0.25$

  $P(E|A) = 0.1, P(E|B) = 0.2, P(E|C) = 0.5$

  $P(E) = 0.5 dot 0.1 + 0.25 dot 0.2 + 0.25 dot 0.5 = 0.225$

We might often want to reveerse the direction of conditioning. For an example, the previous example, we want to know who wrote it which we an use *Bayes Law*


#defn[*Bayes' Law* \ 

$ P(A|B) = P(A B)/P(B) = (P(A) P(B|A)) / P(B) = frac(P(A) P(B|A), P(A)P(B|A) + P(overline(A))P(B|overline(A))) $

]

Example:

1. Continuation of previous example on disease testing, given a positive test, what probability the person has disease?

  $P(D|T) = frac(P(D)P(T|D), P(T)) = frac(0.02 dot 0.99, 0.0688) approx 0.2877$

2. Continuation of example on coding, 

  $P(A|E) = frac(P(A) P(E|A), P(E)) = frac(0.5 dot 0.1, 0.225) approx 0.222$

  $P(B|E) approx 0.222, P(C|E) approx 0.556$

  Notice $P(A|E) +P(B|E) +P(C|E) = 1$ as they are a partition.  

