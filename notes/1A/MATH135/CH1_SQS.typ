#import "../../../preamble.typ": meta, set-title

#let Title = "CH 1 — Sets, Quantifiers, and Statements"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Set Notation

$NN$ is the set of natural numbers, 0 excluded

$ZZ$ is the set of integers

$QQ$ is the set of all numbers of the form $frac(a, b)$ where $a in ZZ$ and $b in ZZ$ with $b != 0$

$RR$ is the set of all real numbers

Parity: whether an integer is even or odd


== Statements

A statement is a sentence that has a definite truth value (true or false)

Examples that are not statements:

- questions

- orders

- sentences without a definite truth value  
  This statement is false  
  Let $x$ be …  
  $x > 3$  
  $x = x$


== Negation

Suppose $A$ is a statement

The negation of $A$, written $not A$, asserts the opposite truth value to $A$

$not(not A)$ is equivalent to $A$


== Quantifiers

- Universal  
  $forall$ means for all

- Existential  
  $exists$ means there exists

Example: $exists x in RR, x > 3$ means there exists a real number $x$ with $x > 3$


== Negating quantified statements

Basic rules

- $not(forall x in D, P(x))$ is equivalent to $exists x in D, not P(x)$

- $not(exists x in D, P(x))$ is equivalent to $forall x in D, not P(x)$

Nested rules

- $not(forall x in X, exists y in Y, P(x,y))$  
  is equivalent to  
  $exists x in X, forall y in Y, not P(x,y)$

- $not(exists x in X, forall y in Y, P(x,y))$  
  is equivalent to  
  $forall x in X, exists y in Y, not P(x,y)$

Useful patterns

- $not(P and Q)$ is equivalent to $not P or not Q$

- $not(P or Q)$ is equivalent to $not P and not Q$

- $not(P => Q)$ is equivalent to $P and not Q$

Examples

- negate $forall x in RR, exists y in RR, x > y$  
  $exists x in RR, forall y in RR, x <= y$

- negate $exists y in RR, forall x in RR, x > y$  
  $forall y in RR, exists x in RR, x <= y$


== Terminology

Variable, (e.g. $x)$

A domain is any set, (e.g. $RR)$

An open sentence $P(x)$ is an expression involving a variable that is true or false once a value from the domain is specified, (e.g. $x > 3)$


*Examples*

The phrase $x + 1 > x$ is not a statement until a domain for $x$ is specified

The universally quantified sentence $forall x in RR, x + 1 > x$ is a statement and it is true


== Nested Quantifier

$forall x in RR, exists y in RR, x > y$ is true

Every real $x$ has a smaller real $y$ with $x > y$

Caution: $exists y in RR, forall x in RR, x > y$ is false

This would claim there is a smallest real number, which is impossible


== Two Nested Quantifiers

If the domain and quantifier are the same for both variables, abbreviate as

$forall x, y in RR, P(x, y)$

$exists x, y in RR, P(x, y)$


== Assignment 1

=== Q1

a) S

b) N

c) N

d) S


=== Q2

a) F

b) T

c) T

d) F


=== Q3

a) Solution

We know $not(forall x in X, P(x))$ is equivalent to $exists x in X, not P(x)$

We have $not(forall a in ZZ, (a - 5)^2 >= 0)$ is equivalent to $exists a in ZZ, (a - 5)^2 < 0$

Thus the answer is $exists a in ZZ, (a - 5)^2 < 0$


b) Solution

We know $not(exists x in X, forall y in Y, Q(x,y))$ is equivalent to $forall x in X, exists y in Y, not Q(x,y)$

We have $not(exists theta in RR, forall alpha in RR, sin(theta) = cos(alpha))$  
is equivalent to $forall theta in RR, exists alpha in RR, sin(theta) != cos(alpha)$

Thus the answer is $forall theta in RR, exists alpha in RR, sin(theta) != cos(alpha)$


=== Q4

a) $f(x) = sin(x)$ and $f(x) in [-1, 1]$

b) $forall r in RR, exists a, b in RR$ such that …


=== Q5

a) Statement is False

b) Statement is True

c) Statement is True

d) Open sentence depending on $w$

e) Statement is True


=== Q6

a) $forall x, y in S, P(x, y)$ with domain $QQ_{>0}$, where $P_4: x*y in S$

b) Let $T = {-1, 0, 1}$  
   $forall x in S, exists y in S, P(x, y)$ with domain $T$, where $P_3: sin( frac(pi y, 2) ) = |x|$

c) $exists x in S, forall y in S, P(x, y)$ with domain $RR$, where $P_2: y^2 >= x$

d) Let $U = { 3, frac(1,3) }$  
   $exists x, y in S$ with domain $U$, where $P_1(x, y): x = 27^y$


=== Q7

a) True

b) Free response  
Seeking help is a tip that resonates with me. Whenever I encounter a problem, I tend to try solving it alone, which can go poorly. In CEGEP I often sought help for tough questions. Professors and classmates were open to discussion and gave tips that led me to solutions. It reminds me there is a community around me with resources and kindness, and it is never too late to reach out
