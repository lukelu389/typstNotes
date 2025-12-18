#import "../../../preamble.typ": *

#let Title = "CH 4 — Cash & Receivables"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")


#v(8pt)

= Summary
Cash, A/R, and Notes Receivable: how to *report*, *control*, *reconcile*, *value*, and *analyze* for liquidity and credit risk. Includes bank reconciliation mechanics, allowance method, aging schedule, notes receivable & interest, and core liquidity ratios.  :contentReference[oaicite:0]{index=0}

= Learning Objectives
• *Report cash* on the balance sheet \
• *Prepare bank reconciliation* and journalize book-side items \
• *Account for A/R* (control + subsidiary ledgers) \
• *Allowance* for uncollectible accounts (aging method) \
• *Notes receivable & interest* (timing, classification, SCF category) \
• *Evaluate liquidity* via current, quick, and collection metrics \
• Use *Excel pivot tables* to analyze receivables aging

= Reporting Cash on the Balance Sheet
*Cash & Cash Equivalents* presented as one total. \
*Cash* is the most liquid asset (bills, payroll, loans, equipment). \
*Cash equivalents* are liquid, interest-bearing instruments with maturity < 3 months (T-bills, commercial paper, money market funds).  :contentReference[oaicite:1]{index=1}

= Controlling Cash & Bank Reconciliation

== Why controls?
Cash is easy to conceal/steal → enforce: bank accounts, *segregation of duties*, authorization for purchases & payments, limited cheque signers, daily deposits.  :contentReference[oaicite:2]{index=2}

== Bank account tools
Signature card, bank statement, deposit slip, cheques; EFT enables electronic payments.  :contentReference[oaicite:3]{index=3}

== Reconciliation logic
Two balances usually differ (timing, missing items, errors). Reconcile the *Bank* vs *Books* balances:

#table(
  columns: (auto, auto),
  align: (left, left),
  table.header([*Bank side*], [*Book side*]),
  [Deposits in transit], [Bank collections (EFT receipts)],
  [Outstanding cheques], [Service charges],
  [Bank errors], [Interest revenue],
  [ ], [NSF cheques],
  [ ], [Cheque-printing cost],
  [ ], [Book errors],
)

*Rule for entries:* All *book* side items require journal entries \
• Add to books → *Debit Cash* \
• Subtract from books → *Credit Cash*  :contentReference[oaicite:4]{index=4}

== Example — Nixon Partners Inc. (structure)
Bank balance 5,931.51; Books 3,294.21. Reconciling items include: deposit in transit 1,591.63 (Bank +), bank error +100 (Bank +), outstanding cheques -1,350.14 (Bank -); EFT rent 904.03 (Books +), bank collection 2,114.00 (Books +), interest 28.01 (Books +), book error +360 (Books +), service charge -14.25 (Books -), NSF -52.00 (Books -), EFT insurance -361.00 (Books -).  \
*After reconciling*, journalize all *book* side items.  :contentReference[oaicite:5]{index=5}

= Accounts Receivable (A/R) & Notes Receivable

*Receivables* are monetary claims—third-most liquid asset. \
A/R: general ledger *control account* + *subsidiary ledger* by customer. \
*Notes receivable*: formal written promise (principal + interest; current or long-term).  :contentReference[oaicite:6]{index=6}

= Allowance Method & Aging

*Why an allowance?* Credit boosts sales but some accounts won't be collected → record *Bad Debt Expense* and *Allowance for Uncollectible Accounts* (contra to A/R) to report *Net realizable value*.  :contentReference[oaicite:7]{index=7}

== Aging-of-Receivables (balance-sheet approach)
Older balances → higher uncollectible %. Adjust the *Allowance* to the aging total.

#table(
  columns: (auto, auto),
  align: (left, left),
  table.header([*Age bucket*], [*Est. % uncollectible*]),
  [Current], [Low],
  [1–30 days], [Moderate],
  [31–60 days], [Higher],
  [> 60 days], [Highest],
)

*Write-off* (DR Allowance, CR A/R) reduces both Allowance and A/R—*no* income effect at write-off. \
*Speed cash* with discounts, interest on overdue, and card acceptance (retailer pays fee).  :contentReference[oaicite:8]{index=8}

= Notes Receivable & Interest
Annual rate; prorate for months/12 or days/365. \
SCF: A/R collections → *Operating*; N/R collections → *Investing* (principal).  :contentReference[oaicite:9]{index=9}

= Liquidity Ratios
#table(
  columns: (auto, auto, auto),
  align: (left, left, left),
  table.header([*Ratio*], [*Formula*], [*Purpose*]),
  [Current], [Current Assets ÷ Current Liabilities], [Short-term pay capacity],
  [Acid-Test (Quick)], [(CA - Inventory) ÷ CL], [Immediate liquidity],
  [Days' Sales in Receivables], [Avg Net Receivables ÷ Avg Daily Sales], [Collection speed],
)

= Excel Pivot Table (Aging)
Summarize invoices by *Days Past Due* and apply bucket % to estimate total uncollectibles efficiently.  :contentReference[oaicite:10]{index=10}

= Examples

*Example A — Bank reconciliation entries (book side)* \
1) EFT receipt 904.03: DR Cash 904.03; CR Rent Revenue 904.03 \
2) Bank collection 2,114.00: DR Cash 2,114.00; CR N/R 2,000.00; CR Interest Rev 114.00 \
3) Interest 28.01: DR Cash 28.01; CR Interest Rev 28.01 \
4) Service charge 14.25: DR Bank Charges Exp 14.25; CR Cash 14.25 \
5) NSF 52.00: DR A/R 52.00; CR Cash 52.00 \
6) EFT insurance 361.00: DR Insurance Exp 361.00; CR Cash 361.00

*Example B — Aging adjustment (sketch)* \
Aging total expected uncollectible = 15,000; Allowance *before* adj. has 2,000 debit balance → adjustment needed = 17,000 (to bring Allowance up to 15,000 credit). Journal: DR Bad Debt Exp 17,000; CR Allowance 17,000.

= One-Page Reference
• Bank vs Books items; *only* books get entries \
• Allowance reports A/R at *net realizable value* \
• N/R interest timing; SCF categories \
• Use *current* and *quick* ratios; track collection speed
