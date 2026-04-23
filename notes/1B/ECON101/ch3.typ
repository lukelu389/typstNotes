#import "../../../preamble.typ": *
#let Title = "CH 3 - Preference"
#import "@preview/diverential:0.2.0": *
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Consumer Preference Model

#info[*Consumer Preference Model*\

- Model of what and how mohch consumers purchase

- Model of a choice between alternative

Effect on the model

- Price

- Preference
 - Weak axiom of reveald preference: if choosing between $A$, $B$, if one of the two becomes unavailable. The remaining choice must contain $A$ to remain a rational choice.

- Income/Budget (next page)


]

#info[*Budget*\

1. Equation
  - $M =$ income
  - $p_i =$ price for product $i$
  - $q_i =$ quantity for product $i$

  $ M =  p_1 q_1+p_2 q_2 $

  $-->$ $M$ is the amount of money allocated for this specific decision

  Note that the goal is to gain the most amount of happiness from the given budget.
  
  Example allocation: 
  - Salary
   - Spending
     - Shopping 
   - Saving

2. Graph

  #align(center)[#image("../../../pictures/sem1/econ1_ch3_1.png", width:8cm)]

  Area below the curve is the Inefficient distribution of budget.

  On the line suggests the optimial distribution of budget.

  The slope $(p_2) / p_1$: good 2 costs $frac(p_2, p_1)$ good 1 $==>$ opportunity costs

  Orange: original line\
  Green: $p_2$ decreases\
  Red: $p_2$ increases\
  Black: $M$ increases
]

#info[*Preferences*\
Preference often/always intangible and non-numeric.

Force intangible to have inherent structure like numbers

"Happiness" is equivalent "Utility"

An assumption is that of diminishing marginal utility, but still positive.

Marginal rate of Substitution(MRS) : The rate of which the consumer would trade between $q_1, q_2$

Due to the continuously diminishing MRS (continuously diminishing rate of trade), the curve will not be linear like the budget(constant rate of trade).


*Graph*

  #align(center)[#image("../../../pictures/sem1/econ1_ch3_2.png", width:6cm)]

- Every point above the curve is better, more utility: (i.e. yellow area)

- Every point below the curve is worse, less utility: (i.e. grey area)

- Every point on the curve is equivalent to marginal utility

- The green curve is also called *Indifference Curve*
]

#info[*Utility length*\

Length of opportunity: the area enclosed by the utility curve and the budget curve. (i.e. red area)

There always exists another parallel utility curve that is better than the previous one. 

 #align(center)[#image("../../../pictures/sem1/econ1_ch3_3.png", width:6cm)]

]

#info[*Relationships between the curves*

The budget line becomes a tangent line of the utility curve at exactly the optimal point.

MRS = slope of the budget curve = Ratio of prices = $frac(M_u_1, M_u_2) = frac(p_1, p_2) ==> frac(M_u_1, p_1)= frac(M_u_2, p_2)$

The marginial utility per dollar is equivalent at the optimal point

If $frac(M_u_1, p_1) > frac(M_u_2, p_2)$, then item 1 brings more utility.

  - Buy item 1, thus $M_u_1$ decreases 

  - To afford item 1, sell item 2, and $M_u_2$ increases

]


Since MRS is diminishing, thus explaining the price of luxury goods are hight as essentials have lower MRS as they are diminishing since we have obtained enough of it.

Example:

Given

$P_1 = 10$, $P_2=5$, $M = 40$

#table(
    columns: 3, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [Item 1], [$M_u$], [$M_u/P$], [1], [40], [4], [2], [20], [2], [3], [10], [1], [4], [5], [0.5])

#table(
    columns: 3, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [Item 2], [$M_u$], [$M_u/P$], [1], [20], [4], [2], [15], [3], [3], [10], [2], [4], [5], [1])

#table(
    columns: 4,
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [Table], [Item], [Cost], [Gain], [1], [1], [10], [40], [2], [2], [5], [20], [3], [2], [5], [15], [4], [1], [10], [20], [5], [2], [5], [10], [6], [2], [5], [5], [Total], [], [\$40], [110 Utility])

\
\
\  
What happens if the price of Item 1 decreases by half: $P_1 = 5$

Red: initial curve\
Green: new curve\
Purple: initial utility curve\
Black: new utility curve

#align(center)[#image("../../../pictures/sem1/econ1_ch3_4.png", width:8cm)]

What if the income rises

Red: initial curve\
Green: new curve\
Purple: initial utility curve\
Black: new utility curve

#align(center)[#image("../../../pictures/sem1/econ1_ch3_5.png", width:6cm)]


How could depict inferior goods (i.e. instant ramen)

Red: initial curve\
Green: new curve\
Purple: initial utility curve\
Black: new utility curve
Orange: prediction on possible new curve
#align(center)[#image("../../../pictures/sem1/econ1_ch3_6.png", width:6cm)]


What if curves lean but at constant rate?

For one extreme, the other extreme is the higher, that is the line passes through the intersection of the utility curve and budget line have slope $>1$


Red: initial curve\
Green: new curve\
Purple: initial utility curve\
Black: new utility curve
Orange: prediction on possible new curve
#align(center)[#image("../../../pictures/sem1/econ1_ch3_7.png", width:8cm)]

=== Fully closed utility curve - Perfect Complements

#align(center)[#image("../../../pictures/sem1/econ1_ch3_8.png", width:7cm)]

Can *never* be represented by a T-table


=== Perfect substitute

#align(center)[#image("../../../pictures/sem1/econ1_ch3_9.png", width:6cm)]

Purple: lens of opportunity

Consumer will buy Item 1

The goods still diminish im marginal utility because the perfect substitutes diminish each other by the same amounts.


#table(
    columns: 3, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [Item 1], [$M_u$], [$M_u/P$], [1], [10], [1], [2], [5], [0.5], [3], [2.5], [0.25])

$P_1 10$


#table(
    columns: 3, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [Item 2], [$M_u$], [$M_u/P$], [1], [5], [0.5], [2], [2.5], [0.25], [3], [1.25], [0.125])

$P_2 = 10$

For these 2 tables, they both represent normal goods. We can buy 2 item 1 before getting 1 item 2.


#info[*Price-Effect Decomposition*

When price changes

1. Ratio of prices change

  - This changes "bang-for-the-buck" \
  - Substitution Effect
   - If item 1 gets cheaper, item 1 consumed more item 2 consumed less


2. We become richer/poorer\
  - Change in purchasing power \
  - Income effect (Perfect compliments, purely income effect)
    - If item 1 gets cheaper, both items consumed more

]

$Q_1$ becomes half as expensive.

- Isolate the substitution effect by rotating the budget to the new slope. Keep it on the same utility curve

- Isolate the income effect by shifting the budget up to new correct location


\
\
\

Curvature controls the rate at which marginal untility diminishes

- This affects how consumers react to price changes(i.e. elasiticity)

By breaking the price change into 2 movements, we can isolate two effects.

1. Substitution effect: rotating without chaninging utility

2. Income effect: raise temporary boudget line up to trivial point


=== Possible Exam questions: 

*Trading vs Buying*

- Main difference is that with trading there is no price
 - What will buyer prefer: preference/given/trading, only marginal utility matters
 - What will buyer buy : purchases, price matters


Say we have two consumers with identical preferences
 
#table(
    columns: 2, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [Item 1], [$M_u$], [1], [40], [2], [20], [3], [10], [4], [5],  [5], [2])
\
\
\
 
#table(
    columns: 2, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [Item 2], [$M_u$], [1], [40], [2], [20], [3], [10], [4], [5],  [5], [2])

Consumer 1: 4 item 1, 0 item 2, Total Utility: 75

Consumer 2: 0 item 1, 3 item 2, Total Utility: 70

Market Utility: 145

Can these consumer become better off?

Yes, by trading

Consumer 1: 2 item 1, 2 item 2, Total Utility: 120

Consumer 2: 1 item 1, 2 item 2, Total Utility: 100

Market Utility : 220

How to find the trade price limits

- Look at what the consumer is losing and see how they need to be given in exchange to feel equal or better off

#align(center)[#image("../../../pictures/sem1/econ1_ch3_10.png", width:10cm)]

*Total Utility per Dollar*

$ "Total Utility" / "Total ollar Spent" $

Example:

Consumer buys a bundle (1, 3) at cost of \$10 for 110 total utility, then Total Utility per Dollar is 11
 \
 \
 \
 \
 \
 \
Salary
- Living
- Disposable income
 - Spend
  - Dinner with friends (11 Utility per Dollar)
   - Orange juice (1 juice)
   - Nacho (3 nachos)
  - Others (11 Utility per Dollar)
 - Save

Each decision, total utility per dollar is previous decision's marginal utility per dollar


== Exam Question Overview

Consumer preference model
  1. Budget: limit of optimization
    - $M$, total budget: $M$ changes effects and graphically

    - $P_1/P_2$, price ration, graphically and effects
    - Manipulate budget 

  2. Utility Curves

    - What is a utility curve

     - Utility surface

    - Objective preference
    - Rate of diminishing marginal utility (Openness vs Closeness)
     - Type of preference (substitute vs compliment)

     - Elasticity

     - Relation with Substitution effects and Income effects

    - inferior/Superior/Normal goods, graphically

    - Slope of MRS substitution

  3. Combine to solve the model

    - Lens of opportunity(getting rid of it to solve)

      - If utility is curved, tangency
       
       - $frac(M U_1, P_1) = frac(M U_2, P_2)$
      
      - T-table

        Facilitate trading
    - Find total Utility 
    
    - Price effects and Decomposition (substitution vs income)

Can you read the model given a graph 