#import "../../../preamble.typ": *
#let Title = "CH 4 - "
#import "@preview/diverential:0.2.0": *
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

Review - Gain from trade:

- Consumers with endownments can become happier by trading $->$ Expands total market utility

- An observation was the tendency for consumers with lower endownments to gain more from trading

- Relatives prices emerge

Example:

Consider a world with two countries $A$ and $B$. Both countries produce item $x$ and item $y$. 

$A$ can produce at most 60 item $x$ or 120 item $y$, or any linear combinaiton of the two
\

$B$ can produce at most 30 item $x$ or 90 item $y$, or any linear combination of the two.

Both countries spend half their time producing item $x$ and the other on item $y$

Country $A$ produces 30 item $x$ and 60 item $y$

Country $B$ produces 15 item $x$ and 45 item $y$

Total: 45 item $x$, 105 item $y$

#info[*Definition*\

*Comparative Advantage* : Having a lower opportunity cost than everyone else.

]

#align(center)[#image("../../../pictures/econ1_ch4_1.png", width: 6cm)]
Country $A$ costs $1/2$ item $x$ to produce item $y$; Country $B$ costs $1/3$ item $x$ to produce item $y$

Let $A$ only produce item $x$ and $B$ only produce item $y$

Total: $60$ item $x$, $90$ item $y$ then they trade

$A$ will sell $x$ for 2 $y$ or higher

$B$ will sell 3 $y$ for 1 $y$

Price range $[2, 3]$ $y$ per $x$

Pick a feasible price ratio to demonstrate: $2.5 : 1$ $y$ per $x$

#table(
    columns: 2, 
    align: left,
    stroke: 0.5pt,
    inset: 6pt,
[$A$],

[#table(
    columns: 7, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,

    [], [0], [1], [2], [3], [...], [24],
    [$x$],[60], [59], [58], [57], [...], [36],
    
    [$y$], [0], [2.5], [5], [7.5], [...], [60])],

[$B$],

[#table(
    columns: 7, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [], [0], [1], [2], [3], [...], [24],
    [$x$], [0], [1], [2], [3], [...], [24], 
    [$y$], [90], [87.5], [85], [82.5], [...], [30] )]
)

Notice that the total production of $x$ increases and $y$ decreases due to *Absolute Advantage* that $A$ has.

Let $A$ produce 15 more $y$, 7.5 of $x$ is lost.

Total production : 52.5 $x$ and 105 $y$ on market

#table(
    columns: 2, 
    align: left,
    stroke: 0.5pt,
    inset: 6pt,
[$A$],

[#table(
    columns: 7, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [], [0], [1], [2], [3], [...], [18],
    [$x$],[52.5], [51.5], [50.5], [49.5], [...], [34.5],
     
    [$y$], [15], [17.5], [20], [22.5], [...], [60])],

[$B$],

[#table(
    columns: 7, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [], [0], [1], [2], [3], [...], [18],
    [$x$], [0], [1], [2], [3], [...], [18], 
    [$y$], [90], [87.5], [85], [82.5], [...], [45] )]
)

All countries get an increase in $x$

