#import "../../../preamble.typ": *
#show: conf

#let Title = "CH 2 - GDP and its Components"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== 2.1 GDP Definition
#defn[*GDP* \

GDP is the *market value* of all *final goods and services* produced within a country during a given period

$ "GDP" = sum_i P_i Q_i $


- It measures a *flow*: production over a month, quarter, or year

- It measures *economic activity*, not the *stock* of national wealth

- It is measured to support comparisons acorss time and across economies. 
]

Market Value: output is recorded using market prices.

Final Output: Intermediate goods are not counted

Domestic production: production counts where it occurs, regardless of ownership

\

#table(
    columns: 2, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [*Included in GDP*], [*Excluded from GDP*],
    [Paid childcare services], [Unpaid childcare and household work],
    [Newly produced market goods and services], [Volunteer services],
    [Government services valued at cost], [The resale value of used goods],
    [Imputed rent for owner-occupied homes], [Many benefits from free digital services]

)

\
*Note*: Unreported market activity is conceptually included in GDP, but it is difficult to observe and may be underestimated

*Housing*

#table(
    columns: 2, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [*Included in GDP*], [*Excluded from GDP*],
    [New home construction and major renovations], [Purchase price of an existing home],
    [Real-estate, legal, and inspection services associated with a sale], [A capital gain, or increase in the owner's housing wealth],
    [Rent and the imputed rental value of owner-occupied homes], []
)

Own house $-->$ Imputed rent $-->$ Net amount $-->$ GDP
*Note*: GDP records current housing production and services, not changes in the value of existing property
\
\

== 2.2 Measurement of GDP

\

Three methods of measuring GDP:

1. *Production method(value-added)*

2. *Income method*

3. *Expenditure method*
\
The Circular Flow Connects the Three Approaches

#align(center)[ #image("../../../pictures/yr2/econ2ch2_1.png", width:10cm)] 

#info[*Production Method*

*Value-added Method*

$ "Gross value added" = "value of output" - "cost of intermediate inputs" $

- Intermediate inputs are goods and services purchased from other firms and used to produce current output

- Adding the value created at each stage of domestic production measures total value added without counting intermediate inputs more than once. 

*From valued added to GDP*: StatCan adds taxes on products and subtracts subsidies on productws when calculating the published GDP total
]
\
\
Examples:

1. Suppose we have a simple economy:

  - Farmer sells wheat to miller for 80

  - Miller sells flour to baker for 140

  - Baker sells bread to consumer for 220

  We have:

  $ "Farmer": 80 - 0 &= 80 \ 
    "Miller": 140 - 80 &= 60 \
    "Baker": 220 - 140 &= 80
  $

  GDP $=80+60+80 = 220$

  It is not a coincidence the GDP is same as the price of the bread.


2. Suppose we have another economy measured in thousands of dollars

  - Forestry company: sells logs to a CAN sawmill for 300 and uses imported fuel woth 50

  - Sawmill: buys logs and imported processing materials worth 80. Sells lumber worth 600 to a CAN funirture producer and exports another 100

  - Furniture producer: buys lumber and imported components worth 150. Sells furniture worth 1100 and adds finishd worth 100 to its inventories.

  We have

  $ 
    "Forestry company": 300 - 50 &= 250 \

    "Sawmill": 600+100-380 &= 320 \

    "Furniture producer": 1200 - 600 - 150 &= 450
  $

  Total GDP $=$ 1020

#info[*Income Method*\

  - *Compensation of Employees*: wages, salaries, and employer's social contributations

  - *Gross operating surplus*: income generated mainly by incorporated buesiness, before deducting deprectiation

  - *Gross mixed income*: income of unincorporated business, combining returns to the owner's labour and capital

  - *Taxes less subsidides on productions and products*: taxes associated with production and sales, net of subsidies

  The formula:
  $ "Net domestic product" = "GDP" - "depreciation" $ 
]
\
*Note*: The biggest component of the Income method is Compensation of Employees, then it is Gross operating surplus


#info[*Expenditure method* \

$C$: Household consumption

$I$: Business fixed, residential, and inventory investment

$G$: Government purchases of goods and services

$X- M = N X$: Exports minus imports or Net exports

Formula:

$ Y = C+I+G+(X - M) = C+I+G+N X $
]
\
\
\
\


#table(
    columns: 2, 
    align: left,
    stroke: 0.5pt,
    inset: 6pt,
    [*Consumption*], [*Investments*],
    [*Goods*(42%)
      - Durables lasts more than 2 years, volatile
      - Semi-durables last less than 2 years
      - Non-durables do not last, non-volatile],
    [*Buesiness fixed investments*
        - Equipments
        - Structures 
        - Intellectual property products],
    [*Services*(58%)], [*Residential investment*
    - New housing construction 
    - Major improvements],
    [], [*Inventory investment*
    The change in firms' stocks of unsold goods(leading indicator)],
    [], [Buying a newly issued share provides financing to a firm, but the share is a financial asset rather than newly produced capital.]
  )

- Production above sales rises inventories and creates positive inventory investment

- Sales above current production reduce inventories and create negative inventory investment

- Inventory accumulation may be planned or may result from unexpectedly weak sales


*Government*

#table(
    columns: 2, 
    align: left,
    stroke: 0.5pt,
    inset: 6pt,
    [Included in $G$], [Excluded in $G$],
    [Public-school teaching services], [Employment Insurance benefits],
    [Medical equipment], [Old Age Security payments],
    [Roads and public infrastructure], [Student grants],
    [Government employee compensation], [Interest on government debt]
  )

*Note*: transfers redistribute purchasing power, do not account for production(GDP)

*Import/Exports*

- Consumption, investment, and government purchases can include imported goods and services.

- Subtracting imports removes the foreign-produced portion already included in $C, I, G$

- Exports include Canadian production purchased by buyers abroad

Example:

1. A CAN retailer imports an appliance for \$500 and sells it to a household for \$650

  $C = 650, M=500, C-M = 150$

  The remaining \$150 represents domestic retail output and equals the retailer's value added in this changes

2. #align(center)[ #image("../../../pictures/yr2/econ2ch2_2.png", width:8cm)] 

  $Y = C + I + G + (X -M)$

  $C = 1200$

  $I = 220+140+(65-80) = 345$

  $G = 300$

  $X - M = 190 - 200 = -10$

  $"GDP" = 1835$, inventory $= 65-80= 15$

\
== 2.4 Real and Nominal GDP
\

#defn[*Real and Nominal GDP*\ 

*Nominal GDP* values production using prices from the current periods

$ sum_i P_i Q_i $

  - Nominal GDP can therefore change because quantities change, price change, or both change

*Real GDP* measures GDP by removing the effects or prices
]

#table(
    columns: 2, 
    align: left,
    stroke: 0.5pt,
    inset: 6pt,
    [Nominal GDP], [Real GDP],
    [Values production using current price], [Adjust for changes in the overall price level],
    [Reflects changes in both quantity and prices], [Measures changes in volumes of production]
  )

Example:

Item A: \
$2024 "costs" 100 ==> 2025 "costs" 150$


Nominal Wage increases by 30%: \
$2024 : 100 ==> 2025 : 130$ \

You get worse off because purchasing power decreased. Before 100 can buy item A, now you can no longer purchase item A with your wage.

This is the *money illusion*, nominal wage increase $!=$ purchasing power

#defn[*GDP Implicit Price Index* \

It measures changes in the prices of domestically produced final goods and services.

$ "GDP price index" = frac("Nominal GDP", "Real GDP") times 100 $

- It is called *implicit* because it is derived from nominal and real GDP
- In contrast, the CPI measures price changes for a representative basket of gooods and services purchased by consumers

- The GDP price index covers domestically produced final output, including exports. The CPI covers consumer purchases, including imported consumer products.
]

Example:

#table(
    columns: 5, 
    align: left,
    stroke: 0.5pt,
    inset: 6pt,
    [], [Base Year], [Current Year], [], [],
    [Good], [Price], [Quantity], [Price], [Quantity],
    [Coffee], [3], [1000], [4], [1200],
    [Book], [20], [100], [22], [110]
  )
  Nominal GDP $= 4 dot 1200 + 22 dot 1100 = 7220$

  Real GDP $= 3 dot 1200 + 20 dot 110 = 5800 $ 

  GDP price index: $7220/5800 dot 100 = 124.48$

*Note*: Nominal GDP growth $approx$ Real GDP growth + GDP-price inflation

\

*Chain-weighted GDP*

GDP current year at current year prices, GDP current year at previous year prices

GDP previous year at current year prices, GDP previous year at previous year prices

GDP $= sqrt("Growth rate between last year prices" dot "Growth rate based on this year prices")$

== 2.3 GDP Growth

#defn[*Growth Over Different Time Horizon* \


$Y_t$ is GDP in the current period, while $Y_(t-k)$ is GDP $k$ periods earlier in pervious years.

$k = 1$ to calculate month-to-month or quarter-quarter growth

$k = 4$ for quarterly data and $k = 12$ for monthly data

$ g_t = (frac(Y_t - Y_(t-k), Y_(t-k))) dot 100 = (frac(Y_t, T_(t-k)) - 1) dot 100 $
]

#defn[*Annualized Growth Rate* \ 

$ A_G = [(frac("GDP"_t, "GDP"_(t-1)))^m - 1] dot 100 $

$m = "months have passed"$

It takes the assumption of the growth rate of the economy is constant

It is more volatile comparied to $Y o Y$ growth rate
]

Example: 

We have a share that is 200 in Jan and 220 in Sept,

The $Y_(T D) = ([(220)/200]^9 - 1) dot 100 approx 135.8 %$

\

== 2.4 GDP per Capita

\
#defn[*GDP per Capita* \

$ "Real GDP per Capita" = frac("Real GDP", "Population") $


Output per worker $=$ how much each worker produces given technology + resources
]

Productivity:

  - Technology, R&D investment
    - 2% in Canadian
    - 4% in US

  - Market Structures
    - Tax rate
    - Barrier to trade

Regressive taxes: GST tax

Progressive taxes: Income tax

\

== 2.5 Growth National Income
\

#defn[*Gross National Income/(Gross Naitonal Product)* \ 

$ "GDP" + "Income from domestic's abroad workers" - "Income from foreign worker" $
]

\
\
\
\
Examples:

1. Ireland: GDP $>$ GNI:
  - 0 Coporate tax attracts many foreign companies putting as headquarters

2. Philippines: GDP $<$ GNI:
  - Many Philippinos are foreign workers and send back their money.

*Hidden Production*

The unreported, informal, and illegal activities should be included in GDP but are hard to record so often not included.

Once unreported markets become legal, it will boosts GDP. Adjustments will be done to inculde previously illegal and assume they were legal.

\

*Note*: 

GDP per capita measures WELL:
  - Standardized production

  - Adjust total output for Population

  - Supports comparison across time

  - Correlates with many material and health outcomes.


It does NOT measure:

  - Distribution

  - Leisure and unpaid work

  - Environmental damage.

  - Health, Security, Freedom


== 2.6 GDP Comparison

\

*Exchange Rate complicates GDP Compariosn*

- Countries report GDP in their own currencies, so international comparisons require converting GDP into a common currency.

- One approach is to convert each country's GDP into U.S. dollars using the market exchange rate.

- However, exchange rates can change sharply even when the amount a country produces changes very little.

- GDP converted at market exchange rates can therefore make an economy appear larger or smaller without a corresponding change in its production.


*Purchasing Power Parity*

Instead of market exchange rate, we use purchasing power parity.
\
\

Example:

Basket of oranges costs 10 CAD or 7USD, then it will be 10:7 for the purchasing power parity