#import "../../../preamble.typ": *
#import "@preview/combo:0.1.0"
#show: conf


#let Title = "CH 5 - Financial Systems"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

#defn[*Financial Market*

- Connects savers(surplus of funds) to borrowers(needs of fund)

- Discover prices, combine information and expectation through trading

- Providing liquidity, allow selling assets before maturity

- *Financial assets* are legal claim on future income/earnings/payments

- Financial intermediates
]

Buyers are investors

Issuer receives investments from buyers

#align(center)[
  #table(
      columns: 2, 
      align: auto,
      stroke: 0.5pt,
      inset: 6pt,
      [Debt Instrument], [Equity instrument],
      [Gov/corporate bond], [Shares/stocks],
      [Commercial paper], [Residual payment(paid after everyone is paid)],
      [Contractual term], [Payment is not capped],
      [Fixed payments], [No maturity],
      [First claim], [Owners],
      [Maturity], [],
      [Creditor]
      )
]

Example:

Face value of the bond is 1000 with 3% coupon rate and pays 15 every six months for 2 years.

In 2025, 

$4 "periods" times 15 \$+ 1000\$ = 1060$

In 2026, a new goverment bonds 2 years now pays 5%

$30/(1+5%) + 30/(1+5%)^2 + 1000/(1+0.05)^2$

The *maturity* of a debt instrument is the time remaining until the issuer must repay the principal

- Short-term, within 1 year(i.e. Treasury bills and commercial paper)

- Medium-term, matures between 1-10 years,(i.e. two-year, five-year, ten-year bonds)

- Long-term, more than ten years(i.e. 20-year bonds)

#defn[*Financial Asset* \ 

- *Move funds*: financial asset transfer funds from savers to households, firms, and goevrnment that want to borrowers

- *Share risk*: debt and equity allow the risks of an investment to be spread among several investors rather than concentrated in one place. It can be exposed to five main risks

  1. Default risk, the issuer may fail to make promised payments

    - All debt/bonds have ratings received from S&P Global or Moody's ranged from AAA(probability of default risk $approx 0.008%$) to D(high default risk). 
  2. Interest-rate risk, a fixed-rate asset loses value when market interest rate rise.

    - If interest rate increase and sell before maturity, loss on the capital

    - Interest rate rapid rise will cause purchased government bond to decrease in return, bank runs could happen to withdraw money

  3. Market liquidity risk, an asset cannot be sold quickly near its fair value

    - The spread of bid and ask rate, the smaller the spread the more liquid

  4. Inflation risk, future payments purchase fewer goods and services than expected

  5. Ecxhange-rate risk, currency movements reduce to foreign asset
    
]

A *financial intermediary* operates between savers and borrowers

- Non-bank intermediaries
  - Pension funds invest contributions to provide retirement

  - Mutual funds and exchange-traded funds

  - Insurance companies invest premiums

- *Deposit-taking institutions*

  - Banks, credit unions, and caisses populaires

  - Deposits serve as money and used to make payments
  - Institutions promise to repay the face value


== Banks

*Banks' Fund destribution*
#align(center)[
  #table(
      columns: 2, 
      align: auto,
      stroke: 0.5pt,
      inset: 6pt,
      [Use of funds], [Sources of funds],
      [Mortgages and business loans(illiquid, long-term)], [Chequing and saving deposits(liquid, shorterm)], [Consumer loans], [Guaranteed investment certificates], [Government securities], [Borrowing from financial markets], [Cash and settlement balances], [Shareholder capital]
      )
]

#defn[*Acounting identity* \ 

$ "Assets" = "Liabilities" + "Capital" $

The equation always balances.
]


The *net-interest margin* is the difference between interest received and interest paid, relative to the bank's average interest earining assets.

Example:

Suppose a bank earns 5M in interest and pays 3M in interest on its funding. It holds 100M in average interest-earning assets

$"Net interest margin" = (5-3)/100 =2%$ The 2M must cover operating costs and expected loans before contributing to profit.


#align(center)[
  #table(
      columns: 3, 
      align: auto,
      stroke: 0.5pt,
      inset: 6pt,
      [], [Retail deposits], [Wholesale funding],
      [Providers], [Households and small businesses], [Institutional investors and markets],
      [Examples], [Chequing, savings, and GIC], [Short-term instruments and bonds],
      [Advantages], [Spread across many customers], [Funding beyond retail customers], 
      [Risk], [Deposits may be withdrawn], [Maturing funding may not be renewed]
      )
]

\
*Liquidity and maturity transformation*

Savers want (liquid, short-term):
- Ready to access to their funds at face value
- Flexibility b/c they may not know when they will need their money

Borrowers want (illiquid, long-term):
- Access to large amount of funding today
- Stable financing that can be repaid gradually over several years

Without an intermediary, savers may have to give up access to their funds, or borrowers may have to rely on short-term financing that must be renewed repeatedly.

*Banks can satisfy both sets of needs, it creates a mismatch on their balance sheets*

Liquidity transformation: a bank issues liquid liabilities, including deposits that can be withdrawn quickly, and uses the funds to hold illiquid assets such as mortgages and business loans.

Maturity transformation: a bank finances longer-term assets with liabilities that mature sooner or can be withdrawn on demands.

Example:

100 customers deposits 1, so there are 100 as total deposits (2% liquid)

10 are withdrawn everyday

90 are lend to 10 with daily loan, and 80 long-term loan

\
\
\

*Asymmetric information* 

A situation in which one party to a transaction knows relevant information that the other party does not know. This creates

- *Moral hazards*, problem *after* a loan/mortgages has been made

- *Adverse selection*, problem *before* a loan/mortgages has been made

  - A lender that cannot distinguish safer applicants from riskier applicants may lend to the wrong borrowers or discourage safer borrowers. B/c both want to profit more from what they currently can offer.


The banks reduce 

- adverse selection by review, credit histories, income, ..., etc 

- moral hazard by monitoring payment behaviour, ..., etc

Beyond screening and monitoring borrowers, banks issue the deposits used for most everyday payments.

Reserve requirement abolished after 1994

*Bank create new deposit money when they make loans*

Canadian Regulators requires bank to hold a certain amount of capital compared to their loan portfolio.

Transactions between banks go through settlement system (Lynx in Canada)

*Mortgages* are repaid gradually and can be difficult to sell, their funding matters for bank stability. When a mortgage covers more than 80% of a home purchase price(that is down payment is $>= 20%$) generally requires insurance(2% of the house). It protects the lender against borrower, not houseowners.

Canadian mortgages have a five-year term with fixed interest rate or variable prime rate.


#align(center)[
  #table(
      columns: 2, 
      align: auto,
      stroke: 0.5pt,
      inset: 6pt,
      [Liquidity], [Solvency], [No liquidity to finance activities $A > L$], [Capital will absorb some losses but not for all $A<L$ ]
      )
]

$"Capital ratio" = "Capital"/"Risk-weighted assets" = "Capital"/"Loans and securities" >= 10.5%$

The Diamond-Dybvig Model

Suppose 

1. Illiquid assets with \$2 ad the end at time 2

2. Bank issues product with liquidity with \$1 deposit into \$1.28 upon withdrawn on time 1 and \$1.81 upon withdrawn on time 2

So most people would choose to be patient to get maximum profit.

Deposit insurance: 

- US: Federal deposit Insurance corporation

- CA: Canadian deposit Insurance corporation. 

Which insurance deposits (chequing, savings, GICs) up to 100000 per depositor per banks.

(Midterm-question) It causes banks to take risks to profit as much as possible as moral hazards.

#align(center)[
  #table(
      columns: 3, 
      align: auto,
      stroke: 0.5pt,
      inset: 6pt,
      [CDIC], [Prudential supervision], [],
      [OSFI], [Deposit insurance and resolution], [],
      [Bank of Canada], [Liquidity and stability], []
      )
]


