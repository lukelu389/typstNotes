#import "../../../preamble.typ": *
#import "@preview/combo:0.1.0"
#show: conf


#let Title = "CH 1 — Introduction to Probability"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")


== 1.1 Definition of Probability



== 1.2 Mathematical Probability Model

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


== 1.3 Counting Rules

#info[*Counting Rules*

  *Addition rule*: if we can do job 1 in $p$ ways and job 2 in $q$ ways, then we can do job 1 *or* 2 in *$p+q$* ways.
  
  *Multiplication rule*: if we can do job 1 in $p$ ways and job 2 in $q$ ways, then we can do job 1 *and* 2 is *$p q$* ways

  *Sampling WITH replacement*: can select the same object multiple times. 
  
  - The sample space size is $n^k$

  *Sample WITHOUT replacement*: cannot select the same object multiple times. 

  *Permutation*: sample without replacement *with order*

   - The sample space size is $n^("("k")"): (n)(n-1)...(n-k+1) "or" frac(n!, (n-k)!)$

  *Combination*: ways of selecting $k$ objects from $n$ without replacement, and order does not matter

  - $frac(n^("("k")"), k!) = binom(n, k) = #v(0em)_n C_k$ 
  
  ]

\

Example:
1. Of the 36 outomes when two 6-sided dice are rolled, how many ways are there to have equal values on both dices or a total of 5? \

  ANS: 10

2. In Texas poker. Say you already have 6, 7, 9, 10. What of the probability of pulling 8? If not on turn, what about next two to obtain 8?

  ANS: $4/47, 4/46, 4/45, (4/47 times 43/46+ 43/47 times 4/46+ 4/47 times 3/46) $

3. IP address is 4 numbers between 0-255. How many potential IP exsits? Probability at least one is even? Probability of all numbers are different

  ANS: $256^4, 1-1/2^4, 246^("("4")") = 255/256 times 254/256 times 253/256$

4. Lotto 6/49. Each ticket has 6 numbers choosen fro 1-49. 
  - How many possible tickets are there?

    No repetition where order does not matter: $binom(49, 6) = 13983816$

  - Number of tickets that match 5 of 6 numnbers

    5/6 are winning numbers, and 1 number should be 1 of 43 non-winning numbers: $binom(6, 5) binom(43, 1)$
  
5. A lock as a 4-digit code
  - How many have all different numbers?
    
    $10^("("4")") = 10dot 9 dot 8 dot 7 = 5040$

  - How many odd numbers over 9000?
    
    $1 dot 10 dot 10 dot 5 = 500$
    
  - Both at the same time?

    $1 dot 8 dot 7 dot 4 = 224$

  - Strictly decreasing order?
    
    $binom(10, 4) dot 1 = 210$
  - How many include 3 different digits?
    
    $10 dot 9 dot 8 dot binom(4, 2) = 4320$, 10 choices for pairs, $9 dot 8$ for remaining digits choice. There are $binom(4, 2)$ ways of positioning those pairs as they do not have to be consective

    or $binom(10, 3) times binom(3, 1) times binom(4, 2) times 2$, pick 3 out of 10 numbers, 3 different numbers, $binom(4, 2)$ ways of positioning pairs, 2 ways of ordering the singles

    or $10 times binom(9, 2) times frac(4!, 2!1!1!)$


#defn[
*Pascal Triangle*:
  - $binom(n, k) = binom(n-1, k-1) + binom(n-1, k)$

  - Symmetrical, $binom(n, k) = binom(n, n-k)$
  - Start and end with 1, $binom(n, 0) = binom(n, n) = 1$
  - Rows' sum is in form $2^n$, $sum_(k=0)^n binom(n, k) = 2^k$
  - $n$-th row is the coefficient of each term of expanded form $(a+b)^n$
]

Ways of positioning "STATISTICS"
  We have $binom(10, 3)$ ways of putting "S"

  We have then $binom(7, 3)$ ways of putting "T"

  We have $binom(4, 2)$ ways of putting "I"

  We have $binom(2, 1)$ ways of putting "A"

  We have $binom(1, 1)$ way of putting "C"

  $binom(10, 3) times binom(7, 3) times binom(4, 2) times binom(2, 1) = frac(10!, 3! 7!) times frac(7!, 3! 4!) times frac(4!, 2!2!) times frac(2!, 1! 1!) times frac(1!, 1! 0!) = frac(10!, 3!3!2!1!1!)$
  
#defn[*Multinomial coefficient* \
If we arrange $n$ objects of $k$ types where there are $n_1$ of type 1, ..., $n_k$ of type $k$. There are $ frac(n!, n_1 ! ... n_k! ) $ ways of result could look like. This quantity is the multinomial coefficient.
]
  
  




