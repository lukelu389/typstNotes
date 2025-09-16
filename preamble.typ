#let meta(
  title: "",
  subtitle: none,
  author: "Luke Lu",
  date: datetime.today().display(),
  tags: (),
  abstract: none,
) = [
  #align(center)[
    = #title
    #if subtitle != none [*#subtitle*]

    #author • #date
  ]
  #if abstract != none [#v(8pt) #strong[Abstract] — #abstract]
  #v(12pt)
  #line(length: 100%)
  #v(12pt)
]

#let note-box(body) = box(
  fill: luma(98%),
  stroke: (paint: luma(70%), thickness: 0.7pt),
  inset: 10pt,
  radius: 8pt,
)[#body]

#let discovery(body) = block[
  #v(8pt)
  #strong[Discovery]
  #v(4pt)
  #body
]

#let proof(body) = block[
  #v(8pt)
  #strong[Proof]
  #v(4pt)
  #body
]

#let important(body) = block[
  #v(8pt)
  #strong[IMPORTANT]
  #v(4pt)
  #body
]

// ——— Page, header, footer ———
#let _title = state("")
#let title() = context _title.get()
#let set-title(t) = { _title.update(t) }


#set par(spacing: 0.9em)

#set page(
  margin: (top: 1.2in, right: 1in, bottom: 1.1in, left: 1in),
  header: context [ small[ #emph(title()) ] ],
  footer: context [ small[ Page #counter(page) ] ],
)

// ——— Callout ———
#let callout(body, kind: "info", title: none) = [
  #let bg = if kind == "warn" { luma(92%) } else if kind == "tip" { luma(96%) } else { luma(94%) }
  #let accent = if kind == "warn" { rgb("#f59e0b") } else if kind == "tip" { rgb("#10b981") } else { rgb("#3b82f6") }
  #let ico = if kind == "warn" { "⚠️" } else if kind == "tip" { "💡" } else { "ℹ️" }
  #let label = if title == none { if kind == "warn" { "Warning" } else if kind == "tip" { "Tip" } else { "Info" } } else { title }

  #box(fill: bg, inset: 10pt, radius: 8pt, stroke: (paint: accent, thickness: 0.8pt), width: 100%)[
    #ico  *#label* — #body
  ]
]
#let tip(body)  = callout(body, kind: "tip")
#let warn(body) = callout(body, kind: "warn")
#let info(body) = callout(body, kind: "info")
#show raw: block.with(inset: 6pt, fill: luma(97%), radius: 6pt)

#let simple-table = (lhead, rhead, rows) => [
  #table(
    columns: 2,
    align: (left, right),
    inset: 6pt,
    [*#lhead*], [*#rhead*],
    ..rows.map(r => ([r.at(0)], [r.at(1)])),
  )
]
#let t-account(
  name: none,
  debits: (),
  credits: (),
  show-balance: true,
  width: 12em
) = {
  // Calculate totals with handling for empty arrays
  let credit-total = if credits.len() > 0 { credits.sum() } else { 0 }
  let debit-total = if debits.len() > 0 { debits.sum() } else { 0 }
  let balance = debit-total - credit-total
  let balance-type = if balance > 0 ["Dr. " + str(balance)] else if balance < 0 ["Cr. " + str(-balance)] else ["Balance: 0"]

  // Header
  box(width: width, stroke: (bottom: 1pt + black))[ #text(size: 10pt, weight: "bold")[#name] #v(0.5em) ]

  // T Structure using grid
  grid(
    gutter: 0pt,
    columns: (1fr, 1fr),
    box(width: width / 2.0, stroke: (right: 1pt + black), inset: 6pt)[
      [*Debits*] \
      #for dr in debits [Dr. #dr #v(0.3em)] \
      #if show-balance and balance > 0 [#line(length: 100%) #v(0.3em) #balance-type]
    ],
    box(width: width / 2.0, stroke: (left: 1pt + black), inset: 6pt)[
      [*Credits*] \
      #for cr in credits [Cr. #cr #v(0.3em)] \
      #if show-balance and balance < 0 [#line(length: 100%) #v(0.3em) #balance-type]
    ]
  )

  // Footer balance if needed (for zero balance case)
  if show-balance and balance == 0 {
    v(0.5em)
    balance-type
  }
}