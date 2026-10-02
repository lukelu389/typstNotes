#import "../../../preamble.typ": *
#show: conf

#let Title = "CH 1 — Introductio to Macroeconomics"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== 1.1

#defn[*Recession* \

A recession is a broad decline in economic activity. Because households and firms
are connected through spending and income, a disruption in one part of the
economy can spread and become an aggregate decline.

- The *direct effect* falls on the households and firms initially affected by the disruption

- The *indirect effect* develops as their losses change the spending and income of others.
]

#defn[*Basic Terms*

*Exogenous*: outside or determined outside of the model

*Endogenous*: determined within the model

*Facllacy of composition* is the error of assuming that a conclusion that is true for one part must also be true for the system as a whole.

]

Across the economy, household spending becomes business revenue, while firms pay wages and other income to households

- Consumers sells their labour service to the firms and purchase goods.

- Firms produces a single good and pays wages to the consumers.

\
*Macroeconomic* outcomes result from individual decisions and the ways those decisions interact.

\

Example: 

Paradox of thrift(fallacy of composition)

If individual savings increase, it may not mean that total aggregate savings would incread.

If each consumer increase their savings rate will aggregate savings increase?

Maybe or maybe not.

Consider an economy with no government and no trade. All output is either consmed by households or bought by firms as investment, so $Y = C+I$. 

$Y = "production", C = "consumption", S = "savings", I = "investment"$

$Y = C+S = C+I ==> S = I ==> Y = C+I$
\
\
#table(
    columns: 3, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [], [Households save 10%], [Households save 20%],
    [Consumption rule], [$C=0.9 Y$], [$C = 0.8Y$], [Income Equation], [$Y = 0.9Y +100$], [$Y=0.8Y+100$], [Income], [1000], [500], [Consumption], [900], [400], [Saving], [100], [100]
    )

Here saving rate doubled, aggregate saving does not move, but income falls.

But the paradox of thrift may not always apply. Saving rate and aggregated saving rate both went up as disposable income becomes forced savings and precautionary savings.

\

== 1.2 Data Statistics
\
*Frequencies*: the rate at which data is observed: 
- High frequency: stock market, bond market, interest rates, exchange rate

- Medium frequency: CPI, unemployment, GDP(quarterly)

- Low frequency: Census, Annual releases

#defn[*Measures of the Economy* \

  1. *Real GDP*: total production adjusted for price changes 

  2. *Unemployment rate*: the share of the labour force without work and actively seeking it

  3. *CPI inflation*: change in the cost of a representative consumer basket

  4. *Policy interest rate*: the Bank of Canada's target overnight rate

  5. *Real GDP per capita*: real output per person
]


*Indicators in Business Cycle*

*Procyclical* variable moves in the same direction as real GDP. Employment is usually procyclica.

*Countercyclical* variable moves the oppposite direction as real GDP. Unemployment is usualy countercyclical.

*Acyclical* variable is not affected by real GDP

#defn[*Recession* \ 

*Peak*: the expansion ends and activity to fell

*Through*: the recession ends and activity begins to rise

*Real GDP*(in this context): actual real output/aggregate demand

*Potential Growth Rate*(potential growth rate): aggregate supply

*Recovery* : the early expansion before output regains its previous peak

*Expansion*: adtivity increases from the trough to peak

*Recession*: activity declines from the peak to the trough

]

#align(center)[ #image("../../../pictures/yr2/econ2ch1_1.png", width:10cm)] 

#warn[*Recession* \

Two consectuve quarters of falling real GDP are a widely used shorthand, not a complete definition of a recession

- Two small quarterly declines may not signal a broad contraction

- A deep collapse can begin and wnd within one quarter

- Buesiness cycle dating committees examine duration, depth and breath together
]

In Canada the C.D. Howe Institute Business Cycle Council was established in 2012. They are independent from the government.

*Leading Indicators*
- Peak/trough before GDP
- Stock prices, building permits, consumer confidence, and new orders

*Lagging Indicators*
- Peak/trough after GDP
- Unempoloyment rate, balance ot trade, corporate profits, and unit labour cost
\

$ "Leading Indicators change" --> "Real GDP changes" --> "Lagging Indicators respond" $

Example:

At date A, actual output is above potnetial but begins to fall. At date B, output reaches its trough while still below potential

- When does the recession begin and end?
  
  Recession starts at A and endes in B.

- Is the output gap negative throughout recession?

  No, from A to to the middle of A and B, it is postivive.

- Does the negative output gap necessarily end when recession ends?

  No, after B, it is called recovery.
\
A *model* is used for:
- Explanation: identify mechanisms that could account for observed economic outcomes

- Policy analysis: examine counterfactual questions such as what might happen under a different policy

- Forecasting: produce conditional statements about how the economy may evolve(exchange rate is extremely hard to forcast)


#defn[ *Model*

*General equilibrium*: the markets and agents represented in the model are analysed together(inderdependence), and their decisions must be mutually consistent. 

*Dynamic*: choices and conditions today affect outcomes in later periods.

*Positive Statement*: a *positive* statement makes a claim that can, in principle, be evaluated against evidence.

*Normative Statement*: concerns what ought to be done and depdends partly on values.

*Efficiency*: optimize the use of resources that are limited.

*Equity*: outcomes are fair.

*Opportunity cost*: best forgone alternative.
]