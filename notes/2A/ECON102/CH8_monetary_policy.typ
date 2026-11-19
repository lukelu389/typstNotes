#import "../../../preamble.typ": *
#import "@preview/combo:0.1.0"
#show: conf


#let Title = "CH 8 - Monetary Policy"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

In 1970s $"higher inflaiton" <==> "demand higher wages, thus higher prices"$

*An expectations of inflation cause inflation *


Bank of Canada aims for *$1%-3%$* CPI increase annually(year-to-year) with a *midpoint $2%$*

- A *nominal anchor* gives households and firms a reference point for the future purchasing power

- A credible inflation target helps shape the expectations that guide wage negotiations and pricing decisions of firms

- The Bank adjusts its policy interest rate to influence spending and steer inflation toward its target

*Bank of Canada*

- Established in 1935 as privately owned then become Crown corporation in 1938

- The Bank has *operational independence* to decide how to achieve it, the federal government have no control on the Bank of Canada

- Every 5 years, the federal government and the Bank review and renew their agreement on the montary policy framework


#align(center)[
  #table(
    columns: 2,
    align: auto,
    stroke: 0.5pt,
    inset: 6pt,
    [Board of Directors], [Government Council],
    [Oversees administration, finances, risk management, and staffing], [Includes the Governor, Senior Deputy Governor, and Deputy Governor], [ncludes the Governor, Senior Deputy Governor, independent directors and
the Deputy Minister of Finance], [*Sets the policy interest rate* by consensus], [The independent directors bring
perspectives from different regions of Canada and a range of industries outside banking], [The Council announces its decisions on *8 fixed announcement dates* (FAD) each year], [The Board does not make monetary policy], [The Governor and Senior Deputy Governor serve 7-year terms]
  )
]

#defn[*Bank's 5 Responsibility* \

1. *Monetary policy*: Sets and implements policy to achieve 2% inflation

2. *Financial system*: Monitors financial risks, provides liquidity, and lender of last resort
3. *Currency*: Designs, issues and distributes Canada's bank notes
4. *Funds management*: Acts as banker and fiscal agent for the federal government
5. *Regulatory oversight*: Oversees payment service providers and critical payment and financial-market infrastructures
]

#defn[*Operational Independence* \

*Operational independence* gives the Bank the authority to act, but effective monetary policy also depends on public trust.

- *Credibility* means that households and firms believe the Bank will return inflation to 2%, even after economic shocks.

- When people expect inflation to remain near 2%, firms and workers make pricing and wage decisions with that expectation in mind, thus achieving an inflation of 2% at the end.

- The Bank earns credibility by keeping inflation close to its target over time and clearly explaining its policy decisions.
]
Operational independence protects the Bank from political pressure to make them maintain credibility by perseving constant inflaiton rate.

Independence requires
1. Operational independence
2. Accountability 

3. Transparency

*Bank's Communication Channels*

- *Interest rate announcements and press conferences* Eight scheduled decisions each year, with explanations of the decisions and economic outlook.
- *Monetary Policy Report (MPR)* Published four times a year, providing forecasts for economic growth, inflation and associated risks.
- *Financial Stability Report (FSR)* An annual assessment of risks to Canada's financial system.
- *Other communications* Speeches, interviews, parliamentary testimony and summaries of Governing Council deliberations provide further explanations of the Bank's decisions and policies.

Bank of Canada set the goal of 2%, they gradually achieved this goal by 1995 December.

*Marginal product of labour*: It is the additional output that you get by hiring one extra worker.

Firms keeps hiring until the cost of hiring an additional worker is $<=$ than the benefit

#info[*Non-Zero Interest rate* \

1. *Downward Nominal Wage Rigidity*:
  - $W =$ nominal wages (rarely go down), $w=$ real wages, $P=$ price level
  - $w = W/P$, when there is a negative shock, given $W$ is constant, and we impose $P$ to be constant(0% inflation), $w$ never change. No rehiring.
2. *The Zero Lower Bound*
  - $i$ = nominal interest rate, $pi$ = inflation rate
  - $r = i-pi$ is real rate $==>$ no return for bonds, everyone holds cash instead
  - $pi > 0$ so that $r<0$ and people start to borrow to make economy resimulated from recession
3. *CPI Measurement Bias*(Not very solid reason)
  - Masurement of CPI inflation overstates cost-of-living
]

*The inflation rate is lower than 4% due to extreme high cost of inflation* 

Core inflation helps the Bank look beyond temporary shocks

#defn[*Overnight Rate* \ 

The *overnight market rate* is the interest rate on these one-day loans, set
by borrowers and lenders trading with one another

The *actual overnight rate* is determined by the demand and supply of settlement balances

It is forward-looking: it announces a target and steers the market rate towards it
]

Monetary policy opeates long and variable lags.

Canadian Banks operate on a *Floor system*

*Lynx* is Canada's wholsesale settlement balance payment system (17banks act as agents)

- At 6pm, Lynx closes and banks calculate their deficit/surplus, at 7pm, they need to make their deficit/surplus to 0. 

- The banks with surplus lend banks with deficit and charges overnight rate. Or deposit to Bank of Canada with interest rate of "deposit rate"

- The banks with deficit can borrow from Bank of Canada and pays "bank rate"$0.25%$ above the overnight rate

Target overnight rate = $x$

"Deposit rate" = $x-0.05$

"Bank rate" = $x+0.25$

#align(center)[#image("../../../pictures/yr2/econ2ch8_1.png")]

To know if the actual overnight rate is close to the target overnight rate, the Ban of Canada mointors *CORRA*(Canadian Overnight Repo Rate average)

#defn[*Repo Rate*\

- A *repo* is a sale of securities with an agreement to repurchase them, functioning like a secured loan.

$ "Buying" - "Selling" = "Repo Rate" $

- *CORRA* measures overnight repo funding costs using Government of Canada securities as collateral (average)
]

- *Overnight repo operations*: The Bank temporarily purchases Government of Canada securities and promise to sell back at lower prices, injecting liquidity to reduce upward pressure on overnight rates
- *Overnight reverse repo operations*: The Bank temporarily sells securities at higher prices, withdrawing liquidity to reduce downward pressure on overnight rates.

#defn[*Effective Lower Bound* \ 

The *effective lower bound* is around 0.25% which occurred during COVID era.

These *unconventional monetary policy tools* influence financial conditions without requiring further cuts in the overnight rate.
]

*Unconventional monetary policy tools*

- *Forward guidance*
  - Commitment/promise to keep rates low to help the economy to recover

  - State-dependent keeps rates low until the economy recover or until employment falls back to 6%

  - Time-dependent keeps rates low for a fixed period

  - It fails if the central bank is not credible

- *Quantitative Easing*
  - It is the purchase of long-term assets/(government bonds) by the central bank in exchange for settlement balances. The balance sheet for central bank increases.

  - The liqduidity: banks buy long-term assets to drive long term interest rate down so that the cost of borrowing falls

  - Actions of central bank drives long-term rates down

*Term structure of interest*

1. Upward sloping(yield curve is normally upward sloping)

2. Liquidity premium

3. Inflation premium

4. Not a good indicator of recession 

\
\
\
\
*Transmission Changes Spending and Credit*

12-18 months

1. Interest rate channel

  - Interest rate $arrow.t$, real rate $arrow.t$ cost of borrowing $arrow.b$, output $arrow.b$, inventory $arrow.b$, inflation $arrow.b$

2. Exchange rate channel

  - Exchange rate $arrow.t$, real rate $arrow.t$, demand for currency $arrow.t$, currency $arrow.b$, exports $arrow.b$, import $arrow.t$, inflation $arrow.b$

3. Bank lending channel

  - Policy $arrow.t$, credit risk $arrow.t$, lending, spending $arrow.b$, inflation $arrow.b$
Wealth effects: Consumption $arrow.t$, Price of Assets $arrow.t$

Stock,

$ "Price"= frac("Expected future cash flow", (H_i)^n) $

\$1 in stock market wealth, \$ 0.01 is spent 
\$1 in housing wealth, \$ 0.05 is spent

These channels reinforces each other