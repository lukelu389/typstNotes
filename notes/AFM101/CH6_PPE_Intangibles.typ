#import "../../preamble.typ": *

#let Title = "CH 6 — Property, Plant, Equipment and Intangibles"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

= Non-current Assets (Balance Sheet):

== 1. Tangible Assets

#image("../../pictures/tangibleAsset.png", width: 10cm)

== 2. Intangible Assets

#image("../../pictures/intangibleAsset.png", width: 10cm)
Amortization is similar to depreciation but for intangible assets.

#tip[ Sum of all the costs incurred to bring the asset to its location and intended use]

=== Land:
1. Purchase Price
2. Comissions
3. Survey and legal gees
4. Back property taxes paid
5. Grading and removing unwanted building

Example: \

A business signs a \$300,000 notes payable to purchase land for a new production facility. It pays \$10,000 in real estate commission, \$8,000 in back property tax,\$5,000 for removal of an old building, a \$1,000 survey fee, and \$260,000 to pave the parking lot. What is the cost of the land?

ANS:

300,000 + 10,000 + 8,000 + 1,000 = 324,000 is the cost of the land\
Note that the parking lot is not included because it is not the land.

=== Buildings(Plant)
1. *Constructed*
- Architectural fees, building permits, and contractors' charges
- Materials, labour, and overhead
- Interest on funds borrowed
2. *Purchased*
- Purchase price
- Broker' s commission
- Taxes paid
- Costs to repair and renovate
\

=== Equipment (FYI)
- Purchase price (after discounts)
- Transportation
- Insurance in transit
- Sales and other taxes
- Purchase commission
- Installation and testing

Example:
#image("../../pictures/lumpSum.png", width: 11cm)

== Capital Expenditure vs Expenses
1. *Capital Expenditure: (Balance Sheet)*
- Increase capacity or extend useful life
- Cost is added to an asset account

2. *Expenses: (Income Statement/Balance Sheet Equity)*
- Do not extend capacity or useful life
- Maintain or restore working order (Maintenance/Update)
- Cost is recorded as an expense

== Leased Asset
Typically, lease agreements for fixed assets usually result in both the “right-to-use asset” and the obligation (liability) for the future lease payments being recorded on the balance sheet

\
\
= Depreciation
\
1. Allocation of property, plant, and equipment (PPE) asset's cost to expense over its life
2. Follows expense recognition principle
3. Causes:
- Physical wear and tear
- Obsolescence
4. Land is NOT depreciated
- Unlimited useful life
5. Depreciation is NOT
- Valuation process
- A fund ot replace assets
\
#tip[*Three Components in Depreciation*\

  *Cost* $->$ Initial purchase cost \
  *Useful life* $->$ Length of usage \
  *Residual Value/Carrying Amount* $->$ Resell Value
]


= Depreciation Methods
\

#align(center)[
  #table(
    columns: 3,
    align: (auto, auto, auto, auto, auto),
    stroke: 0.5pt,
    inset: 6pt,
    [Methods], [Formula], [When to use: Assets],
    [Straight-Line], [Rate: $frac("Cost" - "Residual", "Useful Life")$], [Generate revenue evenly ],
    [Units-of-Production],
    [
      1. D/U: $frac(C-R, U)$
      2. D/U $dot$ Activity$=$ Dep. Exp
    ],
    [Wear out because of wear],

    [Diminishing-Balance (DDB)],
    [
      1. Straight-Line  $dot$ 2= DDB rate
      2.
      $P_1$ = Cost $dot$ DDB\
      $P_2$ = Carrying Value $dot$ DDB
      (Cost - Dep($P_1$))
      $P_(n)$ = Difference ],
    [Generate revenue early in useful life],
  )
]
\
\
\
\
\
\
\
\
\
\
\
Examples for each method: \

*Straight Line*
#image("../../pictures/straightline.png", width: 8cm)
\
*Unit of Production*
#image("../../pictures/unitOfProd.png", width: 8cm)
\
*DDB*
#image("../../pictures/ddb.png", width: 8cm)


== Depreciaiton for Partial Years
\
$ "Annual depreciation" = "Months from date of purchase to end of year"/12 $ \

$ ("Cost"-"Residual Value")/"Useful Unit of Produciton " = "Depreciation per Unit" $

== Changing Useful Life
\
$ "Remaining depreciable carrying amount"/ "(New) Estimated remaining Useful life" = "(New) Annual Useful Life" $
\
Example: \

Canada's Wonderland paid \$60,000 for a concession stand. Depreciation was recorded with the straight-line method over 10 years with no residual value.
Assume that after using the concession stand for 4 years the asset will remain useful for only 3 more years. How will this affect depreciation on the concession stand for year 5?

$"Annual depreciation": 60000/10 = \$6000 "per year"$ \

$"New Depreciation": (60000 - 6000 dot 4)/3 = \$12000 "per year"$

On year 5, the depreciation on that year will increase to \$12000, that is twice the previous depreciation expense each year.

== Derecognition of PPE
\
- Derecognition is an IFRS term for PPE that is no longer useful or has been sold.
- Bring depreciation up to date to:
- - Measure asset’s final carrying amount
- - Record expense up to date of sale
- Remove asset and related accumulated depreciation account from the books
\
#align(center)[#image("../../pictures/diposingEquip.png", width: 12cm)]

- Selling PPE *greater than* carrying amount $==>$ GAIN
- Selling PPE *less than* carrying amount $==>$ LOSS
\
Example:

On Jan. 1, 2021, Big Rock Brewery bought a van for \$45,000.
Big Rock uses straight-line depreciation, they expect the van to have a useful life of 5 years and a residual value of \$5,000. \

On December 31, 2024, the van was sold for \$15,000 cash.
Required:\

1. What was the carrying amount of the van on the date of sale?
2. Record the journal entry for the sale of the van on December 31, 2024.

Annual Depreciation $(45000-5000)/5 = \$8000 "per year"$

Carrying amount = $5000 + 8000 = 13000$
Gain: 2000

== GoodWill
- Only recorded when an entire company is purchased
- Defined as the excess of the purchase price of the company over the market value of its net assets
- Represents earning power of company purchased
- Not amortized



