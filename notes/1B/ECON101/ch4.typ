#import "../../../preamble.typ": *
#let Title = "CH 4 - Competition"
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


Gains from trade fro specialization, we will get the country with absolute advantage to produce just enough $y$ that the post-specialization production equation pre-specialization.

Then trade.


#align(center)[#image("../../../pictures/econ1_ch4_2.png", width: 4cm)]
Comparative advantage is all needed for gains from trade
- So long as PPFs(green dotted line) are not parallel, there is gains from trade.

- Absolute advantage limits how much we can specialize

#info[*Competitive Model*\

- So called be cause we use it to study different market structures: $"Competitive" <-> "Non-competitive"$

- Fundamentally, all of our model have been following the same idea:

 - $"Marginal Benefit" > "Marginal Cost"$

- Firms & Companies exist to make profit:
    - $"Revenue" > "Cost"$

- Marginal Revenue $~$ Price $P$

 - Price depends on market structures (i.e. Number of firms, Easy with which firms can enter the market, Easy with which products can be differentiable, Market information, Friction, etc.)

- Marginal Cost($M C$)

    - Cost function $C(q) = A q^2 + B q + C$

    - Fixed cost: does not scale with production

    - Variable cost: scale with production

    - $C(q)$ change if $q$ goes up by 1.

- Optimal point: $P = M C$

- Average cost: $frac(C(q), q)$

Graph (Assume Perfect Competition)

#align(center)[#image("../../../pictures/econ1_ch4_3.png", width: 6cm)]

Blue: price\
Orange: marginal cost\
Black: average cost
]

Example:

$C(q) = 700+12q+5q^2 $

Marginal Cost: $C'(q) = 12+10q$

Let $p = 250$, $M R = M C ==> p = M C ==> 250 = 12+10q ==> q = 23.8$


1. Long-run Competitive ($P > A C$)
    $pi ("Profit") = "Revenue" - "Cost" \

    = p q - (700+12q+5q^2) ==> 250(23.8) - (700+12(23.8)+5(23.8)^2) = 2132.2$

    $A C(q^*) = C(q^*)/q^* = 160.41$ 

    $(250-160.41) * 23.8 = 2132.2$ 

    #align(center)[#image("../../../pictures/econ1_ch4_4.png", width: 6cm)]
    Orange: profit \
    Green: Cost

    $M C$ intersects $A C$ at $A C$'s lowest point

    Note that the minimum of average cost is meaningless

2. Short-run Competitive ($A C > P > A V C$)
    Observe that the cost of producing nothing is higher than the cost of producing something.

    So $C(0) = 700, pi(0) = 0-700 = -700$

    But then, producing at the optimal is $pi(q*) = -300 > -700$, losing less if producing at the optimal then producing nothing.

    Theefore, some existing companies, producing while lossing money can benefit the companies from lossing less.

    So, Average Variable Cost: $(V C)/q = 12+5q$

        #align(center)[#image("../../../pictures/econ1_ch4_5.png", width: 6cm)]

\
\
\
3. Shutdown ($A C > A V C > P$)
    #align(center)[#image("../../../pictures/econ1_ch4_6.png", width: 6cm)]


Long-run means that we can change anything

Short-run means we can only change variable cost

The firm always produces at $p = M C$


#info[*Monopolistic Production*\

- One producer/one opponent producer

- Non-competitive market

- They can set price with a limit of the demand side of the market.
    - $"Marginal Benefit" > "Marginal Cost"$

    - $"Marginal Revenue" > "Marginal Cost"$

    - $"Marginal Revenue" = p - Delta p(q-1)$, is also the downward rotation of demand

Model:
\

#align(center)[#image("../../../pictures/econ1_ch4_7.png", width: 6cm)]


Green: Demand\
Blue: Marginal Revenue\
Purple: Marginal Cost\
Optimum at black dot

]

Monopoly: use Demand = MR

Competitive: use p = MR