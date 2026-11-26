#import "../../../preamble.typ": *
#import "@preview/combo:0.1.0"
#show: conf


#let Title = "CH 8 - Monetary Policy"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")



A *deficit* occurs when a government's expenditures exceed its revenues, leading to a shortfall that must be financed through borrowing or other means. 

$ "Gov Revenue" < "Gov Expenditure" $

Conversely, a *surplus* occurs when revenues exceed expenditures, allowing the government to pay down debt or save for future needs.

$ "Gov Revenue" > "Gov Expenditure" $

#defn[*Fiscal Policy* \ 

*Fiscal Policy* is the use of federal government expenditure and revenue to achieve macroeconomic goals, such as economic growth, price stability, and full employment.
]

Fiscal Federalism divides responsibility of fiscal policy.

#align(center)[
  #table(
    columns: 2,
    align: auto,
    stroke: 0.5pt,
    inset: 6pt,
    [Federal Government], [Provincial/Territorial Governments],
    [Responsible for national defense, foreign affairs, and monetary policy], [Responsible for healthcare, education, and transportation infrastructure],
    [Collects income taxes and corporate taxes], [Collects sales taxes and property taxes],
    [Provides transfer payments to provinces and territories], [Receives transfer payments from the federal government],
    [Sets national fiscal policy and budget], [Sets provincial/territorial fiscal policy and budget]
  )
]

*Federal Budget Process*:

Department of Finance: Prepares the budget and tax proposals and manages federal debt

Receiver General: Manages the government's cash flow and debt issuance

Auditor General : Audits government operations and reports to Parliament

Parliamantary Budget Officer(PBO): Provides independent analysis of the budget and fiscal policy

\
Income tax is the largest source of revenue for the federal government for about 50% followed by coporate tax and then GST.

Most expenses are direct program expenses followed by transfer to persons(researches, benefits) and then transfer to other government(provincial) with equalization payments.

#defn[*Equalization* \ 

*Equalization* is a federal transfer program that aims to reduce fiscal disparities among provinces and territories.
]

Federal government transfers

- Health transfers
- Social transfers
- Equalization payments
- Territorial formula financing            

\
Primary deficit = $"Gov Revenue" < "Gov Expenditure excluding interest rate charges" $

Primary surplus = $"Gov Revenue" > "Gov Expenditure excluding interest rate charges" $

Overall budget balance:

  - Deficit = $"Gov Revenue" < "Gov Expenditure including interest rate charges" $

  - Surplus = $"Gov Revenue" > "Gov Expenditure including interest rate charges" $

A deficit adds to the debt, while a surplus reduces the debt.

#defn[*Debt Dynamics* \

Let $B_t$ be debt at the end of year $t$ and $i_t$ the average nominal interest rate on the debt at the start of the year

Let $D_t$ equal non-interest expenses minus revenue, so $D_t >0$ indicates a primary deficit.

The nominal debt dynamics equation is given by:

$ B_t = (1+i_t) B_(t-1)+D_t \ 
B_t - B_(t-1) = i_t B_(t-1)+D_t \
"Change in Debt" = "Interest Payments" + "Primary Deficit"
 $
]

#defn[*Debt to GDP equation* \ 

Let $Y_t$ be the nominal GDP at the end of year $t$ and $g_t$ the nominal GDP growth rate.

Let $b_t = B_t/Y_t$ be the debt-to-GDP ratio at the end of year $t$.

$ B_t/Y_t = (1+i_t)B_(t-1)/Y_(t)+D_t/Y_t \

b_t = (1+i_t)/(1+g_t) b_(t-1)+D_t/Y_t \

$
]

Assume $D_t = 0$

If $i_t= g_t = (1+i_t)/(1+g_t) = 1$. The debt-to-GDP ratio remains constant.

If $i_t < g_t = (1+i_t)/(1+g_t) < 1$. The debt-to-GDP ratio decreases, the series converge.

If $i_t > g_t = (1+i_t)/(1+g_t) > 1$. The debt-to-GDP ratio increases, the series diverge, country goes insolvent. Needs to borrow from IMF.

Canadian Net Debt is misleading due to removal of pension assets from the debt calculation. The gross debt is more accurate.

*Automatic stabilizer*: a tax or transfer that responds automatically to changes in income or employment and reduces changes in household spending.

In a downturn, households pay less in taxes as earning fall and more workers qualitfy for benefits as jobs are lost.

Lower tax bills and higher benefit payments limit the drop in disposable
income, so households cut spending by less.

In an expansion, households pays more in taxes as earning rise, less people receive benefits, and limits the upward bound of prices.

#defn[*Discretionary Fiscal Policy*

A deliberate decision by the government ot change its purchases, transfers or taxes to influence economy activity.

- *Expansionary policy* aims to raise demand by increasing government spending or cutting taxes.

- *Contractionary policy* aims to restrain demand by reducing government spending or raising taxes.
]

The cyclically adjusted budget balance is also called the *full-employment* budget balance. 

A *structural deficit* is a deficit that would remain at potential output under existing tax and spending policies. (Consistently after 2015)

Example:

Given the government spending is 500B. The actual GDP is 2000B and potential GDP is 2500D with tax revenue be 10% of GDP.

Budget deficit for actual GDP is : $500 - 0.1 (2000) = 300$ \
Budget deficit for actual GDP is : $500 - 0.1 (2500) = 250$B which is also structural deficit. \
The cyclical deficit is 50B

The *fiscal multiplier* measures how much real GDP changes for each dollar of a fiscal measure.



$ "MPC"+"MPS" = 1 $

$ "Gov Exp Multiplier" = 1/(1-"MPC") $

$ "Gov Tax Multiplier" = - "MPC"/(1-"MPC") $

*Crowding out*: a fall in private spending that offesets some or all of the increase in government spending.

*Inside lag*
- Time between the shock and implementation.
- The government must recognize the problem, desgin a response and put it in place.

*Outside lag*
- Time between implementation and the effect on the economy
- After a road project gets approval, it takes time for contractors to hire workers and buy material
Monetary policy can counter fiscal policy

*Ricardian equivalence* that an increase in government expenditure is saved if economic agents are forward-looking because they know that.

In reality, Ricardian equivalence fails because most people are not forward-looking.
