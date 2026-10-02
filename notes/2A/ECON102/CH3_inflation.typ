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
