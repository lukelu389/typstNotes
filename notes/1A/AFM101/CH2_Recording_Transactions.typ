#import "../../../preamble.typ": *

#let Title = "CH 2 — Recording Business Transactions"
#set-title(Title)
#meta(title: Title, author: "Your Name")

#v(8pt)

= Summary
This chapter formalizes the *record → post → balance → report* cycle. You will identify accounts and their effects on the *accounting equation* (A = L + SE), analyze with *T-Accounts*, record *journal entries*, post to ledgers, and prepare a *Trial Balance* (as of Oct 31, 2020) before producing the Income Statement, Statement of Retained Earnings, and Balance Sheet. \
Highlights: 📚 A=L+SE classification • 🧾 Journal entries • 📝 T-Accounts • ✔️ Trial Balance • 📆 Period-end summarization • 📊 Linkage to financial statements • 🔄 Continuous cycle.

= The Accounting Equation (Foundation)
[*Assets*] = [*Liabilities*] + [*Shareholder’s Equity*] \
Every transaction touches at least two accounts so the equation stays balanced.

== Account families (quick map)
#table(
  columns: (auto, auto, auto),
  align: (left, left, left),
  table.header([*Type*], [*Increases with*], [*Typical examples*]),
  [Assets], [Debit], [Cash, Accounts Receivable, Supplies, Inventory, Prepaids, Equipment],
  [Liabilities], [Credit], [Accounts Payable, Salaries Payable, Notes Payable, Unearned Revenue],
  [Shareholders' Equity], [Credit], [Common Shares, Retained Earnings],
)

= Debits, Credits, and Normal Balances
- *Debits* are left-side entries; *Credits* are right-side entries. \
- *Normal balance* means the side that *increases* that account: \
  Assets (Debit), Liabilities (Credit), Equity (Credit); Revenues (Credit), Expenses (Debit), Dividends (Debit).

== Minimal “sign” rules you will actually use
- Increase *Assets / Expenses / Dividends* with *Debit*; decrease with *Credit*. \
- Increase *Liabilities / Equity / Revenues* with *Credit*; decrease with *Debit*. \
- *Total Debits must equal Total Credits* in every journal entry.

= T-Accounts (Visualization for Posting)
A T-Account is a two-column running balance for a single account. You *post* each journal entry line into the target T-Account (left = debits, right = credits), then read the ending balance.

*Example: T-Account layout (Cash)* \
[ Debit $space$| $space$Credit ] \
[ 10,000 $space$| $quad quad quad$] \
[  $quad$ 500 |   $quad quad quad$     ] \
[   $quad quad quad$  |  $quad$ 300 ] \
Ending balance = 10,200 Debit

= Journal Entries (Formal Record)
Write a date, list debited accounts first (amounts in the Debit column), then credited accounts (amounts in the Credit column), followed by a short explanation.

== Journal entry template (table form)
#table(
  columns: (auto, auto, auto),
  align: (left, left, right),
  table.header([*Date*], [*Account & Explanation*], [*Debit / Credit*]),
  [Oct 1], [Cash], [Debit 50,000],
  [     ], [  Common Shares], [Credit 50,000],
  [     ], [  (Owner investment)], [ ],
)

= From Transactions → Journal → T-Accounts → Trial Balance
Workflow you will repeat: \
1) *Identify* accounts and directions (A/L/SE; increase/decrease). \
2) *Journalize* the transaction. \
3) *Post* each journal line to its T-Account. \
4) *Foot* the T-Accounts (find balances). \
5) *Trial Balance*: list all accounts with ending balances; check Debits = Credits as of the date.

= Worked Example (Illustrative, E2-18 style)
Below is a compact month for a service company. The numbers are simple placeholders to show the complete flow.

== 1) Transaction list (classification first)
#table(
  columns: (auto, auto, auto, auto),
  align: (left, left, left, left),
  table.header([*\#*], [*Transaction*], [*Accounts touched*], [*A=L+SE impact*]),
  [1], [Issue shares for cash 50,000], [Cash ↑, Common Shares ↑], [A ↑ 50,000 = SE ↑ 50,000],
  [2], [Buy supplies on account 3,700], [Supplies ↑, Accounts Payable ↑], [A ↑ 3,700 = L ↑ 3,700],
  [3], [Perform services on account 10,000], [Accounts Receivable ↑, Service Revenue ↑], [A ↑ 10,000 = SE ↑ 10,000],
  [4], [Receive cash on A/R 200], [Cash ↑, Accounts Receivable ↓], [A +200 −200 = 0],
  [5], [Pay on account 1,800], [Accounts Payable ↓, Cash ↓], [L −1,800 = A −1,800],
  [6], [Pay expenses (rent 1,100; salary 1,200; utilities 400)], [Rent Exp ↑, Salary Exp ↑, Utilities Exp ↑, Cash ↓], [SE −2,700 (via expenses) = A −2,700],
  [7], [Declare dividends 2,100; pay cash], [Dividends ↑, Cash ↓], [SE −2,100 = A −2,100],
)

== 2) Journal entries (debits first, credits second)
#table(
  columns: (auto, auto, auto),
  align: (left, left, right),
  table.header([*Date*], [*Account & Explanation*], [*Debit / Credit*]),

  [Oct 1], [Cash], [Dr 50,000],
  [     ], [  Common Shares], [Cr 50,000],
  [     ], [  (Owner investment)], [ ],

  [Oct 2], [Supplies], [Dr 3,700],
  [     ], [  Accounts Payable], [Cr 3,700],
  [     ], [  (Purchased supplies on account)], [ ],

  [Oct 10], [Accounts Receivable], [Dr 10,000],
  [     ], [  Service Revenue], [Cr 10,000],
  [     ], [  (Services on account)], [ ],

  [Oct 15], [Cash], [Dr 200],
  [     ], [  Accounts Receivable], [Cr 200],
  [     ], [  (Collected on account)], [ ],

  [Oct 18], [Accounts Payable], [Dr 1,800],
  [     ], [  Cash], [Cr 1,800],
  [     ], [  (Paid on account)], [ ],

  [Oct 25], [Rent Expense], [Dr 1,100],
  [     ], [Salary Expense], [Dr 1,200],
  [     ], [Utilities Expense], [Dr 400],
  [     ], [  Cash], [Cr 2,700],
  [     ], [  (Paid operating expenses)], [ ],

  [Oct 28], [Dividends], [Dr 2,100],
  [     ], [  Cash], [Cr 2,100],
  [     ], [  (Declared & paid dividends)], [ ],
)

== 3) Post to T-Accounts (ending balances)
For each account, add the debits and credits, then net to a *normal-balance side*. \
*Examples:* \
Cash: +50,000 +200 −1,800 −2,700 −2,100 = *43,600 Debit* \
Accounts Receivable: +10,000 −200 = *9,800 Debit* \
Supplies: +3,700 = *3,700 Debit* \
Accounts Payable: +3,700 −1,800 = *1,900 Credit* \
Common Shares: +50,000 = *50,000 Credit* \
Service Revenue: +10,000 = *10,000 Credit* \
Expenses (Rent 1,100; Salary 1,200; Utilities 400): *2,700 Debit* \
Dividends: *2,100 Debit*

== 4) Trial Balance (as of Oct 31, 2020)
#table(
  columns: (auto, auto, auto),
  align: (left, right, right),
  table.header([*Account Title*], [*Debit*], [*Credit*]),
  [Cash], [43,600], [],
  [Accounts Receivable], [9,800], [],
  [Supplies], [3,700], [],
  [Accounts Payable], [], [1,900],
  [Common Shares], [], [50,000],
  [Dividends], [2,100], [],
  [Service Revenue], [], [10,000],
  [Rent Expense], [1,100], [],
  [Salary Expense], [1,200], [],
  [Utilities Expense], [400], [],
  [*Totals*], [61,900], [61,900],
)

= From Trial Balance to Financial Statements (Preview)
- *Income Statement* (period): Revenues − Expenses = *Net Income*. \
  Here: 10,000 − 2,700 = *7,300*. \
- *Statement of Retained Earnings*: Beg RE + NI − Dividends = End RE. \
  If Beg RE = 0 (first month): 0 + 7,300 − 2,100 = *5,200*. \
- *Balance Sheet* (as at date): A = L + SE. \
  Equity = Common Shares + End RE = 50,000 + 5,200 = *55,200*.

= Quick Checks (Self-Test)
- If you *perform services on account*, which accounts move and how? \
  *A/R ↑ (Debit), Service Revenue ↑ (Credit).* \
- Paying *on account*? \
  *Accounts Payable ↓ (Debit), Cash ↓ (Credit).* \
- Trial Balance doesn’t balance—what do you check first? \
  *Journal line totals, posting direction (Dr vs Cr), arithmetic in T-Accounts.*

= One-Page Reference (At a Glance)
#table(
  columns: (auto, auto),
  align: (left, left),
  table.header([*Step*], [*What to produce*]),
  [1. Classify], [Accounts & A=L+SE effects],
  [2. Journalize], [Debits first; credits second; explanation],
  [3. Post], [Update each account’s T-Account],
  [4. Foot], [Compute each account’s ending balance],
  [5. Trial Balance], [List balances; Debits = Credits as of date],
) \
Use this flow for each month. Debits and Credits must match at the journal level *and* at the trial balance level.

#v(4pt)

