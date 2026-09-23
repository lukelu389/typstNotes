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

$ "Gross calue added" - "value of output" - "cost of intermediate inputs" $

- Intermediate inputs are goods and services purchased from other firmst and used to produce current output

- Adding the value created at each stage of domestic production measures otoal value added without counting indermediate inputs more than once. 

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