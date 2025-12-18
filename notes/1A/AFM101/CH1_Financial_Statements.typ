#import "../../../preamble.typ": *

#let Title = "CH 1 — The Financial Statements"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

#v(8pt)

= Why Accounting is the Language of Business

- Financial statements are how businesses *communicate* performance & position to users (managers, investors, creditors, government, individuals, NPOs).
- Flow of information: *Transactions → Records → Reports → Decisions*.
- Two perspectives:
  - *Financial Accounting*: external + internal users; standardized (GAAP).
  - *Managerial Accounting*: internal; budgets, forecasts, decision support.

#tip[When you read a company's filings, always identify *which statement* answers your question: performance (Income Statement), position (Balance Sheet), cash (SCF), or retained profits flow (RE).]

= Organizing a Business: Legal Structures

#table(
  columns: (auto, auto, auto, auto, auto),
  align: (left, left, left, left, left),
  table.header([*Type*], [*Ownership*], [*Liability*], [*Taxation*], [*Notes*]),
  [Proprietorship], [Single owner], [Owner personally liable], [Personal income], [Common for small retail & professional services],
  [Partnership], [2+ co-owners], [Usually personally liable (LLP reduces)], [Pass-through], [Shared control & risk],
  [Corporation], [Shareholders], [Separate legal entity], [Corporate + dividends], [Board governance; easier capital raising],
)

#warn[
“Limited” in LLP/Corp refers to *owner liability*, not business obligation—the business still owes creditors; owners' exposure is constrained by law/structure.
]

= GAAP & Statement Set (Order Matters)

- *Standards*: GAAP via CPA Handbook; *IFRS* (publicly accountable) vs *ASPE* (private).
- Preparation order (conceptually): 
  1. *Income Statement* (IS)
  2. *Statement of Retained Earnings* (RE)
  3. *Balance Sheet* (BS)
  4. *Statement of Cash Flows* (SCF)

#note[The *output* of one statement is the *input* to another: IS → RE → BS → SCF reconciliation of ending cash.]

= Income Statement (Performance over a Period)

*Core idea*: Revenues/Gains - Expenses/Losses = *Net Income (NI)* (or Net Loss).

Example: \
*Mini-format*  
Company Name  
*Income Statement*  
For the Year Ended Dec 31, 20XX

Revenues (sales, service, etc.)  
Expenses (COGS, salaries, utilities, depreciation, …)  
*Net Income*

#tip[
Net income is *not* cash. Accrual: revenue is *earned*; expense is *incurred*—cash can happen before/after.
]

= Statement of Retained Earnings (RE Bridge)

*Tracks retained profits*:  
`End RE = Beg RE + Net Income - Dividends`

- NI *flows from IS*.
- End RE *flows to BS* (equity).
Example \
If Beg RE = 24, NI = 6, Div = 2 → End RE = 28.  
That *28* must appear in BS under Shareholders' Equity.


= Balance Sheet (Position “As at” a Date)

*Equation*: `Assets = Liabilities + Shareholders' Equity`

- *Assets*: resources controlled (current vs non-current).  
- *Liabilities*: obligations (current vs non-current).  
- *Equity*: Common Shares + Retained Earnings.

#table(
  columns: (auto, auto),
  align: (left, left),
  table.header([*Category*], [*Examples*]),
  [Current Assets], [Cash, A/R, Inventory, Prepaids],
  [Non-Current Assets], [Land, Buildings, Equipment, Intangibles, Long-term Investments],
  [Current Liabilities], [A/P, Income taxes payable, Accrued expenses, Current portion of LTD],
  [Non-Current Liabilities], [Bonds payable, Long-term notes],
  [Equity], [Common Shares, Retained Earnings],
)

#info[
“Current” means within a year (or the operating cycle, if longer).  
*Cash on BS* must equal *ending cash* on SCF.
]

= Statement of Cash Flows (SCF)

*Explains change in cash* over the period; reconciles to *ending BS cash*.

- *Operating*: cash from customers; cash paid to suppliers, employees, etc.  
- *Investing*: buy/sell long-term assets & investments.  
- *Financing*: issue shares/borrow; pay dividends/repay debt.

Example:\

If Begin Cash = 10, Net Cash from O = +3, I = -5, F = +4 → Net ΔCash = +2 → End Cash = 12 (must match BS).


= Relationships Among Statements (Tight Coupling)

1. IS → RE: *NI* carries into RE.  
2. RE → BS: *End RE* reported in equity section.  
3. BS ↔ SCF: *Ending Cash* on SCF = *Cash* on BS.

#tip[
When numbers “don't tie”, check *headings* (“For the Year Ended …” vs “As at …”) and *flows* (NI → RE, End RE → BS, End Cash ↔ BS).
]

= Notes to the Financial Statements

- Disclose *policies* (e.g., inventory method, depreciation), *assumptions*, and *judgments*.
- Must be read with the statements to interpret results properly.

#info[
Policy examples: FIFO vs Weighted Avg (inventory), straight-line vs declining-balance (depreciation). These choices change *timing* of expenses and therefore NI & equity.
]

= Underlying Concepts & Assumptions

#table(
  columns: (auto, auto),
  align: (left, left),
  table.header([*Concept/Assumption*], [*Explanation*]),
  [Going Concern], [Entity expected to continue normal operations],
  [Separate Entity], [Business distinct from owners; keep records separately],
  [Historical Cost], [Record assets at purchase price (not current market)],
  [Stable Monetary Unit], [Assumes currency purchasing power is stable in the short run],
)

Example: \
Laptop bought for \$399 (market \$799). *Historical cost* → record \$399.  
If company is liquidating, *Going Concern* may not hold → valuation & presentation change (e.g., liquidation basis).


= Ethics & Decision Framework

- Good decisions are *economically sound*, *legal*, *ethical*.
- Ask: honest? fair? compassionate? community impact? greatest good? Golden Rule?
- *CPA Ontario* Code provides formal guidance for professional conduct.

#warn[
Technology amplifies mistakes: a flawed spreadsheet or missing data in AI/RPA can propagate incorrect balances.
]

= Quick Worked Examples (GCD-Style Steps)

== Example A — Build the Four Statements

*Given (period):*  
Sales 100, Expenses 70, Dividends 10, Beg RE 40, Share Issues 0, Begin Cash 12, Net cash O=+5, I=-3, F=-2.

*1) IS*: NI = 100 - 70 = *30*  
*2) RE*: End RE = 40 + 30 - 10 = *60*  
*3) BS* (partial): Equity includes *RE 60* (plus any common shares)  
*4) SCF*: Net ΔCash = 5 - 3 - 2 = *0* → End Cash = 12 (must match BS)

#tip[Always compute *NI first*, then *RE*, then BS. Use SCF to justify the BS *cash* figure.]

== Example B — Classify Accounts (Fast Drill)

#table(
  columns: (auto, auto),
  align: (left, left),
  table.header([*Item*], [*Class*]),
  [Accounts Receivable], [Asset (Current)],
  [Bonds Payable], [Liability (Non-Current)],
  [Prepaid Insurance], [Asset (Current)],
  [Dividends Declared], [Equity distribution (reduces RE)],
  [Common Shares], [Equity],
)

= Mini Practice (Self-Check)

- *Linkage*: If NI increases by 8 and dividends are 3, by how much does *End RE* change?  
  _Answer_: +5  
- *SCF Tie*: Begin Cash 15; O=+4, I=-6, F=+5. What is End Cash, and where must you see it?  
  _Answer_: 18; *BS Cash* must equal *SCF ending cash*.  
- *Classification*: Cash equivalents mature in ≤ 3 months—BS or SCF category?  
  _Answer_: *BS (Cash & cash equivalents)*; SCF still reconciles the total cash & equivalents.

= One-Page Checklist (At a Glance)

#table(
  columns: (auto, auto),
  align: (left, left),
  table.header([*Question*], [*Answer*]),
  [Which statement shows profitability?], [Income Statement],
  [Which statement carries NI forward?], [Statement of Retained Earnings],
  [Which statement proves the accounting equation at a point in time?], [Balance Sheet],
  [Which reconciles beginning to ending cash?], [Statement of Cash Flows],
  [Where do policy choices live?], [Notes to the Financial Statements],
)
