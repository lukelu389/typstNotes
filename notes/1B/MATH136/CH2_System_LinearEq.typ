#import "../../../preamble.typ": *
#show: conf
#let Title = "CH 2 — System of Linear Equations"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

#info[*Basic Terminology* \

1. An equation in $n$ variables $x_1, ..., x_n$ that can be written in the form $ a_1 x_1 + ... + a_n x_n = b $ where $a_1, ..., a_n, b$ are constants is called a *linear equation*. The constants are called the *coefficients*, $b$ is called the *constant term*

2. A set of $m$ linear quations in the same variables $x_1, ..., x_n$ is called a *system of $m$ linear equations in $n$ variables*

3. A vector $vec(s) = mat(s_1; ...; s_n)$ is called a *solution* of a system of $m$ linear equations in $n$ variabels if all $m$ equations are satisfied when we set $x_i = s_i space forall 1<=i<=n$. The set of all solutions of a system of linear equations is called the *solution set* of the system.

4. If a system of linear euations has a least one solution, then it is said to be *consistent*. Otherwise, *inconsistent*
]

#info[*Linear Solutions System*\
If the system of linear equations has two distinct solutions $vec(s) = mat(s_1; ...; s_n), vec(t) = mat(t_1; ...; t_n)$, then for every $c in RR, vec(s) + c(vec(s)-vec(t))$ is a solution, and furthermore these solutions are all distinct.
]

