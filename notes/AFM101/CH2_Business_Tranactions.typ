#import "../../preamble.typ": *

#let Title = "CH 2 — Recording Business Transactions"
#set-title(Title)
#meta(title: Title, author: "Luke Lu", date: datetime.today().display())

== Learning goals
- Recognize a business transaction and the account types it affects
- Determine a transaction’s impact on the accounting equation
- Analyze transactions with T-accounts
- Record in the journal and post to the ledger
- Prepare and use a trial balance

== The Accounting Equation
$A = L + S E$  (Owns = Owes)

*Assets:* Cash, Accounts Receivable, Inventory, (Prepaid expenses) \
*Liabilities:* Accounts Payable, Loans/Notes Payable, (Accrued Liabilities) \
*Shareholders’ Equity:* Common shares, Retained earnings, Dividends, Revenues, Expenses

=== Mini example
#align(center)[
  #table(
  columns: 5,
  align: (center, center, center, center, center),
  inset: 6pt,
  [*Txn*], [*Assets*], [*Liabilities*], [*Equity*], [*Check*],
  [1], [Cash +50,000], [—], [Common shares +50,000], [$A = 50,000, \ S E = 50,000$],
  [2], [Cash −40,000; Land +40,000], [—], [—], [$A = 50,000, \ S E = 50,000$],
  [3], [Office supplies +3,700], [A/P +3,700], [—], [$A = 53,700, L = 3,700, \ S E = 50,000$],
  )
]
  


== Chart of Accounts
#align(center)[
  #table(
  columns: 3,
  align: (center, center, center),
  inset: 6pt,
  [*Assets*], [*Liabilities*], [*Shareholders’ Equity*],
  [Cash], [Accounts Payable], [Common shares],
  [Office supplies], [Notes Payable], [Dividends],
  [Land], [—], [Retained earnings],
)
]


== Uses of “on account”
1) Performed services *on account* → A/R increases \
2) Collected *on account* → A/R decreases \
3) Purchased *on account* → A/P increases \
4) Paid *on account* → A/P decreases

== T-Accounts (structure)
#align(center)[
  #table(
  columns: 2,
  align: (center, center),
  inset: 6pt,
  [*DEBIT (left)*], [*CREDIT (right)*],
  )
]


- DEBIT total = CREDIT total
- Cash normally carries a *debit* balance
- Accounts payable normally carries a *credit* balance

=== Normal balances (quick reference)
#align(center)[
  #table(
  columns: 4,
  align: (center, center, center, center),
  inset: 6pt,
  [*Type*], [*Increase with*], [*Decrease with*], [*Normal*],
  [Assets], [Debit], [Credit], [Debit],
  [Liabilities], [Credit], [Debit], [Credit],
  [Common shares], [Credit], [Debit], [Credit],
  [Retained earnings], [Credit], [Debit], [Credit],
  [Dividends], [Debit], [Credit], [Debit],
  [Revenue], [Credit], [Debit], [Credit],
  [Expenses], [Debit], [Credit], [Debit],
  )
]


== Journal Entry (example)

#align(center)[
  #table(
  columns: (auto, 1fr, auto, auto, 1fr),
  align: (center, center, center, center, center),
  inset: 6pt,
  [*Date*], [*Accounts & explanation*], [*Debit*], [*Credit*], [*Notes*],
  [Apr. 1], [Cash], [50,000], [ ], [Issued common shares],
  [ ], [#h(10pt) Common shares], [ ], [50,000], [ ],
  )
]


== Trial Balance (example layout)
#align(center)[
  *Company Name* \
  *Trial Balance* \
  *April 30, 20XX*
]
#align(center)[
  #table(
  columns: (1fr, auto, auto),
  align: (center, center, center),
  inset: 6pt,
  [*Account title*], [*Debit*], [*Credit*],
  [Cash], [33,300], [ ],
  [Accounts receivable], [200], [ ],
  [Supplies], [3,700], [ ],
  [Land], [18,000], [ ],
  [Accounts payable], [ ], [1,800],
  [Common shares], [ ], [50,000],
  [Dividends], [2,100], [ ],
  [Service revenue], [ ], [10,000],
  [Rent expense], [1,100], [ ],
  [Salary expense], [1,200], [ ],
  [Utilities expense], [400], [ ],
  [*Total*], [*61,800*], [*61,800*],
  )
]

\
\
\

== Practice: analyze by equation
#align(center)[
  #table(
  columns: 4,
  align: (center, center, center, center),
  inset: 6pt,
  [*Date*], [*A*], [*L*], [*SE*],
  [1], [Cash +25,000], [—], [Common shares +25,000],
  [2], [Supplies +800], [A/P +800], [—],
  [4], [Cash −20,000; Land +20,000], [—], [—],
  [6], [Cash +5,000], [—], [Service revenue +5,000],
  [9], [Cash −100], [A/P −100], [—],
  [17], [A/R +1,500], [—], [Service revenue +1,500],
  [23], [Cash +1,000; A/R −1,000], [—], [—],
  [31], [Cash −1,500], [—], [Salary −1,000; Rent −500],
  )
]

== Ledgers (clean cards)

#tcard("Cash", [
  ["Oct  1", "Common shares issued", 25000, 0],
  ["Oct  4", "Land", 0, 20000],
  ["Oct  6", "Service revenue (cash sale)", 5000, 0],
  ["Oct  9", "Paid on account (A/P)", 0, 100],
  ["Oct 17", "Service on account (record A/R)", 1500, 0],
  ["Oct 23", "Collected on A/R", 1000, 0],
  ["Oct 31", "Salaries and rent", 0, 1500],
])

#tcard("Accounts Receivable", [
  ["Oct 17", "Service on account", 1500, 0],
  ["Oct 23", "Collection from customer", 0, 1000],
])

#tcard("Accounts Payable", [
  ["Oct  2", "Office supplies (on account)", 0, 800],
  ["Oct  9", "Payment on account", 100, 0],
])

#tcard("Office Supplies", [
  ["Oct  2", "Purchase on account", 800, 0],
])

#tcard("Land", [
  ["Oct  4", "Purchase for cash", 20000, 0],
])

#tcard("Common Shares", [
  ["Oct  1", "Issue for cash", 0, 25000],
])

#tcard("Service Revenue", [
  ["Oct  6", "Cash sale", 0, 5000],
  ["Oct 17", "On account (to A/R)", 0, 1500],
])

#tcard("Salary Expense", [
  ["Oct 31", "Wages", 1000, 0],
])

#tcard("Rent Expense", [
  ["Oct 31", "Monthly rent", 500, 0],
])
