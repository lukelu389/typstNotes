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
  #v(4pt)
  #strong[Discovery]
  #v(1pt)
  #body
]

#let proof(body) = block[
  #v(4pt)
  #strong[Proof]
  #v(1pt)
  #body
]

#let important(body) = block[
  #v(4pt)
  #strong[IMPORTANT]
  #v(2pt)
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
#let note(body) = box(fill: luma(98%), stroke: (paint: luma(70%), thickness: 0.7pt), inset: 10pt, radius: 8pt)[#body]


#let simple-table = (lhead, rhead, rows) => [
  #table(
    columns: 2,
    align: (left, right),
    inset: 6pt,
    [*#lhead*], [*#rhead*],
    ..rows.map(r => ([r.at(0)], [r.at(1)])),
  )
]