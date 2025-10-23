#import "../../preamble.typ": *

#let Title = "CH 3 — Accrual Accounting & the Financial Statements"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")


#v(8pt)

= Summary
Chapter 3 formalizes *accrual accounting* (vs cash-basis), applies *revenue* and *expense (matching)* principles, records *adjusting* and *closing* entries, prepares statements in order, and previews liquidity/solvency analysis and trend visualization. \

Learning objectives: explain accrual vs cash; apply recognition principles; record adjusting entries; prepare statements; record closing entries; assess debt-paying ability; recognize patterns with simple charts.

= 1. Accrual vs Cash-Basis Accounting

#table(
  columns: (auto, auto, auto),
  align: (left, left, left),
  table.header([*Aspect*], [*Accrual Accounting*], [*Cash-Basis Accounting*]),
  [Recognition], [When earned/incurred (event-based)], [When cash is received/paid (cash-based)],
  [FS quality], [Complete — includes non-cash assets/liabilities], [Incomplete — ignores non-cash events],
  [Required by], [IFRS / ASPE], [Not generally accepted],
)

*Definition:* accrual records revenue when *earned* and expenses when *incurred*, regardless of cash. Cash-basis records only cash receipts/payments.

Examples: \
• Sale on account: accrual → record *Revenue* & *A/R* now; cash-basis → record later when cash arrives. \
• Inventory on account: accrual → record *Inventory* & *A/P* now; cash-basis → record later when paid.

= 2. Recognition Principles

== Revenue Recognition (3 conditions)
Record revenue *after* it's earned and for the *amount transferred* to the customer. All must hold: \
1) Goods/services delivered. \
2) Amount can be measured reliably. \
3) Receipt is probable.

Examples: \
• Costco sells a TV for \$500 and the customer takes it home → *Recognize revenue*. \
• Costco orders a TV for pickup in 4 days (no delivery yet) → *Do not recognize revenue*.

== Matching / Expense Recognition
Record expenses in the *same period* as the revenues they help generate. Conditions: \
1) A decrease in future economic benefit (asset down or liability up). \
2) Amount can be measured reliably.

Examples: \
• COGS recognized *when related sale occurs*. \
• No COGS when item hasn't been sold yet.

= 3. Adjusting Journal Entries (end-of-period)

*Purpose:* measure period income and update the balance sheet. Every adjusting entry affects at least one *Revenue/Expense* and one *Asset/Liability*.

#table(
  columns: (auto, auto, auto),
  align: (left, left, left),
  table.header([*Type*], [*Description*], [*Mini example*]),
  [Deferrals], [Cash first, recognition later], [Prepaid insurance → expense as used; Unearned revenue → revenue when earned],
  [Accruals], [Recognition first, cash later], [Accrued salaries; interest revenue receivable],
  [Depreciation], [Allocate tangible asset cost over life], [Depreciation expense; Accumulated Depreciation (contra-asset)],
)

Examples: \
• Prepaid expense used: DR Expense, CR Prepaid (asset). \
• Unearned revenue earned: DR Unearned (liability), CR Revenue. \
• Accrued expense: DR Expense, CR Payable. \
• Accrued revenue: DR Receivable, CR Revenue. \
• Depreciation: DR Depreciation Expense, CR Accumulated Depreciation.

= 4. Preparing Financial Statements (order matters)

#table(
  columns: (auto, auto),
  align: (left, left),
  table.header([*Statement*], [*Purpose*]),
  [Income Statement], [Revenues and expenses → *Net income*],
  [Statement of Retained Earnings], [Beg RE + NI − Dividends → End RE],
  [Balance Sheet], [Assets, liabilities, and shareholders' equity],
)

*Why this order:* IS provides *NI* for RE; RE provides *End RE* for BS. (SCF is addressed later.)

Formats: \
• Balance Sheet: *Report format* (A over L+E) or *Account format* (A left, L+E right). \
• Income Statement: *Single-step* (all rev, all exp) or *Multi-step* (e.g., *Gross profit*, *Income from ops*).

= 5. Closing Journal Entries

*Goal:* reset *temporary* accounts (revenues, expenses, dividends) to zero for the next period. *Permanent* accounts (assets, liabilities, equity) carry forward.

Examples: \
• Close revenues: DR Revenues, CR Income Summary (or RE). \
• Close expenses: DR Income Summary (or RE), CR Expenses. \
• Close dividends: DR Retained Earnings, CR Dividends. \
Result: post-closing trial balance includes only *permanent* accounts.

= 6. Debt-Paying Ability (preview)

#table(
  columns: (auto, auto, auto),
  align: (left, left, left),
  table.header([*Ratio*], [*Purpose*], [*Rule of thumb*]),
  [Net Working Capital], [Liquidity buffer (CA − CL)], [Positive is safer],
  [Current Ratio], [Ability to pay current liabilities], [Around 1.50 is strong],
  [Debt Ratio], [Overall leverage], [Lower is safer],
)

Transaction effects: higher revenue / lower costs improve liquidity and NI; issuing shares raises cash & equity; borrowing less reduces liabilities.

= 7. Patterns & Trends (visual thinking)

Bar charts and line charts help compare companies and detect trends over time. \
Example narrative: Fulton Hotels' *current ratio* stands out as the highest among peers; its ratio trends upward over five years with a slight dip in 20X4.

= Worked Examples (GCD-style)

== Example A — Cash vs Accrual Net Income (Exercise 3-13 style)
Data: revenues earned = 500,000; cash collected = 410,000; expenses incurred = 420,000; cash paid = 400,000. \
*Accrual NI:* 500,000 − 420,000 = *80,000*. \
*Cash-basis NI:* 410,000 − 400,000 = *10,000*. \
Interpretation: accrual better reflects performance because it recognizes events when they occur, not just cash timing.

== Example B — Recognition checks (Revenue & Matching)
1) Delivered goods today, payment next month: *Recognize revenue* now; *A/R up*. \
2) Inventory purchased on account, not yet sold: *No COGS* yet; *Inventory up* and *A/P up*. \
3) Sold item; cost known: *Recognize COGS* in the same period as sale.

== Example C — Adjusting entries roundup (Exercise 3-20 flavor)
• Accrued interest expense 9,000: DR Interest Expense 9,000; CR Interest Payable 9,000. \
• Accrued interest revenue 3,000: DR Interest Receivable 3,000; CR Interest Revenue 3,000. \
• Unearned revenue earned (half of 12,000 for one delivered car): DR Unearned Revenue 6,000; CR Sales Revenue 6,000. \
• Salaries accrued (Dec 30–31, 1,000/day, Tue–Fri pay cycle): DR Salaries Expense 2,000; CR Salaries Payable 2,000. \
• Supplies used (on hand 800, unadjusted 3,100): DR Supplies Expense 2,300; CR Supplies 2,300. \
• Depreciation (60,000 cost, 5 years, no residual): DR Depreciation Expense 12,000; CR Accumulated Depreciation 12,000. \
Carrying amount after year 1: 60,000 - 12,000 = *48,000*.

== Example D — Statement order and flow
1) IS → compute *NI*. \
2) RE → Beg RE + NI - Div = End RE. \
3) BS → Equity shows *End RE* (plus share capital). \
Check headings: IS & RE are *for the year ended*; BS is *as at* date.

= Quick Checks (Self-Test)

• Which basis recognizes *revenue on delivery even if unpaid*? → *Accrual*. \
• What *two* accounts must every adjusting entry touch? → one *income statement* (R/E) and one *balance sheet* (A/L). \
• Why is BS prepared last? → it needs *End RE* from RE. \
• What gets closed? → *Revenues, Expenses, Dividends* (temporary). What does *not*? → *Assets, Liabilities, Equity* (permanent).

= One-Page Reference

#table(
  columns: (auto, auto),
  align: (left, left),
  table.header([*Topic*], [*Key idea*]),
  [Accrual vs Cash], [Events vs cash timing; IFRS/ASPE require accrual],
  [Revenue recognition], [Deliver, measure reliably, probable receipt],
  [Matching], [Recognize costs with the related revenues],
  [Adjusting], [Deferrals, accruals, depreciation; R/E with A/L],
  [Order of FS], [IS → RE → BS (SCF later)],
  [Closing], [Close temporary; keep permanent],
  [Ratios], [NWC, Current Ratio, Debt Ratio (preview)],
)
