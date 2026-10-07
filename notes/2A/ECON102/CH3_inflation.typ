#import "../../../preamble.typ": *
#show: conf

#let Title = "CH 3 - Inflation"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

Supply constraing $->$ supply chain disruptions

Excess demand $->$ savings that consumer were able to spend with government subsidies to people

== 3.1 Consumer Price Index 

\

#defn[*Consumer Price Index* \

The *CPI* measures the *average* change over time in the prices paid by  households for a *representative* basket of goods and services, weighted according to aggregate consumer expenditure patterns

The *CPI* is a *pure* price change

The representative basket are 600-700 goods filtered into 8 categories that are obtained from screening census and survery of consumer expenditure.

- Shelter remain the largest sector
]

Bank of Canada aims 2% CPI inflation annually. Adjustments of tax brackets and wages occured based on CPI change.

Data are collected from scanner data, manual collection, administration data, and web scrapping

*Housing in CPI* in Canada:

Owned accomodation: mortgage interest, ropeerty tax, insurance, depreciation, etc.

Rent directly included
 
*Category's contribution to CPI inflation*: $ "basket weight" times "category inflation" $


== 3.2 Inflation

#defn[*Inflation* \ 

*Inflation* is a sustained increase in the average price level

$pi = "inflation" \
"CPI"_t = "level of the CPI at time" t \
pi_t = "year over year change in the CPI"  \
t = "months" \
"CPI"_(t-12) = "Level of the CPI at time" t-12 
$

$ pi_t = frac("CPI"_t - "CPI"_(t-12), "CPI"_(t-12)) times 100 $
]

\
\
\
\

Example:

#table(
    columns: 3, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [Year], [Price], [Inflation],
    [0], [10000], [],
    [1], [15000], [50%],
    [2], [15000], [0%],
    [...], [...], [0% onwards]
)

Notice that even though inflation becomes 0 after year 2, but the price remains constant after inflation. Thus inflation rate does not always necessarily mean a good thing as the price becomes higher overall. 

#defn[*Deflation, Disinflation* \

*Deflation* is a sustained decrease in the average price level

*Disinflation* is a decline in the inflation rate while it remains positive. The price level contunues to rise but slowly. That is inflation rate is decreasing, or the price is increasing in a decreasing rate

]
\

Example:

#table(
    columns: 4, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [Good], [Price in 2024], [Price in 2025], [Basket quantity],
    [G], [5], [5.2], [2],
    [W], [4], [4.1], [3],
    [C], [4], [4.06], [4] 
)

$"Basket cost of CPI in 2024" = P_G times Q_G + P_W times Q_W + P_C + Q_C = 38$ 

$"Basket cost of CPI in 2025"= P_G times Q_G + P_W times Q_W + P_C + Q_C = 38.94$

$"CPI"_2024 = 100$, as a reference year

$"CPI"_2025 = (38.95/38) times 100 = 102.5$, based on 2024 as a reference year

$pi_2025 = (102.5 - 100)/100 times 100 = (38.94-38)/38 = 2.5%$, inflation rate is 2.5%

\

*Base Year effect*: occurs when an unusual price movement wewelves months earlier affects the current year-over-year inflation rate.

- An unusually low CPI 12 months ago raises the current year-to-year rate

- An unusually high CPI 12 months ago lowers the current year-to-year rate


Relative price increase: component of the basket increasing relative to other prices

General price increase: inflation is a general price increase

Even if the price of one category increase a lot, if its weight is small, then the increase is neglegible(i.e. tobacco, alcohol, cannabis)

\
Challenges to Data measurement

- Substitution bias, the general bias that arises when a fixed-basket index does not capture substitution towards relatively cheaper products

    - Between basket updates, the quantities in the fixed basket remain unchanged even when households shifts therir spending towards relatively cheaper goods.

    -  A fixed-basket index can therefore overstate the rise in the cost of living.

    - Annual basket updates aims to reduce but do not eliminate this bias

    - CPI can be inaccurate as it could be overstated the true cost of living, (i.e. completely substituting one to another.)

- Quality Change, when a product changes or is replaced, the observed price difference may reflect both a price change and a quality change.

    - StatCan adjust for estimated value of the quality difference before measuring thr price change.

    - Overstate and understate true cost of living depending on the good.(i.e. laptop costs 1000 but new laptop is 1080 with improvement worth 100, then we make the new laptop to have 980 in terms of technology worth, which will result in an decline from 1000 to 980).

- Outlet change, consumers may shift from stores to warehouses or other retailer of lower prices

    - Overstate true cost of living(i.e. moving from Walmart to Food Basics)

\

== 3.3 Shrinkflation and Skimpflation

#defn[*Shrinkflation* \ 

*Shrinkflation* occurs when a producer reduces the quantity sold without changing the product's posted price(i.e. lays chip has less chips).

StatCan published data that having accounted shrinkflation(i.e. dollar/gram)
]

#defn[*Skimpflation* \ 

*Skimpflation* occurs whenever business provides less service or lower-quality service without changing the posted price(i.e. customer service given to 3rd party with signififcant worse service quality).

This is hard to quantify compared to shrinkflation.
]

*Note*: no single price index can measure the exact change in every household's cost
of living

\

== 3.4 GDP Price Index

#defn[*GDP Price Index and CPI*
$ "GDP Price Index" = "Nominal GDP" / "Real GDP" dot 100% $

*Consumer price Index* measures change over time in the prices paid by consumers for a representative basket of goods and services.

These two factors movings in the same direction
]
#table(
    columns: 3, 
    align: left,
    stroke: 0.5pt,
    inset: 6pt,
    [], [CPI], [GDP Price Index] , 
    [Coverage], [Basket of goods and services purchased by households], [Includes all goods and services produced within a country],
    [Imports], [Included], [Excluded], 
    [Weighthing], [Fixed basket items year-round], [Dynamic throughout the year],
    [Commodity], [Affected indirectly(tar sand price rises, oil price rise)], [Included directly]
)


*Underlying inflation*: trend inflation

*Core inflation*: strip total inflation of its main volatile/extreme components

Two measures of the core inflation:

1. *CPI-Trim*: ranked component prices and omits the top 20% that increased and top 20% that decreased. That is, focusing on the middle 60%, neglecting most volatile.

2. *CPI-Median*: select the middle, that is the component price changes the least.

*Expected inflation*: is the inflation rate that households, firms, or financial-market participants expect over a future period.

*Purchasing power/real value* of money is the quanitty of goods and services that a dollar can buy, it is also inversely related to the price level.

Example: an apple cost 3 dollars in 2025, costs 6 dollars in 2026, the price increase, and the real value of money falls.

*Deflating*: converting a nominal quantity to a real quantity

$ "Real Value" = "Nominal Value"/"CPI" dot 100% $


Example:

Wage increased from 60K to 62.4K and CPI increased from 156 to 161.

$60000/156 dot 100 = 38462, 62400/161 dot 100 = 38758$, real wage increased by 0.08%, nominal wage increased by 3.1%, workers are better off because it offsets the 0.08% by 3.1%, meaning more purchasing power.

\
\

*Indexing*: adjusts a nominal amount as a price index changes so that its real value is preserved as measured by that index

$ A_t = A_0 ("CPI"_t / "CPI"_0) $

The ratio measures the change in the price level.