#import "../../../preamble.typ": *
#import "@preview/combo:0.1.0"
#show: conf


#let Title = "CH 6 - Money and Inflation"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")


More money in bank accounts $times$ Each dollar spent less often $=$ Total spending grew slowly.

That is the quantity of money alone does not determine short-run inflation. How often each dollar is spent also matters.

Inflation rises as the economy reopened. 

#defn[*Money* \ 

Money(an IOU) is an asset widely accepted as payment/transactions for goods and services or for the settlement of debts. 

#align(center)[
  #table(
      columns: 2, 
      align: auto,
      stroke: 0.5pt,
      inset: 6pt,
      [Counted as money], [Assets that are not money],
      [Bank notes and coins], [Houses],
      [Chequing deposits], [Bonds],
      [Other highly liquid deposits], [Stocks]
      )
  ]
]

*Barter Economy*: 

- Goods and services are used to excahnge for other gooods and services.

- *Double coincidence* of wants has to hold:

  - Need to find someone who has the good I want but also needs the good I have

- Suppose there are $n$ goods, the probability that I find someone with good I want is $1/(n-1)$. The probability of the good I have is someone's want is $1/(n-1)$

- *A trade can only happen is $(1/(n-1))^2$*

- *Number of relative prices* are in terms of one goods and services

  - For $n$ goods, there are *$frac(n (n-1), 2)$ relative prices *

== Three functions of Money

It requires trust to the government institution to have these three functions.

1. *Medium of exchange*: accepted in exchange for goods and services

  - Money is used and accepted to buy goods and services 

  - In a money economy, the double coincidence of wants is no longer needed 

  - If have $n$ goods, the *probability of an exchange is $1/(n-1)$*
2. *Unit of account*: a common unit for quoting prices

  - All goods and services are priced in unit of money as relative price. 

  - The real value of money is *inversely related* to price level.

  - There are *$n-1$* relative prices

\

3. *Store of value*: transfers purchasing power from today to the future

  - Money is a poor store of value because $1/"Price Level"$

  - Money pays no return, the opportunity cost of holding money is the interest rate forgone ona bond.

The *medium of exchange* and* unit of account* makes money distinct from other assets

#defn[*Dollarisation* \ 

When inflation becomes too high and volatile, residents turn to a stable foreign currency, a process called *dollarisation*
]

#defn[*M0, M1* \ 

*M0/Base money* is the narrowest form of money:

- notes + coins + settlement balances at Bank of Canada.

*M1/Broad Money*:

-  chequing accounts + saving accounts + GICs + mutual funds + coins + notes 

- (settlement balances ARE NOT included)
]

*Money Standards*: 

- In 1870-1930 uses Gold Standards

  - Money could be exchanged by an amount of gold at given price

  - Money is backed by gold, every dollar in circulation is backed by a commodity, that is the gold reserve

- Gold Standards are abandonned by many countries with Fiat Standards

- Fiat Standards
  - Money is not backed by a commodity, but a *promise and trust* that is continuous

Liquidity scale descending order

$ "Bank Notes" < "Chequing Accounts" < "Saving Accounts" < "Houses" $

#align(center)[
  #table(
      columns: 3, 
      align: left,
      stroke: 0.5pt,
      inset: 6pt,
      [M0], [Central Bank Money], [Notes and settlements],
      [M1+], [Transaction Money], [Currency outside banks plus chequable \ deposits at deposit-taking institution],
      [M1++], [Liquid deposits], [M1+ plus non-chequable deposits],
      [M2++], [Broad money and near money], [Currency, all deposits including fixed-term deposits, money-market funds, and selected retail and mutual-fund instruments]
      )
  ]

\
\
Payment technologies:
- Debit cards
- Electronic transfers
- Mobile wallet

New ditigal assets:

- Cryptoassets create separate assets.
- Most do not perform all three functions of money reliably.
- A central bank digital currency would be a direct liability of the
 ank of Canada.

When loan is created
#align(center)[
  #table(
      columns: 2, 
      align: left,
      stroke: 0.5pt,
      inset: 6pt,
      [Assets], [Liabilities],
      [+1000 Loans], [+1000 Deposits]
  )
]

When loan is repaid
#align(center)[
  #table(
      columns: 2, 
      align: left,
      stroke: 0.5pt,
      inset: 6pt,
      [Assets], [Liabilities],
      [-1000 Loans], [-1000 Deposits]
  )
]

Factors that limits bank from lending even without mandatory reserve requirement

- Capital requirements
- Funding and settlement needs
- Liquidity requirements
- Credit risk and profitability
- Creditworthy borrowers
- Demand for loans

*Money demand* $->$ transactions purposes/precautionary reasons

#defn[*Demand for Money* \ 

The quantity of money that households and firms choose to hold at apoint in times

]

#align(center)[
  #table(
      columns: 2, 
      align: left,
      stroke: 0.5pt,
      inset: 6pt,
      [Change], [Demand for money],
      [Income Increases], [Increases],
      [Uncertainty], [Increases],
      [Technology payments], [Decreases],
      [Interest rate Increases], [Decreases]
  )
]

#defn[*Velocity of Money*(M2++) \ 

$ V equiv (P Y) / M $

$P Y$ is nominal GDP, $P$ is price level, $Y$ is goods produced


$M$ is the quantity of money (M2++)

Income velocty excludes transactions in financial assets, used goods, and intermediate goods
]

Relationship betwen the money supply and prices and output is uncertain in short-run

Relationship between $P, M, Y$ in the long run can be generalized as Quantity Theory of Money

#defn[*Quantity Theory of Money* \ 
Assumptions

1. Velocity is constant in the *long-run*

2. Output/GDP at its full employment level

$ M overline(V) = P overline(Y) $

$ P = frac(M overline(V), overline(Y)) $

where $overline(V)$ is the long-run velocity of money and $overline(Y)$ is the long-run value of outputs which are also constant

If $P$ doubles, $M$ doubles
]

In long-run, if the the level of money changes by $x%$, the level of prices will also change by $x%$.

#thm[*Neutrality of Money*

In the long-run, since changes in the *level* of money affects only the level of prices and not the level of outputs. 
]

*Classical dichotomy:*

In the long-run, changes in nominal variable affect nominal variables but leave real variables unchanged(employment, real GDP)

*MIDTERM CUTOFF SLIDE47*

*Superneutrality*: 

In the long-run, changes in the *growth rate *of money affect only the growth rate of prices and not the growth rate of outputs.


$ (Delta M)/M + (Delta V)/V approx (Delta P)/P + (Delta Y)/Y $

$ "money growth" + "velocity growth" approx "GDP deflator inflation" + "real GDP growth" $


Correlation between changes in the level of money and changes in the level of inflation should be 1. 
Correlation between changes in the level of money and changes in the level of output should be 0.


*Interest Rates*

$ "Nominal Rate" - "Inflaiton" approx "Real Cost" $

Example:

A borrower pays $6%$ interests but repays in dollars that buy $3%$ less. 

The exact real cost is $1.06/1.03 - 1 approx 2.9%$

#thm[*Fischer Equation* \

Let 

$pi^e$ be Expected Inflation

$pi$ be the observed equation

$i$ be nominal interest rate

$r$ be expected real value

$ (1+i) = (1+r)(1+pi^e) $
]

*Note*:

When contracts is *signed*: $r_("ex ante") = i-pi^e$

After *inflation* is observed $r_("ex post") = i-pi$

There is a redistribution of wealth happening:


If $pi>pi^e$, then lender loses and borrower wins.

If $pi<pi^e$, then the lender wins and borrower loses

Example:

A bond pays 8% and expecting an inflation to be 2%

Thus $r_("ex ante") = 8%-2% = 6%$

If actual inflation turns out to be 10%

Therefore, $r_("ex post") = 8%-10% = -2%$

\
#defn[*Hyperinflation* \ 
A monthly inflation rate above 50%. Prices double about every seven weeks,
and 50% a month compounds to about 13,000% a year
]

#defn[*Seigniorage* \
Revenue obtained from issuing money. It can exist
even when inflation is zero.

*Seigniorage Revenue*

Government provide liquidity by increasing settlement balances to buy the equivalent amount of government bonds from banks. Banks hold these settlement balances.

#align(center)[
  #table(
      columns: 2, 
      align: auto,
      stroke: 0.5pt,
      inset: 6pt,
      [Assets], [Liabilities],
      [Government bonds \$1000], [New settlement \$1000],
      [Interest of bonds \$50 ], [Equity \$50]

      )
  ]

]

\
Example:

Zimbabwe $->$ prints money $->$ buy goods and services (seigniorage revenue)

*Inflation Tax*: Decrease of real value because of inflation

*Costs of Inflation*:

- Expected inflation/inconvenience costs:
  - Shoe-leather costs: expected inflation raise the nominal rate, the cost of holding money, so people hold smaller balances

  - Menu costs: firms dupdate price lists and point-of-sale systems more often which uses real resources when inflation is high

  - Relative price noise: firms reprice at different times, so relative prices vary unpredictably around each round of changes

- Misallocation of resources
  - When inflation is high or unpredictabl, the price signal gets noisy, so firms and consumers make worse choices about what to produce, what to buy, and where to invest

*Deflation* is sustained fall in the general price level and creates its own set of economic problems

*Debt deflation*:

Falling prices raised real debt burdens and increased defaults.
$ "Higher real debt burden" <-> "Lower spending" <->"Further price declines" $


- Delay: consumers who expect lower prices postpone purchases
- Wage rigidity: workers resist nominal wage cuts, so falling prices raise real wages and firms cut employment
- Room to cut rates: a 2% target leaves more room to lower interest rates before they reach the effective lower bound