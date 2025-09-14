# Typst Notes

## VS Code
- Install **Typst LSP** (`nvarner.typst-lsp`)
- Live preview enabled via settings; use tasks to export PDF.

## New Note
1. Copy `templates/note.typ` to `notes/YYYY/your-note.typ`.
2. Edit metadata at the top.
3. Preview: `typst watch notes/.../your-note.typ --open`.

## Export PDF (local)
- VS Code: `Cmd/Ctrl + Shift + B` → **Typst: compile current file to pdf/**.
- Output lands in `pdf/.../your-note.pdf` mirroring `notes/...`.

## Export PDF (CI)
- Push `.typ` files to GitHub.
- Action compiles PDFs to `pdf/` and commits them back (or download artifacts).
