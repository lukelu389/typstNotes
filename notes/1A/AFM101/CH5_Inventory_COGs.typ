#import "../../../preamble.typ": *

#let Title = "CH 5 — Inventory & Cost of Goods Sold (Integrated Notes)"
#set-title(Title)
#meta(title: Title, author: "Your Name")

#v(8pt)

= Summary
Inventory: perpetual vs periodic systems, costing methods (Specific ID, FIFO, Weighted-Average), sales returns/allowances/discounts, LCNRV, analysis metrics, errors, ethics, and Excel XLOOKUP for multi-file analysis.  :contentReference[oaicite:11]{index=11}

= Learning Objectives
• *Perpetual system* mechanics (two entries per sale) \
• *Costing methods* and comparisons \
• *Standards*: comparability; LCNRV \
• *Metrics*: gross profit %, turnover, days' inventory \
• *Error effects* on FS; ethics \
• *XLOOKUP* for inventory analytics \
• *Periodic system* (appendix)

= Perpetual Inventory System
Bar codes enable real-time updates. Each sale requires *two* entries: \
1) Record revenue and cash/A/R \
2) Record COGS and reduce Inventory \
*Gross profit (margin)* = Sales revenue - COGS.  :contentReference[oaicite:12]{index=12}

= Determining Quantities & Costs

== Shipping terms (ownership & cost)
#table(
  columns: (auto, auto, auto, auto),
  align: (left, left, left, left),
  table.header([*Terms*], [*Title passes*], [*Counted by*], [*Freight paid by*]),
  [FOB Shipping Point], [When goods leave seller], [Purchaser], [Purchaser],
  [FOB Destination], [When goods reach buyer], [Seller], [Seller],
)
Inventory cost includes purchase price + freight-in + insurance + ready-to-sell costs - returns/allowances/discounts.  :contentReference[oaicite:13]{index=13}

= Costing Methods

#table(
  columns: (auto, auto, auto, auto),
  align: (left, left, left, left),
  table.header([*Method*], [*Description*], [*Best for*], [*Key trait*]),
  [Specific ID], [Track actual item cost], [Unique items], [Precise; costly for common goods],
  [FIFO], [Oldest costs to COGS first], [Most businesses], [Ending inventory at recent costs],
  [Weighted-Average], [Avg cost for all units], [Homogeneous items], [Smoothes price swings],
)

*When costs rise:* FIFO → lower COGS, higher ending inventory & GP; Weighted-Average → higher COGS, lower ending inventory & GP.  :contentReference[oaicite:14]{index=14}

= Worked Costing Illustration (FIFO vs WA)
Data (Leon's lamps): Begin 10\@ \$11; buy 50 (assorted); sell 40; end 20. \
*FIFO idea:* the 40 sold draw from earliest layers; ending inventory = most recent layers. \
*Weighted-average idea:* compute average cost per unit over goods available; apply to COGS and ending inventory.  :contentReference[oaicite:15]{index=15}

= Sales Returns, Allowances, Discounts
Right of return → record: \
• *Sales Refund Payable* (liability) for expected returns (sales side) \
• *Estimated Inventory Returns* (asset) and adjust COGS (cost side) \
*Sales discounts* like 2/10, n/30 incentivize prompt payment.  :contentReference[oaicite:16]{index=16}

= Reporting & Standards
*Comparability*: use consistent inventory methods across periods; if changed, justify and restate prior periods. \
*LCNRV*: report inventory at min(cost, NRV). If NRV < cost → *write down* inventory (affects COGS / separate loss; disclose).  :contentReference[oaicite:17]{index=17}

= Example — LCNRV (sketch)
If NRV for ending inventory is \$49,000 and cost is higher: report *Inventory = 49,000* on BS and recognize write-down (often via COGS). Disclose policy and the change's impact for users.  :contentReference[oaicite:18]{index=18}

= Inventory Metrics
• *Gross Profit %* = (Gross Profit / Sales) \* 100 \
• *Inventory Turnover* = COGS ÷ Avg Inventory \
• *Days' Inventory Outstanding* = 365 ÷ Turnover \
Interpretation: higher turnover / lower days → faster movement; watch for stockouts vs obsolescence.  :contentReference[oaicite:19]{index=19}

= Effects of Inventory Errors
If *ending inventory overstated*: COGS understated → GP & NI overstated; carries to next period reversals. Net sales typically unchanged.  :contentReference[oaicite:20]{index=20}

= Ethics
Pressure to “cook the books”: overstating ending inventory or creating fictitious sales. Uphold faithful representation; follow disclosure requirements.  :contentReference[oaicite:21]{index=21}



= Excel XLOOKUP (Analysis)
Pull item costs/attributes from reference files into a main analysis workbook to compute margins, turnover, and LCNRV flags quickly.  :contentReference[oaicite:23]{index=23}

= Examples

*Example A — Perpetual sale entry (numbers illustrative)* \
1) DR Cash 1,000; CR Sales Rev 1,000 \
2) DR COGS 640; CR Inventory 640

*Example B — Returns estimate* \
1) DR Sales Returns & Allowances 3,000; CR Sales Refund Payable 3,000 \
2) DR Estimated Inventory Returns 1,800; CR COGS 1,800

*Example C — FIFO layer pick (outline)* \
Sold 40 units: draw 10 \@ \$11, then 20 \@ \$14, then 10\@ \$16 → COGS layers sum to \$550; Ending inventory from most recent layers (e.g., 5\@ \$16 + 15 \@ \$18 = \$350).  :contentReference[oaicite:24]{index=24}

= One-Page Reference
• Perpetual: *two entries per sale* \
• Ownership by *shipping terms* \
• FIFO vs Weighted-Average effects when costs rise \
• LCNRV and disclosures \
• Watch error propagation across periods
