#import "../../preamble.typ": *

#let Title = "CH 4 - Mathematical Induction"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

= Notations
\
 $ sum_(i = m)^n x_i = x_m^2+ x_(m+1) = x_(m+2) + ... + x_(n-1) + x_n $

 $ product_(i = m)^n x_i  = x_m dot x_(m+1) dot x_(m+2) dot ... dot x_(n-1) dot x_n $

 = Properties

Constant multiplication

$ sum_(i=m)^k c x_i = c dot sum_(i=m)^k x_i $

 Addition/Subtraction
 $ sum_(i=m)^k x_i plus.minus sum_(i=m)^k y_i = sum_(i=m)^k x_i plus.minus sum_(i=m)^k y_i $

 Index Shift

$ sum_(i=m)^k x_i = sum_(m plus.minus n)^(k plus.minus n) x_(i minus.plus n) 
$

Breaking Sum
$ sum_(i = m)^k x_i = sum_(i = m)^r x_i + sum_(i = r + 1)^k x_i $

\
== Recurrence Relation 

A sequence of values by giving one or more initial terms, together with an equation expressing each subsequent term in terms of earlier ones. (i.e. $s_1 = 1, s_n = s_(n-1) + n$ is the same as $sum_(i=1)^n i$)

\

= Proof by Induction
\
An *axiom* of a mathematical system is a statement that is assumed to be true. No proof is given. From axioms we derive proposition and theorems.
\
\
\
\
#info[*Axiom* \ 
  *Principle of Mathematical Induction* \
  Let $P(n)$ be an open sentence that dependes on $n in NN$ \
  If statements 1 and 2 are both true:
  1. $P(1)$
  2. $forall k in NN, "if" P(k), "then" P(k+1)$
  Then statement 3 is true:
  3. $forall n in NN, P(n)$
]

Examples 

1. Let $P(n)$ be the open sentence $sum_(i=1)^n i(i+1) = 1/3n(n+1)(n+2)$ \
Prove that $P(n)$ is true $forall n in NN$
#proof[
  We will use the Principle of Mathematical Induction \
  Base case: \
  When $n=1$ \
  $sum_(i=1)^n i(i+1) = sum_(i=1)^1 i(i+1) = 1(2)= 2$\
  $1/3n(n+1)(n+2) = 1/3(1)(2)(3) = 2$ \
  $therefore P(1)$ is true.
  
  Induction: \
  Inductive hypothesis:\
  Let $k in NN$. \
  Assume that $P(k)$ is true. \

  Then we have $sum_(i=1)^k i(i+1) = 1/3k(k+1)(k+2)$ \
  Now, \
  $ sum_(i=1)^(k+1) i(i+1) = sum_(i=1)^k i(i+1) + (k+1)((k+1)+1) quad ("by Breaking Sum Property") $ 
  $ quad = 1/3(k)(k+1)(k+1+1) + (k+1)(k+2) = 1/3 (k+1)(k+1+1)(k+1+2)$ \
  By indution we have shown that $P(n)$ is true $forall n in NN$
]
#align(right)[$square$]
2. Prove that $n! > 2^n, forall "positive integers" n>=4$.
#proof[
 We will use the Principle of Mathematical Induction \
 We are trying to prove the open sentence $P(n): n! >= 2^n "is true" forall n in ZZ "s.t." n>= 4$ \

  Base case: \
  When $n = 4$ \
  $ n! = 4! = 4 dot 3 dot 2 dot 1 = 24 $ \
  $ 2^n = 2^4 = 2 dot 2 dot 2 dot 2 = 16 $ \
  $"We have that" 24 > 16$ \
  $therefore P(4)$ is true.

Induction: \
Inductive hypothesis: \
$"Let" k in NN "and that" k > 4 "is true"$ \
$"Assume that" P(k) "is true" $ \
Then $ (k+1)! = (k+1)k! > (k+1)2^k quad quad ("By Inductive Hypothesis") $
$ quad quad > (1+1)2^k = 2 dot 2^k = 2^(k+1)  $
Thus, by induction, we have shown that $n! >= 2^n "is true" forall n in ZZ "s.t." n>= 4$
]

#align(right)[$square$]

3. Use induciton to prove that $6 divides (2n^3+3n^2+n) forall n in NN$

*Quiz 4 Cutoff*

= Proof by Strong Induction
#info[\
*Principle of Strong Induction* \
Let $P(n)$ be an open sentence that dependes on $n in NN$ \
  If statements 1 and 2 are both true:
  1. $P(1)$
  2. $forall k in NN, "if" P(1) and P(2) and ... and P(k), "then" P(k+1)$
  Then statement 3 is true:
  3. $forall n in NN, P(n)$
]

Example:

1. Consider the sequence defined recusively by $ x_1 = 4, x_2 = 68 "and" x_m = 2x_(m-1) +15x_(m-2) forall m >= 3 $

Prove that $x_n = 2(-3)^n + 10(5)^(n-1) forall n in NN$

#proof[
  We proceed by strong induction. \
  Base cases: \
  When $n = 1, x_1 = 4 "and" 2(-3)^1+10(5)^1 = -6+10 = 4$ \
  So the claim holds for $n = 1$ \
  When $n = 2, x_1 = 68 "and" 2(-3)^2+10(5)^2 = 18 + 50= 68$ \
  So the claim holds for $n = 2$ \

  Induction :\
  Assume the claim holds for $n = 1, n= 2, ... n = k "for some" k in NN "with" k >=2$ \

Assume $ x_k = 2(-3)^(k) + 10(5)^(k-2) $
$ x_(k-1) = 2(-3)^(k-1) + 10(5)^(k-2) $
$ x_(k-2) = 2(-3)^(k-2) + 10(5)^(k-2) $ 
Then $ x_(k+1) = 2x_k + 15x_(k-1) $
$ quad quad quad = 2(2(-3)^(k-1)+10(5)^(k-2)) + 15(2(-3)^(k-1)+10(5)^(k-2)) quad quad ("by I.H")$

$ quad quad quad = 4(-3)^k + 20(5)^(k-1) + 5 dot 3 dot 2 (-3)^(k-1) + 10 dot 5 dot 3 dot (5)^(k-2)$

$ quad quad quad = 4(-3)^k + 5 dot 4 dot 5^(k-1) - 5 dot 2 (-3)^k + 2 dot 3 dot 5^k $
$ = (-3)^k(4-10)+ 5^k(4+6) $
$ = 2(-3)^(k+1) + 10 5^k $
$therefore x_(k+1) = 2(-3)^(k+1) + 10 5^k "so the claim holds for" n = k+1$
$therefore "by strong induction the claim holds" forall n in NN$
]
#align(right)[$square$]
