#import "../../preamble.typ": meta, set-title

#let Title = "CH 1 — Financial Statements"
#set-title(Title)
#meta(title: Title, author: "Luke Lu", date: datetime.today().display())

== The order (ascending)

1) Income Statement (during the year) — a.k.a. Statement of profit and loss

   - Income = revenues and gains
   - Expenses and losses
   - Net income: $ "Revenues" + "Gains" - "Expenses" - "Losses" $

   _Example — mini format_
#align(center)[
  #table(
    columns:1,
    align: center,
    inset: 6pt,
    [*ABC Corporation*], 
    [*Income Statement*],
  )
]
  #align(center)[
     #table(
       columns: 2,
       align: (left, right),
       inset: 6pt, 
       [Net sales],                [XX,XXX],
       [Other revenue],            [+X,XXX],
       [*Total revenues*],         [XX,XXX],

       [Cost of goods sold],       [(XX,XXX)],
       [*Gross margin*],           [XX,XXX],

       [Selling, general, and administrative], [(XX,XXX)],
       [Income from operations],   [XX,XXX],

       [Interest expense],         [(X,XXX)],
       [Income before income taxes],[XX,XXX],
       [Income tax expense],       [(X,XXX)],
       [*Total Income*],            [*(X, XXX)*]
     )
   ]

2) Statement of Retained Earnings (during the year)

   - Positive balance indicates cumulative revenues exceeded expenses
   - Negative suggests a problem
   - Ending retained earnings:
     $ "Beg. RE" + "Net Income" + "OCI" - "Dividends" = "End. RE" $
   - End. RE carries to equity section of the balance sheet

   _Example — mini format_

   #align(center)[
     #table(
       columns: 2,
       align: (left, right),
       inset: 6pt,

       [*ABC Corporation*], [ ],
       [*Statement of Retained Earnings*], [ ],
       [For the Year Ended December 31, 20X2], [ ],
       [ ], [ ],
       [Retained earnings, December 31, 20X1], [XX,XXX],
       [Plus: Net income],                      [+X,XXX],
       [Less: Dividends],                       [(X,XXX)],
       [*Retained earnings, December 21, 20X1*], [*(XX,XXX)*]
     )
   ]

3) Balance Sheet (end of the year)

   - Owner’s equity = shares + retained earnings
   - Assets
     - *Current assets*: expected to convert to cash, be sold, or consumed within one year
       - cash and cash equivalents
       - short-term investments
     - *Non-current assets*: held longer than a year
       - land, building, equipment
       - intangibles
       - long-term investments
   - Basic equation: $ "Asset}" = "Liabilities" + "Shareholders’ Equity" $
   - Owns = Owes

== Properties of each statement

#table(
  columns: (auto, auto, 36%),
  align: (left, left, left),
  inset: 6pt,

  [*Question*], [*Financial Statement*], [*Answer*],

  [How much income did the company earn *during* the year?],
  [Income statement],
  [Revenues + gains − Expenses − losses  
   Net income or net loss],

  [Why did retained earnings change *during* the year?],
  [Statement of retained earnings],
  [Beg. retained earnings + Net income + Other comprehensive income − Dividends = End. retained earnings],

  [What is the company’s financial position *at the end* of the year?],
  [Balance sheet],
  [Assets = Liabilities + Owners’ equity],

  [How much cash was generated and spent *during* the year?],
  [Statement of cash flows],
  [Operating cash flows  
   ± Investing cash flows  
   ± Financing cash flows  
   Change in cash],
)

== Some definitions

#table(
  columns: 4,
  align: (left, left, left, left),
  inset: 6pt,

  [ ], [*Proprietorship*], [*Partnership*], [*Corporation*],

  [Owner(s)],
  [Proprietor — one],
  [Partners — two or more],
  [Shareholders — usually many],

  [Personal liability of owner(s) for business debts],
  [Proprietor is personally liable],
  [Partners are usually personally liable],
  [Shareholders are *not* personally liable],
)
