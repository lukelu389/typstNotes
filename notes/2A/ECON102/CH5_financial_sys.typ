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


