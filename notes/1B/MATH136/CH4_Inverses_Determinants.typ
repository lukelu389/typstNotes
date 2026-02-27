#import "../../../preamble.typ": *
#show: conf


#let Title = "CH 4 - Inverses and Determinants"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")


== Matrix Inverses

Recall that $I = mat(1, 0, ..., 0; 0, 1, ..., 0; ..., ..., ..., ...; 0, 0, ..., 1) = [vec(e)_1 space vec(e)_2 space ... space vec(e)_n]$

Also $A I = I A = A$ for all $m times n$ matrices A

#info[*Left and Right Inverses*\

Let $A$ be a $m times n$ matrix. 

If $B$ is a $n times m$ matrix s.t $A B = I_m$, then $B$ is called a *right inverse* of $A$. 

  $A$ has a right inverse if and only if $"rank" A = m$

If $C$ is a $n times m$ matrix s.t $C A = I_m$, then $C$ is called a *left inverse* of $A$. 

  $A$ has a left inverse if and only if $"rank" A = n$

]