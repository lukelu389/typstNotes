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

#defn[*Velocity of Money* \ 

$ V equiv (P Y) / M $

$P Y$ is nominal GDP, $P$ is price level, $Y$ is goods produced


$M$ is the quantity of money

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

*Neutrality of Money*:

In long-run, if the the level of money changes by $x%$, the level of prices will also change by $x%$.

Outputs/GDP and other real variables(employment) will not change

*MIDTERM CUTOFF SLIDE47*